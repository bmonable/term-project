class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :number
      t.string :build
      t.string :date
      t.string :time
      t.string :proctor1
      t.string :proctor2

      t.timestamps
    end
  end
end
