class CreateFloors < ActiveRecord::Migration
  def self.up
    create_table :floors do |t|
      t.references :doctor
      t.string :floor_no
      t.string :desc

      t.timestamps
    end
  end

  def self.down
    drop_table :floors
  end
end
