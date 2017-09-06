class GalleryAttachment < ApplicationRecord
  mount_uploader :attachment, GalleryAttachmentUploader
  belongs_to :gallery
end
