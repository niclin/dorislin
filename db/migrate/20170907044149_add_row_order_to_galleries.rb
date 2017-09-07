class AddRowOrderToGalleries < ActiveRecord::Migration[5.0]
  def change
    add_column :galleries, :row_order, :integer

    Gallery.all.each do |e|
      e.update( row_order_position: :last )
    end

    add_index :galleries, :row_order
  end
end
