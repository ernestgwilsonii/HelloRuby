# class Example
class Example
  def hello
    puts 'Hello Ruby!'
  end
end

object = Example.new
object.hello

# class Customer
class Customer
  def initialize(id, name, addr)
    @cust_id = id
    @cust_name = name
    @cust_addr = addr
  end
end

cust1 = Customer.new('1', 'Alice', '123 Some Place, Earth')
cust2 = Customer.new('2', 'Bob', '456 Another Place, Earth')

puts cust1.inspect
puts cust2.inspect
