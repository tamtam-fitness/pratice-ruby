class Api  
end

class RealAPi < Api
end

class ProxyApi < Api

  def initialize
    @real_api = RealAPi.new
  end

end

