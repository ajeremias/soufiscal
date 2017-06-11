class Neighborhood < ApplicationRecord
  belongs_to :city
  has_many :public_places
  has_many :complaint_addresses
end
