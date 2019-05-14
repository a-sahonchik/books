class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.decimal :price, precision: 8, scale: 2
      t.string :author
      t.string :origtitle
      t.string :serie
      t.string :publisher
      t.decimal :year
      t.string :binding
      t.decimal :page
      t.decimal :discount, precision: 3, scale: 0
      t.decimal :newprice, precision: 8, scale: 2

      t.timestamps
    end
  end
end
