class IMapAPI
  def initialize(attributes)
  end

  def exec
    raise  NotImplementedError.new
  end

end

class GoogleMapApi < IMapAPI
  attr_accessor :filed
  def initialize(attributes)
    @filed = attributes[:filed]
  end

  def exec
    puts "GoogleMapApi3#{@filed}"
  end

end

class IFactory

  def build
    raise  NotImplementedError.new
  end

  def MapApi
    raise  NotImplementedError.new
  end

end

class GoogleFactory < IFactory

  attr_accessor :google_map_api
  
  def build(attributes)
    @google_map_api = GoogleMapApi.new(attributes)
  end

  def ret_mapApi
    @google_map_api
  end

end

gf = GoogleFactory.new
gf.build(filed: "テスト")
gma = gf.ret_mapApi
gma.exec