require 'yaml'
require 'pp'
def directors_database
	rot13 = -> (s) { s.tr('A-Za-z', 'N-ZA-Mn-za-m') }
  @_db ||= YAML.load(rot13.call(File.open("directors_db").read.to_s))
end



def pretty_print_nds(thing)
  pp thing
end

pretty_print_nds(directors_database)

def print_first_directors_movie_titles
  # list = ""
  for el in directors_database[0][:movies]
    puts el[:title]
  end
  # puts list
end

print_first_directors_movie_titles

