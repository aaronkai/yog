class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.date :date
      t.float :distance
      t.integer :hours
      t.integer :minutes
      t.integer :seconds
      t.text :notes
      t.references :user

      t.timestamps
    end
    add_index :runs, :user_id
  end
end
