module EventsHelper
    def time_format(time)
        time.strftime("%H:%M %Y/%m/%d")
    end
end
