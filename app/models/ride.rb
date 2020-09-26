require 'pry'
class Ride < ActiveRecord::Base
    belongs_to :user
    belongs_to :attraction

    def take_ride

        #Update ticket number
        self.user.update(:tickets => self.attraction.tickets)
        #Update nausea
        self.user.update(:nausea => self.attraction.nausea_rating + self.user.nausea)
        #Update happiness
        self.user.update(:happiness => self.attraction.happiness_rating + self.user.happiness)
        
        #Check whether user has enough tickets and is tall enough for ride
        if self.user.tickets <= self.attraction.tickets
            return "Sorry. You do not have enough tickets to ride the #{self.attraction.name}."
        elsif self.user.height <= self.attraction.min_height
            return "Sorry. You are not tall enough to ride the #{self.attraction.name}."
        else
            return "Sorry. You do not have enough tickets to ride the #{attraction.name}. You are not tall enough to ride the #{attraction.name}."
        end
    end
end 
