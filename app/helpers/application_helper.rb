module ApplicationHelper

  def floor_helper(current_doctor)
    floors = current_doctor.floors
    options = [["Select Floor",""]]
    floors.each do |floor|
      options.push([floor.floor_no,floor.floor_no])
    end
    return options
  end

  def ward_helper(current_doctor)
    wards = current_doctor.wards
    options = [["Select Ward",""]]
    wards.each do |ward|
      options.push([ward.floor.floor_no.to_s+ " - " + ward.ward.to_s, ward.ward])
    end
    return options
  end

  def bad_no_helper(current_doctor)
    options = [["Select Bad No",""],["1","1"],["2","2"],["3","3"],["4","4"],["5","5"],["6","6"],["7","7"],["8","8"],["9","9"],["10","10"],["11","11"],["12","12"],["13","13"],["14","14"],["15","15"],["16","16"],["17","17"],["18","18"],["19","19"],["20","20"],["21","21"],["22","22"],["23","23"],["24","24"],["25","25"],["26","26"],["27","27"],["28","28"],["29","29"],["30","30"]]
    return options
  end

end
