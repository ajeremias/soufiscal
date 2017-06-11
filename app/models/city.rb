class City < ApplicationRecord
  belongs_to :state
  has_many :neighborhoods
  has_many :complaint_addresses
end
