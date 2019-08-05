require "yaml"

def load_library(file_path)
  yaml_hash = YAML.load_file(file_path)
  dictionary_hash = Hash.new
  dictionary_hash[:get_meaning] = []
  dictionary_hash[:get_emoticon] = []
  yaml_hash.each_key do |key|
    pp key
    dictionary_hash[:get_meaning].push({yaml_hash[key][1] => key})
    
  end
  pp dictionary_hash
end

def get_japanese_emoticon(yaml_file,emoticon)

end

def get_english_meaning(yaml_file, emoticon)

end

load_library("./lib/emoticons.yml")