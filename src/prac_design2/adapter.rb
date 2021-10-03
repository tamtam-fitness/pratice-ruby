class ExampleApi
  def execute
    puts "calling"
  end
end

class Adapter
  def execute
    raise  NotImplementedError.new
  end
end

class ConcreteAdapter < Adapter

  def initialize
    @example_api = ExampleApi.new
  end

  def execute
    puts "hello"
    @example_api.execute
    puts "hello"
  end

end
ca = ConcreteAdapter.new
ca.execute