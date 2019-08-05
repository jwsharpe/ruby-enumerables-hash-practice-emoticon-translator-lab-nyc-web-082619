require "yaml"

$emoticons = []

def load_library
$emoticons = YAML.load_file('lib/emoticons.yml')
end

$emoticons = load_library()
$japanese_to_english_meaning = Hash.new
$jape = Hash.new

$emoticons.each do |key, value|
  $japanese_to_english_dictionary = {value[0] => value[1]}
  $english_to_japanese_dictionary = {

def get_japanese_emoticon(emoticon)
  
end

def get_english_meaning(emoticon)
  
end




load_library()