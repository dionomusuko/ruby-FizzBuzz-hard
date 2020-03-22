array = gets.split(/[: ]/)
line = []
str = []
tmp = 0

n = array.pop.to_i

# validation
if n > 10000000
  puts "invalid input"
  exit
end


# 文字列と整数を分割
array.each do |ary|
  if ary =~ /\A[0-9]+\z/
    line.push(ary.to_i)
  else
    str.push(ary)
  end
end

# validation
str.each do |str|
  if str.length > 50
    puts "invalid input"
    exit
  end
end

# fizz_buzz
line.each do |line|
  if n % line == 0
    if tmp < line
      tmp = line
    end
  end
end

ans = line.index(tmp)
if tmp == 0
  puts n
else
  puts str[ans]
end
