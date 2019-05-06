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
  list = load_library(x)
  
  if list["get_emoticon"][emoticon] == nil
    return "Sorry, that emoticon was not found"
  else
    return list["get_emoticon"][emoticon]
  end
end

def get_english_meaning(x, emoticon)
  list = load_library(x)
  
  if list["get_meaning"][emoticon] == nil
    return "Sorry, that emoticon was not found"
  else
    return list["get_meaning"][emotion]
  end
end

