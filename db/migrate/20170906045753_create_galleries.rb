class CreateGalleries < ActiveRecord::Migration[5.0]
  def change
    create_table :galleries do |t|
      t.string :title
      t.string :description
      t.string :image
      t.boolean :is_hidden, default: false

      t.timestamps
    end
  end
end
