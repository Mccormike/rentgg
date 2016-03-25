class Listing < ActiveRecord::Base
  belongs_to :user

  has_attached_file :image, default_url: "http://placehold.it/800x500"
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  validates :title, presence: true
  validates :state, presence: true

  validates :hourly_rate, numericality: true
  validates :daily_rate, numericality: true
  validates :weekly_rate, numericality: true
  validates :zip, numericality: true
end
