class Ride < ActiveRecord::Base
    belongs_to :user
    belongs_to :attraction

    def self.take_ride
    end
end 
