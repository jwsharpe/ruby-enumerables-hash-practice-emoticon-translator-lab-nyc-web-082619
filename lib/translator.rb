require "yaml"

$emoticons = []
def load_library
$emoticons = YAML.load_file('lib/emoticons.yml')
end

def get_japanese_emoticon(emoticon)
  
end

def get_english_meaning(emoticon)
  
end




load_library()