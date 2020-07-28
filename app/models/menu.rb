class Menu < ApplicationRecord
  belongs_to :restaurant, optional: true
end
