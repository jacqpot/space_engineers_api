class CreateBlockComponents < ActiveRecord::Migration[6.0]
  def change
    create_table :blocks_components do |t|
      t.index :block_id
      t.index :component_id
      t.index :number_of_components

      t.timestamps
    end
  end
end
