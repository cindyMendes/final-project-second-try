class Dog < ApplicationRecord
  belongs_to :list
  belongs_to :user

  validates_presence_of :list
  validates_presence_of :user
  validates :image, presence: true
  validates :breed, presence: true
  validates :color, presence: true
  validates :size,  presence: true
  validates :location, presence: true
  validates :date, presence: true
  # validates_format_of :date, :with => /(0[1-9]|1[012])[- \/.](0[1-9]|[12][0-9]|3[01])[- \/.](19|20)\d\d/i, :message => "must be in the following format: mm/dd/yyyy"
  validates :description, presence: true

  mount_uploader :image, ImageUploader

  validates_processing_of :image
  validate :image_size_validation


  private
  def image_size_validation
    errors[:image] << "should be less than 500KB" if image.size > 0.5.megabytes
  end

end
