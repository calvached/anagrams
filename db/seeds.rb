
module Reader
  def self.open
    File.open("./app/words.txt", "r").each_line do |line|
      word_size = line.chomp.size
      Word.create({word: line.chomp, size: word_size})
    end
  end
end


Reader.open
