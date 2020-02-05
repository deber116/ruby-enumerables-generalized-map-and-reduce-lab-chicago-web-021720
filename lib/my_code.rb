
def map(source)
  result = []
  source_index = 0 
  while source_index < source.count do
    result.push(yield(source[source_index]))
    source_index += 1 
  end
  result
end

def reduce(source, starting_value = nil)
  result = nil
  source_index = 0 
  if starting_value
      result = starting_value
    else 
      result = source[source_index]
      source_index = 1
    end
  while source_index < source.count do 
    yield(result, source[source_index])
    source_index += 1
  end
  result
end