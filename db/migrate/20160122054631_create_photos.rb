class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.text :imgURL

      t.timestamps null: false
    end
  end
end
