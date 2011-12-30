class WardsController < ApplicationController

  before_filter :authenticate_doctor!
  active_scaffold :ward do |conf|
    conf.columns = [:ward, :available_bads, :desc ]
    conf.columns[:available_bads].form_ui = :select
    conf.columns[:available_bads].options = {:options => [['Select Available Bads', ''],['1', '1'], ['2', '2'], ['3', '3'],['4', '4'], ['5', '5'], ['6', '6'],['7', '7'], ['8', '8'], ['9', '9'],['10', '10'], ['11', '11'], ['12', '12'], ['13', '13'],['14', '14'], ['15', '15'], ['16', '16'],['17', '17'], ['18', '18'], ['19', '19'],['20', '20']]}
  end

end
