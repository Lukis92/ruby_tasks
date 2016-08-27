# https://www.codewars.com/kata/speed-control
require 'pry'
def gps(interval, measurements)
  compute_result(interval, measurements).tap(&method(:print))
end

def compute_result(interval, measurements)
  return 0 if measurements.length <= 1
  hourly_speed(max_distance(distance(measurements)), interval)
end

def distance(measurements)
  measurements
    .each_cons(2)        # iterate over all consecutive pairs
    .map {|a, b| b - a}  # transform to list of distances travelled
end

def max_distance(distances)
  distances.max
end

def hourly_speed(distance, time_in_seconds)
  seconds_per_hour = 60.0 * 60
  (distance * seconds_per_hour / time_in_seconds).floor
end
gps(20, [0.0, 0.23, 0.46, 0.69, 0.92, 1.15, 1.38, 1.61])
gps(20, [0.0, 0.11, 0.22, 0.33, 0.44, 0.65, 1.08, 1.26, 1.68, 1.89, 2.1, 2.31, 2.52, 3.25])
