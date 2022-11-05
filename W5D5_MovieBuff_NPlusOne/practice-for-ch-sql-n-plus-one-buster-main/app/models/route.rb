# == Schema Information
#
# Table name: routes
#
#  id         :bigint           not null, primary key
#  number     :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Route < ApplicationRecord
  has_many :buses,
    class_name: 'Bus',
    foreign_key: :route_id,
    primary_key: :id,
    dependent: :destroy

  def n_plus_one_drivers
    all_drivers = {}
    buses.each do |bus|
      drivers = bus.drivers.map(&:name)
      all_drivers[bus.id] = drivers
    end

    all_drivers
  end

  def better_drivers_query
    # Your code here
    bus_and_drivers = self 
      .buses 
      .select("buses.id, drivers.name, drivers.bus_id")
      .joins(:drivers)
    
    #bus_id = self.buses.includes(id)

    all_drivers = Hash.new{|h,k| h[k] = []}
    bus_and_drivers.each {|bus| all_drivers[id] = []}
    bus_and_drivers.each do |driver|
      all_drivers[driver.bus_id] << driver.name 
    end 
    all_drivers
  end
end