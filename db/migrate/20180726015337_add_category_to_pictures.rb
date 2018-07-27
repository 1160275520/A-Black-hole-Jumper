class AddCategoryToPictures < ActiveRecord::Migration[5.2]
  def change
   add_column :pictures, :category, :string
  end
end
