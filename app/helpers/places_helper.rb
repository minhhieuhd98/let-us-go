module PlacesHelper
    def place_datetime_format(time)
        Time.at(time).strftime("%d %B")
    end
end
