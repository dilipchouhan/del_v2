class AdmissionsController < ApplicationController

  before_filter :authenticate_doctor!

  active_scaffold :admission do |conf|
    conf.columns[:floor].form_ui = :select
    conf.columns[:floor].options = {:options => [["Select Floor", ""]]}
    conf.columns[:bad_no].form_ui = :select
    conf.columns[:bad_no].options = {:options => [['Select Bad Number', ''],['1', '1'], ['2', '2'], ['3', '3'],['4', '4'], ['5', '5'], ['6', '6'],['7', '7'], ['8', '8'], ['9', '9'],['10', '10'], ['11', '11'], ['12', '12']]}
    conf.columns[:ward].form_ui = :select
    conf.columns[:ward].options = {:options => [['Select Ward', '']]}
    #conf.columns[:patient].select_columns = [:first_name]
  end

end 
