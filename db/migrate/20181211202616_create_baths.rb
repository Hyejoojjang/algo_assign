class CreateBaths < ActiveRecord::Migration[5.1]
  def change
    create_table :baths do |t|
      t.string :name
      t.float :lat
      t.float :lon
      t.integer :clean
      t.integer :handicapped
      t.integer :near
      t.integer :supplies
      t.result :float

      t.timestamps
    end
  end
end
