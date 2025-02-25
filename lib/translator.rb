require "yaml"

def load_library(file_path)
  yaml_hash = YAML.load_file(file_path)
  dictionary_hash = {get_meaning: Hash.new, get_emoticon: Hash.new}
  yaml_hash.each_key do |key|
    dictionary_hash[:get_meaning][yaml_hash[key][1]] = key
    dictionary_hash[:get_emoticon][yaml_hash[key][0]] = yaml_hash[key][1]
  end
  dictionary_hash
end

def get_japanese_emoticon(yaml_file,emoticon)
  dictionary = load_library(yaml_file)
  dictionary[:get_emoticon][emoticon] ? dictionary[:get_emoticon][emoticon] : "Sorry, that emoticon was not found"
end

def get_english_meaning(yaml_file, emoticon)
  dictionary = load_library(yaml_file)
  dictionary[:get_meaning][emoticon] ? dictionary[:get_meaning][emoticon] : "Sorry, that emoticon was not found"
end

load_library("./lib/emoticons.yml")