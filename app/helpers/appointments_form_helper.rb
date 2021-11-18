module AppointmentsFormHelper
  def hour_selector(name, appointment)
    time_choices = {
     "8 AM" => 8,
     "9 AM" => 9,
     "10 AM" => 10,
     "11 AM" => 11,
     "12 PM" => 12,
     "1 PM" => 13,
     "2 PM" => 14,
     "3 PM" => 15,
     "4 PM" => 16,
     "5 PM" => 17,
     "6 PM" => 18,
     "7 PM" => 19,
     "8 PM" => 20,
    }
    select_tag(name, options_for_select(time_choices, time_choices[appointment_hour(appointment)] ) )
  end

  def appointment_hour(appointment)
    if appointment.start_time
      appointment.start_time.strftime('%l %p').strip
    else
      "8 AM"
    end
  end

  def min_selector(name, appointment)
    min_choices = ["00", "15", "30", "45"]
    select_tag(name, options_for_select(min_choices, appointment_min(appointment) ) )
  end

  def appointment_min(appointment)
    if appointment.start_time
      appointment.start_time.strftime('%M')
    else
      "00"
    end
  end

  # def parse_time(array)
  #   DateTime.parse(array["date"] + " " + array["hour"] + ":" + array["min"])
  # end

end
