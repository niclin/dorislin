class Gallery < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :attachments, class_name: "GalleryAttachment", dependent: :destroy
  accepts_nested_attributes_for :attachments, allow_destroy: true, reject_if: :all_blank
end
