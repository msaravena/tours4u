class Tour < ActiveRecord::Base
  belongs_to :category
  mount_uploader :image, ImageUploader
end
