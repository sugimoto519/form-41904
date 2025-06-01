class CreateSchedules < ActiveRecord::Migration[7.1]
  def change
    create_table :schedules do |t|
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
      t.string :place,    null: false
      t.text   :content,  null: false
      t.references :admin_user, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
