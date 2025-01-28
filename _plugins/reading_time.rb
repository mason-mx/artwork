# Outputs the reading time

# Read this in “about 4 minutes”
# Put into your _plugins dir in your Jekyll site
# Usage: Read this in about {{ page.content | reading_time }}

module ReadingTimeFilter
    def reading_time( input )
      "less than 1 minute"
    end
  end
  
  Liquid::Template.register_filter(ReadingTimeFilter)