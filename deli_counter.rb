def line(nelsonz_deli)
  if !nelsonz_deli.empty?
    line = "The line is currently:"
    nelsonz_deli.each_with_index { |customer, i| line << " #{i+1}. #{customer}" }
    puts line
  else
    puts "The line is currently empty."
  end
end

def take_a_number(nelsonz_deli, customer)
  if !nelsonz_deli.include?(customer)
    nelsonz_deli << customer
    puts "Welcome, #{customer}. You are number #{nelsonz_deli.index(customer) + 1} in line."
  end
end

def now_serving(nelsonz_deli)
  if nelsonz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{nelsonz_deli[0]}."
    nelsonz_deli.shift
  end
end