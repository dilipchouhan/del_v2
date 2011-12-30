class TreatmentsController < ApplicationController
  before_filter :authenticate_doctor!

  active_scaffold :treatment do |conf|
    conf.columns = [:report, :desc]
  end
end 
