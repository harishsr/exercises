class Robot

  def name
    unless @name 
      letters = numbers = ""
      random_l = ("A".."Z").to_a.shuffle.join("")
      random_n = (1..9).to_a.shuffle.join("")

      2.times{ letters += random_l[rand(0..9)].to_s }
      3.times{ numbers += random_n[rand(0..8)].to_s }
      
      @name = letters + numbers
    end
    @name
  end

  def reset
    @name = nil
  end

end