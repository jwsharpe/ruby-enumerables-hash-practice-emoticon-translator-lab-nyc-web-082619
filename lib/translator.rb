require "yaml"

$emoticons = []

def load_library
$emoticons = YAML.load_file('/lib/emoticons.yml')
end

$emoticons = load_library()
$japanese_to_english_meaning_dictionary = Hash.new
$english_to_japanese_dictionary = Hash.new

$emoticons.each_key do |key|
  $japanese_to_english_meaning_dictionary = {emoticons[key][1] => key}
  $english_to_japanese_dictionary = {emoticons[key][0] => emoticons[key][1]}

def get_japanese_emoticon(emoticon)
  return $english_to_japanese_dictionary[emoticon]
end

def get_english_meaning(emoticon)
  return $japanese_to_english_meaning_dictionary[emoticon]
end
