class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :full_name	
      t.string :phone_number
      t.string :email
      t.text :address
      
      t.timestamps
    end
  end
end
