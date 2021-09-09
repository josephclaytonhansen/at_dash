class CreateMaterials < ActiveRecord::Migration[6.1]
  def change
    create_table :materials do |t|
      t.integer :thin_elastic
      t.integer :thick_elastic
      t.integer :fat_quarters
      t.integer :mailers
      t.integer :stamps
      t.integer :completed_pairs

      t.timestamps
    end
  end
end
