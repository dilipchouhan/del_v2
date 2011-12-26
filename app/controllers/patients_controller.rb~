class PatientsController < ApplicationController
  layout "profile"
  after_filter :assign_current_doctor, :only=>[:create]
  
  before_filter :authenticate_doctor!

  active_scaffold :patient do |conf|
    conf.columns.exclude :doctor
    conf.list.columns = [:first_name,:last_name, :city, :zipcode, :address, :age, :created_at]
  end


  def assign_current_doctor
    current_doct = current_doctor
    @record.doctor_id = current_doctor.id
    @record.save!
    unless doctor_signed_in?
      @doctor = current_doct
      sign_in :doctor, @doctor
    end
  end

  def conditions_for_collection
    ['doctor_id = ?', current_doctor.id]
  end

end 
