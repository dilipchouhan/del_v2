class Patient < ActiveRecord::Base
  belongs_to :doctor

  #before_save :assign_current_doctor

  #def assign_current_doctor
    #self.doctor_id = current_doctor.id
  #end



end
