class Item < ApplicationRecord
  belongs_to :user
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :liquor
  belongs_to_active_hash :taste
  belongs_to_active_hash :place
  belongs_to_active_hash :alcohol
end