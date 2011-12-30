class Patient < ActiveRecord::Base
  belongs_to :doctor
  has_many :admissions, :dependent=>:destroy
  has_many :treatments, :dependent=>:destroy
  #before_save :assign_current_doctor

  #def assign_current_doctor
    #self.doctor_id = current_doctor.id
  #end

  def self.csv_header
    "'ID',first_name,last_name,age,address"
  end

  # Emit our attribute values as a line of CSVs
  def to_csv
    id.to_s << "," << first_name.to_s << "," << last_name.to_s << "," << age.to_s << 
                     "," << address.to_s
  end

  def patient_admit_status
    if admit_status
      "Admit"
    else
      "Released"
    end
  end

end
