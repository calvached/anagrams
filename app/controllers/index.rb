get '/' do
  erb :index
end

def find_anagram(user_word)
  @matches = []
  Word.where("size = ?", user_word.size).each do |term|
    if is_anagram?(user_word, term.word)
      @matches << term.word
    end
  end

  erb :index
end

def is_anagram?(word1, word2)
  return false if word1.downcase.split(//).sort != word2.downcase.split(//).sort
  true
end

post '/anagrams' do
  input = params["user_input"]
  find_anagram(input)
end
