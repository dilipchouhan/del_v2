class Floor < ActiveRecord::Base
  belongs_to :doctor
  has_many :wards, :dependent=>:destroy
end
