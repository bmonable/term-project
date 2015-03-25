class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :rnumber
      t.string :build
      t.string :rdate
      t.string :rtime
      t.string :proc1
      t.string :proc2

      t.timestamps
    end
  end
end
