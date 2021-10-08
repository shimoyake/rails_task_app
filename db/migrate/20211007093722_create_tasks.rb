class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :tittle
      t.date :bigin
      t.date :finish
      t.integer :allday
      t.text :memo

      t.timestamps
    end
  end
end
