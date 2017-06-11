class User < ApplicationRecord
  belongs_to :user_type
  has_many :complaints
  has_many :messages
end
