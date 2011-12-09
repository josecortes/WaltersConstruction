class CreateHours < ActiveRecord::Migration
  def change
    create_table :hours do |t|
      t.integer :user_id
      t.date :work_data
      t.float :worked_hours

      t.timestamps
    end
  end
end
