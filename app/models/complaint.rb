class Complaint < ApplicationRecord
  belongs_to :user
  has_many :messages
  #has_many :complaint_addresses //verificar com Porfírio
end
