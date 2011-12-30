class CreateWards < ActiveRecord::Migration
  def self.up
    create_table :wards do |t|
      t.references :floor
      t.string :ward
      t.integer :available_bads
      t.string :desc

      t.timestamps
    end
  end

  def self.down
    drop_table :wards
  end
end
