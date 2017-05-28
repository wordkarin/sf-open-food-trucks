require 'date'
require 'time'
require 'soda'



puts now_time = Time.now.strftime("%H:%M")
puts today_day_number = Date.today.wday

client = SODA::Client.new({:domain => "data.sfgov.org", :app_token => "6LfY6gB2KnDk6TtjZDL16BT9k"})

results = client.get("bbb8-hzi6", :$limit => 5000, :dayorder => today_day_number)

puts "Got #{results.count} results"
results.first.each do |k, v|
  puts "#{k}: #{v}"
end
