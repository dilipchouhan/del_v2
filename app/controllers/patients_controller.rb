class PatientsController < ApplicationController
  layout "profile"
  after_filter :assign_current_doctor, :only=>[:create]
  
  before_filter :authenticate_doctor!

  active_scaffold :patient do |conf|
    conf.list.columns.add :patient_admit_status
    conf.list.always_show_search = true
    conf.columns.exclude :doctor
    conf.nested.add_link(:admissions, {:label => 'Admit'})
    conf.nested.add_link(:treatments, {:label => 'Treatments'})
    conf.columns[:gender].form_ui = :select
    conf.columns[:gender].options = {:options => [["Male", "Male"],["Female", "Female"]]}
    conf.list.columns = [:first_name,:last_name, :gender, :city, :address, :age, :created_at, :patient_admit_status]
    conf.action_links.add 'export_csv', :label => 'Export to Excel', :page => true
    conf.list.sorting = {:admit_status =>:desc}
    #conf.actions = [:create, :update,:list,:search,:delete, :show, :admissions]
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
    ['doctor_id = ? ', current_doctor.id]
  end

  def export_csv
    # find_page is how the List module gets its data. see Actions::List#do_list.
    records = find_page().items
    return if records.size == 0

    # Note this code is very generic.  We could move this method and the
    # action_link configuration into the ApplicationController and reuse it
    # for all our models.
    data = ""
    cls = records[0].class
    data << cls.csv_header << "\r\n"
    records.each do |inst|
      data << inst.to_csv << "\r\n"
    end
    send_data data, :type => 'text/csv', :filename => cls.name.pluralize + '.csv'
  end

end 



