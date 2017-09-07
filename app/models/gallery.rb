class Gallery < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :attachments, class_name: "GalleryAttachment", dependent: :destroy, inverse_of: :gallery
  accepts_nested_attributes_for :attachments, allow_destroy: true, reject_if: :all_blank
  include RankedModel
  ranks :row_order
  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  validates_presence_of :title
  validates_uniqueness_of :title

  def normalize_friendly_id(input)
    input.to_s.to_slug.normalize.to_s
  end

  def slug_candidates
    [
      :title,
      [:title, :description]
    ]
  end
end
