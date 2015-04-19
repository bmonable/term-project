class CreateProctors < ActiveRecord::Migration
  def change

    create_table :proctors do |t|
      t.string :name
      t.string :position
      t.string :tel
      t.string :email

      t.timestamps
      
    end
  end
end
