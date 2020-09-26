require 'pry'
class Ride < ActiveRecord::Base
    belongs_to :user
    belongs_to :attraction

    def take_ride
        #binding.pry
        if self.user.tickets < self.attraction.tickets
            return "Sorry. You do not have enough tickets to ride the #{self.attraction.name}."
        elsif self.user.height < self.attraction.min_height
            return "Sorry. You are not tall enough to ride the #{self.attraction.name}."
        elsif self.user.height < self.attraction.min_height and self.user.tickets < self.attraction.tickets
            return "Sorry. You do not have enough tickets to ride the #{self.attraction.name}. You are not tall enough to ride the #{self.attraction.name}."
        end
    end
end 
