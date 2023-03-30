!#/usr/bin/env ruby

require "bundler/setup"
require "fakeFlixConsumer"

FakeFlixConsumer.configure do |config|
  config.fake_flix_host = "http://localhost:3000"
  config.api_key = "3G9jpO62uXDBj9NR2k9znd09X806VvP7"
end

client = FakeFlixConsumer::Client.new
movies = client.list_movies
directors = client.list_directors
genres = client.list_genres


filme = client.show_movie(1)

puts "Filmes: " + "\n\n"
pp movies

puts "\n\n"

puts "Diretores: " + "\n\n"
pp directors

puts "\n\n"

puts "Gêneros: " + "\n\n"
pp genres

#new_movie = client.create_movie(title: "O grito", genre_id: 5,director_id: 2)

# p new_movie
p filme