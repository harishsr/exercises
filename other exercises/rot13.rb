class RotThirteen
  attr_accessor :string

  def initialize(string)
    @string = string
    @alphabet = ("a".."z").to_a.join
  end

  def uppercase?(char)
    char === char.upcase
  end

  def decode
    decrypted = ""

    if @string 
      @string.chars.each do |h|
        low_h = h.downcase
        if @alphabet.index(low_h).nil?
          decrypted += h
        else
          index = @alphabet.index(low_h)
          correct_index = index - 13
          correct_index  += 26 if correct_index < 0

          uppercase?(h) ? decrypted += @alphabet[correct_index].upcase :
                          decrypted += @alphabet[correct_index]
        end
      end

      decrypted
    else
      "Invalid. Try again."
    end
  end
end

apartment_therapy_media = RotThirteen.new("Fraq hf gur pbqr lbh hfrq gb qrpbqr guvf zrffntr")
apartment_therapy_media.decode