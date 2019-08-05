require "yaml"

$emoticons = []

def load_library
$emoticons = YAML.load_file('lib/emoticons.yml')
end

$emoticons = load_library()
$japanese_to_english_dictionary = Hash.new
$english_to_japanese_dictionary = Hash.new

$emoticons.each do |key, value|
  $japanese_to_english_dictionary[value[1] => ]

def get_japanese_emoticon(emoticon)
  
end

def get_english_meaning(emoticon)
  
end




load_library()