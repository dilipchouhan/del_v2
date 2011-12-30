class FloorsController < ApplicationController

  layout "profile"
  after_filter :assign_current_doctor, :only=>[:create]
  
  before_filter :authenticate_doctor!


  active_scaffold :floor do |conf|
   conf.columns = [:floor_no, :desc, :wards ]
   conf.nested.add_link(:wards, {:label => 'Create Wards'}) 
   conf.list.columns = [:floor_no, :desc]
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
