class CreateBlockComponents < ActiveRecord::Migration[6.0]
  def change
    create_table :block_components do |t|
      t.string :block_id
      t.string :component_id
      t.string :number_of_components

      t.timestamps
    end
  end
end
