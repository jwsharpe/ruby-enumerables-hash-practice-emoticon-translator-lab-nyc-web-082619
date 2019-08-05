require "yaml"

def load_library(file_path)
YAML.load_file(file_path)
end

$emoticons = load_library()
$japanese_to_english_meaning_dictionary = Hash.new
$english_to_japanese_dictionary = Hash.new

$emoticons.each_key do |key|
  $japanese_to_english_meaning_dictionary = {$emoticons[key][1] => key}
  $english_to_japanese_dictionary = {$emoticons[key][0] => $emoticons[key][1]}
end

def get_japanese_emoticon(yaml_file,emoticon)
  emoticons = load_library(yaml_file)
  english_to_japanese_dictionary = Hash.new
  emoticons.each_key do |key|
   english_to_japanese_dictionary = {$emoticons[key][0] => $emoticons[key][1]}
end
  return english_to_japanese_dictionary[emoticon]
end

def get_english_meaning(emoticon)
  return $japanese_to_english_meaning_dictionary[emoticon]
end
