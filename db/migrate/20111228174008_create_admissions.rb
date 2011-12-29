class CreateAdmissions < ActiveRecord::Migration
  def self.up
    create_table :admissions do |t|
      t.references :patient
      t.string :ward
      t.string :floor
      t.string :bad_no

      t.timestamps
    end
  end

  def self.down
    drop_table :admissions
  end
end
