class CreateProctors < ActiveRecord::Migration
  def change
    create_table :proctors do |t|
      t.string :pname
      t.string :pors
      t.string :tel
      t.string :email

      t.timestamps
    end
  end
end
