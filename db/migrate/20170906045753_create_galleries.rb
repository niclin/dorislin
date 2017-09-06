class CreateGalleries < ActiveRecord::Migration[5.0]
  def change
    create_table :galleries do |t|
      t.string :title
      t.string :description
      t.string :image
      t.boolean :is_hidden, default: false
      t.boolean :show_text, default: false
      t.text    :detail_description

      t.timestamps
    end
  end
end
