class Relation
  attr_accessor :symbol, :num

  def initialize(symbol, num)
    @num = num
    @symbol = symbol
  end

  def run(num1)
    case @symbol
    when '*'
      num1 * @num
    when '/'
      num1 / @num
    when '+'
      num1 + @num
    when '-'
      num1 - @num
    end
  end

  def to_s
    "<rel sym=#{@symbol}, num=#{@num}>"
  end
end

relation_list = gets.chomp.split(" ")

relations = []
relation_list.each do |item|
  new_relation = Relation.new(item[0], item[1..-1].to_i)
  relations << new_relation
end

init_item = gets.to_f
nums = gets.to_i

result = init_item.to_i
puts "Term 0: #{result}"
num = 1
nums.times do
  relations.each do |r|
    result = r.run(result).to_i
  end
  puts "Term #{num}: #{result}"
  num += 1
end
