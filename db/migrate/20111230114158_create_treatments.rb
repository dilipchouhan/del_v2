class CreateTreatments < ActiveRecord::Migration
  def self.up
    create_table :treatments do |t|
      t.references :patient
      t.text :report
      t.string :desc

      t.timestamps
    end
  end

  def self.down
    drop_table :treatments
  end
end
