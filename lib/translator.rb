require "yaml"


def load_library(file_path)
  emoticons = YAML.load_file('./lib/emoticons.yml')
keys = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }

  emoticons.each do |meanings, pictures|
    pictures.each do |j_version, e_version|
    keys["get_meaning"][pictures[1]] = meanings
    keys["get_emoticon"][pictures[0]] = j_version
    end
  
    end
keys
  end

def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)
  answer = nil
  library["get_emoticon"].each do |e, j|
    if emoticon == e 
      answer = j
    end
  end
  if answer == nil
    "Sorry, that emoticon was not found"
  else answer
  end
end

def get_english_meaning(file_path, emoticon)
  library = load_library(file_path)
  answer = nil 
  library["get_meaning"].each do |j_emo, e_meaning|
    if emoticon == j_emo
      answer = e_meaning
    end
  end
  if answer == nil  
    "Sorry, that emoticon was not found"
  else answer
  end
end