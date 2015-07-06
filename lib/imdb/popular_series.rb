module Imdb
  class PopularSeries < SerieList
    private

    def document
      @document ||= Nokogiri::HTML(open('http://akas.imdb.com/search/title?count=100&title_type=tv_series&sort=moviemeter'))
    end
  end # BoxOffice
end # Imdb
