class CreateBlockComponents < ActiveRecord::Migration[6.0]
  def change
    create_table :block_components do |t|
      t.integer :block_id
      t.integer :component_id
      t.integer :number_of_components

      t.timestamps
    end
  end
end
