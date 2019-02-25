#hashes are key-value pairs

class Book
  attr_reader :author, :title

  def initialize(author, title)
    @author = author
    @title = title
  end

  def ==(other)
    self.class === other and
      other.author == @author and
      other.title == @title
  end

  alias eql? ==

  def hash
    @author.hash ^ @title.hash # XOR
  end
end

#literal hashes
hash_example = {
	"key1" => "value1",
	"key2" => "value2",
	"key3" => "value3"
}

puts "The whole hash is #{hash_example}"

puts "The first key is #{hash_example["key1"]}"
puts "The first value is #{hash_example["value1"]}, meeh you can only reference by keys!"

#A Hash can also be created through its ::new method:
grades = Hash.new
grades["Dorothy Doe"] = 9
