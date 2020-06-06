class Restaurant < ApplicationRecord
  belongs_to             :user
  belongs_to_active_hash :menu_tax
  has_many               :menus, dependent: :destroy
  has_one                :comment, dependent: :destroy
  has_many               :menu_images, dependent: :destroy
end
