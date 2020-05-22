class Dog < ApplicationRecord
  belongs_to :list
  belongs_to :user

  mount_uploader :image, ImageUploader
end
