class PatientsAdmitStatus < ActiveRecord::Migration
  def self.up
    add_column :patients, :admit_status, :boolean
  end

  def self.down
    drop_column :patients, :admit_status
  end
end
