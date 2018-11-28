class CreateShirts < ActiveRecord::Migration[5.2]
  def change
    create_table :shirts do |t|
      t.string :title
      t.text :description
      t.decimal :price, precision: 6, scale: 2
      t.string :image_url

      t.timestamps
    end
  end
end
