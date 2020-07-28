class Restaurant < ApplicationRecord
  belongs_to                    :user
  has_many                      :menus,                   dependent: :destroy
  has_one                       :comment,                 dependent: :destroy
  has_many                      :menu_images,             dependent: :destroy
  has_one                       :contact_information,     dependent: :destroy
  accepts_nested_attributes_for :menus,                   allow_destroy: true
  accepts_nested_attributes_for :comment,                 allow_destroy: true
  accepts_nested_attributes_for :menu_images,             allow_destroy: true
  accepts_nested_attributes_for :contact_information,     allow_destroy: true
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :menu_tax
end