class CreateSchedules < ActiveRecord::Migration[7.1]
  def change
    create_table :schedules do |t|
      t.date   :date,     null: false
      t.time   :time,     null: false
      t.string :place,    null: false
      t.text   :content,  null: false
      t.timestamps
    end
  end
end
