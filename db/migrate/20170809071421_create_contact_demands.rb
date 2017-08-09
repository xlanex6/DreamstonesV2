class CreateContactDemands < ActiveRecord::Migration[5.1]
  def change
    create_table :contact_demands do |t|
      t.string :email
      t.string :full_name
      t.text :message
      t.string :phone

      t.timestamps
    end
  end
end
