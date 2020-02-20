class Item < ApplicationRecord
  belongs_to :user, optional: true
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images
  validates_associated :images
  validates :item, presence: true
  validates :text, presence: true
  validates :liquor_id, presence: true
  validates :place_id, presence: true
  validates :taste_id, presence: true
  validates :alcohol_id, presence: true
  validates :images, presence: true
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :liquor
  belongs_to_active_hash :taste
  belongs_to_active_hash :place
  belongs_to_active_hash :alcohol
end