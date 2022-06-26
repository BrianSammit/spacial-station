class Rocket < ApplicationRecord
  validates :category_id, presence: true
  validates :name, presence: true
  validates :fuel, presence: true
  validates :country, presence: true
  validates :activity, presence: true
  validates :img_url, presence: true
  belongs_to :category
end
