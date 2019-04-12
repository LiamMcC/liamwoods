class AddImageUrlToOrderitems < ActiveRecord::Migration[5.2]
  def change
    add_column :orderitems, :image_url, :string
  end
end
