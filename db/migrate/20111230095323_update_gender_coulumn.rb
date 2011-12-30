class UpdateGenderCoulumn < ActiveRecord::Migration
  def self.up
    change_column :patients, :gender, :string
  end

  def self.down
    change_column :patients, :gender, :boolean
  end
end
