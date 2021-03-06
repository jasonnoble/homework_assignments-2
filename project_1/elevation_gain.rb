#!/usr/bin/env ruby
# the following array shows a few elevation checkpoints (in feet) for a hike.
# the problem is to determine the net elevation gain from the lowest to the
# highest points, and the cumulitive elevation gain over the entire hike.

elevation_checkpoints = [11_306, 13_146, 12_450, 13_130, 12_690, 13_392, 12_450, 13_100, 11_306]
elevation_changes = []

n = elevation_checkpoints.length - 1
n.times do |k|
  elevation_changes.push(elevation_checkpoints[k + 1] - elevation_checkpoints[k])
end

cumulitive_gain = 0
net_gain = (elevation_checkpoints.sort[-1] - elevation_checkpoints.sort[0])

elevation_changes.each do |change|
  cumulitive_gain += change if change > 0
end
puts "Cumulitive elevation gain is #{cumulitive_gain} feet."
puts "Net Elevation gain to summit is #{net_gain} feet."
