class User < ApplicationRecord
  has_many :contracts
  has_many :rooms, through: :contracts
end
