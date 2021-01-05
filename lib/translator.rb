# require modules here
require "yaml"

def load_library(file_path)
  start = YAML.load_file(file_path)
  return_hash = {get_meaning: {}, get_emoticon: {}}
  english = start.keys
  english.each do | word |
    return_hash[:get_meaning][start[word][1]] = word
  end
  english.each do | word |
    return_hash[:get_emoticon][start[word][0]] = start[word][1]
  end
  return_hash
end

def get_japanese_emoticon(file_path, emote)
  dictionary = load_library(file_path)
  if dictionary[:get_emoticon][emote]
    dictionary[:get_emoticon][emote]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file_path, emote)
  dictionary = load_library(file_path)
  if dictionary[:get_meaning][emote]
    dictionary[:get_meaning][emote]
  else
    "Sorry, that emoticon was not found"
  end
end