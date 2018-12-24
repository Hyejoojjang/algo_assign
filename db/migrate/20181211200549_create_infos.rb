class CreateInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :infos do |t|
      t.string :name
      t.float :lat
      t.float :lon
      t.integer :clean
      t.boolean :handicapped
      t.integer :near
      t.boolean :supplies
      
      t.timestamps
    end
  end
end
