#内部イテレータの実装 while, has next, next, idx
def my_each(array)
  i = 0
  while i < array.length
    yield(array[i])
    i += 1
  end
end
w = %w(fad pfiap adf)
puts w