class CreateResources < ActiveRecord::Migration[5.2]
  def change
    create_table :resources do |t|
      t.string :field0
      t.string :field1

      t.timestamps
    end
  end
end
