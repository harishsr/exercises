class Fixnum
  def to_roman
    number = self.to_s
    romans = { '1' => 'I', '2' => 'II', '3' => 'III', '4' => 'IV', '5' => 'V', 
                    '6' => 'VI', '7' => 'VII', '8' => 'VIII', '9' => 'IX', '0' => '',
                    '10' => 'X', '20' => 'XX', '30' => 'XXX', '40' => 'XL', '50' => 'L', '60' => 'LX',
                    '70' => 'LXX', '80' => 'LXXX', '90' => 'XC', '100' => 'C', '200' => 'CC', 
                    '300' => 'CCC', '400' => 'CD', '500' => 'D', '600' => 'DC', '700' => 'DCC',
                    '800' => 'DCCC', '900' => 'CM', '1000' => 'M', '2000' => 'MM', '3000' => 'MMM' }

    if number.length > 0
      if number.length == 1
        romans[number[0]]
      elsif number.length == 2
        romans[number[0]+"0"].to_s + 
          romans[number[1]].to_s
      elsif number.length == 3
        romans[number[0] + "00"].to_s + 
          romans[number[1]+"0"].to_s + 
          romans[number[2]].to_s
      elsif number.length == 4
        romans[number[0] + "000"].to_s + 
          romans[number[1] + "00"].to_s + 
          romans[number[2]+"0"].to_s + 
          romans[number[3]].to_s
      end
    else
      "Invalid number for a roman numeral."
    end
  end
end