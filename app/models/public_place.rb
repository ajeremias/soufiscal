class PublicPlace < ApplicationRecord
  belongs_to :neighborhood
  has_many :complaint_addresses
end
