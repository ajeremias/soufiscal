class State < ApplicationRecord
  has_many :cities
  has_many :complaint_addresses
end
