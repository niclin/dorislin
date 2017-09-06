class Gallery < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :attachments, class_name: "GalleryAttachment", dependent: :destroy, inverse_of: :gallery
  accepts_nested_attributes_for :attachments, allow_destroy: true, reject_if: :all_blank
end
