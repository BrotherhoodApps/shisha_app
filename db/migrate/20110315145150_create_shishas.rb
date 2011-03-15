class CreateShishas < ActiveRecord::Migration
  def self.up
    create_table :shishas do |t|
      t.string :name
      t.string :address
      t.decimal :latitude
      t.decimal :longitude
      t.text :description
      t.integer :contact
      t.string :url
      t.text :flavours
      t.text :hours
      t.text :facilities
      t.string :image1
      t.string :image2
      t.string :image3
      t.string :image4
      t.string :isDetailed

      t.timestamps
    end
  end

  def self.down
    drop_table :shishas
  end
end
