require 'addressable/uri'
require 'httparty'
require 'pry'
class Distance
  def initialize(address1, adddress2)
    start_address = address1
    destination_address = address2
  end

  def self.get_distance(address1, address2)
    distance = 0
    if address1.empty? || address2.empty?
     	return nil
    else
      s_address = URI.encode(address1)
      e_address = URI.encode(address2)

      base_url = 'http://maps.googleapis.com/maps/api/directions/json'
      req_url = "#{base_url}?origin=#{s_address}&destination=#{e_address}&sensor=false"
      request = HTTParty.get(req_url)
      if request['routes'].empty?
  	     return nil
      else
        begin
          distance = request['routes'][0]['legs'][0]['distance']['text']
        rescue NoMethodError
          puts request.inspect
          exit
        end
      puts distance
      end
   end
  end
end
Distance.get_distance("Kołodziejska 6, Warszawa, Polska", "Oraczy 6, Warszawa, Polska")
