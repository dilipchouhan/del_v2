class CreatePatients < ActiveRecord::Migration
  def self.up
    create_table :patients do |t|
      t.references :doctor
      t.string :first_name
      t.string :last_name
      t.boolean :gender
      t.integer :age
      t.string :father_name
      t.string :husband_name
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :address

      t.timestamps
    end
  end

  def self.down
    drop_table :patients
  end
end
