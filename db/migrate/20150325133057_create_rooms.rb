class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :number
      t.string :build
     

      t.timestamps
    end
  end
end
