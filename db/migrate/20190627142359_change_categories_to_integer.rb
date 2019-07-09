class ChangeCategoriesToInteger < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :categories, :integer
  end
end
