class AddInsertToMaterials < ActiveRecord::Migration[6.1]
  def change
    add_column :materials, :insert, :integer
  end
end
