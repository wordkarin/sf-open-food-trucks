def convert_time(stringtime)
  #this assumes my string times are in format "HH:MM"
  array = stringtime.split(":")
  hours = array[0].to_f
  minutes = array[1].to_f

  return hours + minutes/60
end
