require 'pry'

require "yaml"
x = ('lib/emoticons.yml')

def load_library(x)
  #binding.pry
  emoji = YAML.load_file(x)
  new = {}
    new["get_emoticon"] = {}
    new["get_meaning"] = {}
  
  emoji.map do |a, b|
    new["get_emoticon"][b[0]] = b[1]
    new["get_meaning"][b[1]] = a
  end
  return new
end

def get_japanese_emoticon(x, emoticon)
  load_library(x)
  
  binding.pry

end

def get_english_meaning
  # code goes here
end