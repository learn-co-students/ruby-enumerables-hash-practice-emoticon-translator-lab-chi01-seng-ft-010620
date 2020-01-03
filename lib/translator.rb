# require modules here
require "yaml"
def load_library(library)
translator = { "get_meaning" => {}, "get_emoticon" => {}
}
YAML.load_file(library).each { |meaning, trans|
 jpn = trans [1]
 eng = trans[0]
     translator["get_meaning"][jpn] = meaning
     translator["get_emoticon"][eng] = jpn
}
  translator
end


# eng = trans[0]
# jpn = trans[1]
# translator["get_meaning"][eng] = jpn 
# translator["get_emoticon"][jpn] = meaning 
# }
# translator
# # end

def get_japanese_emoticon(path, emoticon)
  smileys = load_library(path)
  equivalent = smileys["get_emoticon"][emoticon]
  if equivalent 
    equivalent 
  else 
    "Sorry, that emoticon was not found"
  end 
  
  
  
end

def get_english_meaning(path, japanese_emoticon)
  the_meanings = load_library(path)
equivalent_m = the_meanings["get_meaning"][japanese_emoticon]
if equivalent_m
  equivalent_m
else 
  "Sorry, that emoticon was not found"
end
end