class ContactInformation < ApplicationRecord
  belongs_to :restaurant, optional: true
  accepts_nested_attributes_for :restaurant
end
