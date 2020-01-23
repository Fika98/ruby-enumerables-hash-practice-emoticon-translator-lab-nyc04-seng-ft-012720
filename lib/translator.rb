require = "yaml"


def load_library(path)
  emoticons = YAML.load_file(path)
  hash = {"get_meaning": {},
          "get_emoticon": {}
          }
  emoticons.each do |key, value|
    has["get_emoticon"][value[0]] = emoticons[key]
    hash["get_meaning"][value[1]] = key
  end
  hash
end 

def get_japanese_emoticon(path,emoticon)
result = load_library(file_path)["get_emoticon"[emoticon]]
result ? result : "Sorry, that  emoticon was  not found "
end

def get_english_meaning(path, emoticon)
  result = load_library(path)['get_meaning'][emoticon]
  result ? result: "Sorry, that emoticon was not found"
end