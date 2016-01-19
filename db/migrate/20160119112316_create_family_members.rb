class CreateFamilyMembers < ActiveRecord::Migration
  def change
    create_table :family_members do |t|
      t.string :first_name, null: false
      t.string :middle_name
      t.string :last_name, null: false
      t.date :dob, null: false
      t.text :email, null: false
      t.text :image
      t.string :occupation
      t.text :description
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
