
class Show < ActiveRecord::Base

    def Show::highest_rating
        Show.select("rating").maximum("rating")
    end

    def Show::most_popular_show
        Show.find_by("rating == #{Show.highest_rating}")
        # returns the tv show with the highest rating (FAILED - 1)
    end

    def Show::lowest_rating
        Show.select("rating").minimum("rating")

        # returns the lowest rating of all the TV shows (FAILED - 2)
    end

    def Show::least_popular_show
        Show.find_by("rating == #{Show.lowest_rating}")

        # returns the tv show with the lowest rating (FAILED - 3)
    end

    def Show::ratings_sum

        Show.sum("rating")
        # returns the sum of all the ratings of all the tv shows (FAILED - 4)
    end

    def Show::popular_shows
        Show.where("rating > 5")
        # returns an array of all of the shows with a rating above 5 (FAILED - 5)
    end

    def Show::shows_by_alphabetical_order
        Show.order("name")
        # returns an array of all of the shows, listed in alphabetical order (FAILED - 6)
    end

    

end
