class DeviseCreateDoctors < ActiveRecord::Migration
  def self.up
    create_table(:doctors) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable

      # t.encryptable
      # t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable


      t.timestamps
    end

    add_index :doctors, :email,                :unique => true
    add_index :doctors, :reset_password_token, :unique => true
    # add_index :doctors, :confirmation_token,   :unique => true
    # add_index :doctors, :unlock_token,         :unique => true
    # add_index :doctors, :authentication_token, :unique => true
  end

  def self.down
    drop_table :doctors
  end
end
