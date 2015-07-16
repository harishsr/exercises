class HelloWorld

  def self.hello(a = nil)
    a.nil? ? "Hello, World!" : "Hello, #{a}!"
  end

end