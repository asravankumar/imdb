module Imdb
  class PopularMovies < MovieList
    private

    def document
      @document ||= Nokogiri::HTML(open('http://akas.imdb.com/search/title?count=100&title_type=feature&sort=moviemeter'))
    end
  end # BoxOffice
end # Imdb
