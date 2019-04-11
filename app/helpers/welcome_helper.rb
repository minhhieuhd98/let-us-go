module WelcomeHelper
    def time_format(time)
        time.strftime("%H:%M %Y/%m/%d")
    end
    
    def tag_links(tags)
        tags.split(",").map{|tag| link_to tag.strip, tag_path(tag.strip) }.join(", ") 
    end
end
