class AddForeignKeyToCategories < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :categories, :movies
    add_foreign_key :categories, :lists
  end
end
