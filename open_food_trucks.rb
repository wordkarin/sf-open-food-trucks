require './api_wrapper'
require './convert_time'
require './truck_utils'

r = APIWrapper.get_all_for_day_of_week
now_time = Time.now.strftime("%H:%M")
r_now = []

#keep the trucks that are open now.
r.each do |truck|
  if truck.start_time < convert_time(now_time) && truck.end_time > convert_time(now_time)
    r_now.push(truck)
  end
end

#alphabetize them!
r_now_ordered = r_now.sort_by {|truck| truck.name}

#print em!
list_trucks(r_now_ordered)
