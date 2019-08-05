require "yaml"

def load_library(file_path)
  yaml_hash = YAML.load_file(file_path)
  dictionary_hash = Hash.new
  yaml_hash.each_key do |key|
    dictionary_hash = {
      get_meaning: {key => yaml_hash[key][1]},
      get_emoticon: {key => yaml_hash[key]}
    }
  end
  return dictionary_hash
end

def get_japanese_emoticon(yaml_file,emoticon)

end

def get_english_meaning(yaml_file, emoticon)

end
