class CreateGalleryAttachments < ActiveRecord::Migration[5.0]
  def change
    create_table :gallery_attachments do |t|
      t.integer :gallery_id, :index => true
      t.string :attachment

      t.timestamps
    end
  end
end
