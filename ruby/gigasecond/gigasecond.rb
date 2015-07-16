class Gigasecond
  GS = 1e9
  def self.from(time = Time.now)
    raise error if !time.instance_of?(Time)
    time + GS
  end
end