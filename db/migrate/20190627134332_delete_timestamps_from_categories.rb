class DeleteTimestampsFromCategories < ActiveRecord::Migration[5.2]
  def change
    remove_column :categories, :timestamps
  end
end
