require 'httparty'
require_relative 'crypto-config'

response = HTTParty.get(@request_url, :headers => @headers).parsed_response

counter = 0
response["data"].each do |current_coin| 
  print "#{@coins[counter][0][:icon]} #{current_coin[1]["quote"]["USD"]["price"].round(2)} "
counter += 1
end
