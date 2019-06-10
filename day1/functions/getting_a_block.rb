def call_two_times
  yield(1)
  yield(2)
end

def call_block_if_true(condition)
  if condition
    yield
  end
end

call_block_if_true(2 < 5) do
  puts "2 < 5"
end

def explicit_get_block(&block)
  block.(1)
  [10, 20, 30].each(&block)
end

explicit_get_block do |i|
  puts "Hello world #{i}"
end
