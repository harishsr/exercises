class FizzBuzz
  num = 1...100

  num.each do |i|
    if i % 3 === 0
      if i % 5 === 0
        puts "FizzBuzz"
      else
        puts "Fizz"
      end
    elsif i % 5 === 0
      puts "Buzz"
    else
      puts i
    end
  end
end