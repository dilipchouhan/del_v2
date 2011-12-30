class Admission < ActiveRecord::Base
  belongs_to :patient
  #attr_accessor :my_ward

  def my_ward
    ward
  end

  def my_ward=(input)
    self.ward = input
  end
end
