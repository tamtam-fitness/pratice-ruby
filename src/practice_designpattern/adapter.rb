class BakeryWorker

  def give
    "pan"
  end
end


class RetailStore

  def initialize(worker)
    @worker = worker
  end

  def sell
    thing = @worker.give
    puts thing + ": 100円"
  end

end


rs = RetailStore.new(BakeryWorker.new)
rs.sell
