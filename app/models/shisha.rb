class Shisha < ActiveRecord::Base
validates_presence_of :name
validates_presence_of :address
validates_presence_of :latitude
validates_presence_of :longitude
validates_presence_of :isDetailed
end
