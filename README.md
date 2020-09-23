# E-állapot on Rails

Egy workshop alkalmávál készítettük ezt az alkalmazást.
Felhasználók, Szobák, valamint az ezeket összekötő Szerződések vannak nyilvántartva a rendszerben.
Igyekeztünk a Rails konveciót minnél inkább követni, hogy gyorsan tudjon haladni a fejlesztés.

A projekt MySql adatbázist használ, Dockeren keresztül. A megfelelő konténer az alábbi paranccsal indítható el.

```bash
docker run --name mysql -e MYSQL_ROOT_PASSWORD=my-secret-pw -d -p 3306:3306 mysql
``` 

Megnéztünk egy tipikus N + 1 query-t:

```ruby
User.all.map { |user| user.rooms.map{|r| r.number}}
```

Valamint ennek a feloldását is:

```ruby
User.includes(:rooms,:contracts).all.map { |user| user.rooms.map{|r| r.number}}
```

A `Benchmark.measure` függvénnyel megmértük, hogy mekkora sebességnövekedést jelent az N + 1 query megszüntetése.
 