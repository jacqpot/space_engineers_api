class CreateBlocks < ActiveRecord::Migration[6.0]
  def change
    create_table :blocks do |t|
      t.string :name
      t.string :type
      t.string :size

      t.timestamps
    end
  end
end
