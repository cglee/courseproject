# 1 

[1,2,3,4,5,6,7,8,9,10].each{|num| puts num}

# 2

a = [1,2,3,4,5,6,7,8,9,10]
a.select{|num| puts num if num > 5}


a.select do |num|
  if num > 5
    puts num
  end
end

# 3

new_array = []

a.select do |number|
  if number.odd?
    new_array << number
  end
end
puts "-------" 
puts new_array
puts "-------" 
# ^ my effort
# \/ course solution
c = a.select{|n| n % 2 != 0}
puts "-------" 
puts c 
puts "-------"


# 4 

a << 11
a.unshift(1)
puts "------"
puts a 
puts "------"

# 5 

a.pop
a << 3
puts "--------"
puts a
puts "--------"

# 6 

a.uniq!
puts "--------"
puts a
puts "--------"

# 7 

# old method
h1 = {:one => 1, :two => 2}
# new method
h2 = {one: 1, two: 2}

h1[:three] = 3
h1[:four] = 5

puts "-----"
puts h1
puts "-----"

h1.delete_if{|key, value| value < 3.5}

puts "-----"
puts h1
puts "-----"

# 8 

# hash values as arrays

my_hash = {key1: [1,2,3,4,5], key2: "a string", key3: 50}
my_array = ['Terry','June', {key1: 1, key2: 2}]

puts "-----"
puts my_hash
puts my_array
puts "-----"

# 9

contact_data = [
  ["joe@email.com", "123 Main st.", "555-123-4567"],
  ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]
] 
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"] = {email: contact_data[0][0], address: contact_data[0][1], tel: contact_data[0][2]}
contacts["Sally Johnson"] = {email: contact_data[1][0] ,address: contact_data[1][1] ,tel: contact_data[1][2]}

contacts.each{|k,v| puts v}

# 10 

contacts["Joe Smith"].each do |k,v| 
  if k == :email 
  puts v
  end
end

contacts["Sally Johnson"].each do |k,v|
  if k == :tel
    puts v 
  end
end

puts "Joes email is #{contacts["Joe Smith"][:email]}"

# 11
peeps = {"Jason Hegarty" => {}, "Victoria Rance" => {}, "Charlie Hegarty" => {}}
peeps_data = [["37", "jason@jheg.co.uk", "48 The Strand"], ["36", "emailrance@gmail.com", "48 The Strand"], ["6", "no_email", "48 The Strand"]]
fields = [:age, :email, :address]
  

peeps.each do |name,hash|
    fields.each do |field|
       
        if peeps_data[0].empty?
          peeps_data.delete(peeps_data.first)
        
          hash[field] = peeps_data[0].shift
          puts "-----"
          puts peeps_data
          puts "-----"  
        else
          hash[field] = peeps_data[0].shift
          puts "-----"
          puts peeps_data
          puts "-----"
        end
    end
end

puts peeps

# 15

arr = %w(word snow skill slight weather waves buns football ruby php css)

arr.delete_if{|word| word.start_with?("s", "w")}

puts arr



# 14 revisited Chris Lees solution from the forum.
contacts = {"Jason Hegarty" => {}, "Victoria Rance" => {}, "Charlie Hegarty" => {}}
contact_data = [["37", "jason@jheg.co.uk", "48 The Strand"], ["36", "emailrance@gmail.com", "48 The Strand"], ["6", "no_email", "48 The Strand"]]
fields = [:age, :email, :address]


counter = 0
contacts.each do |name, hash|
  fields.each_with_index do |field, idx|
    hash[field] = contact_data[counter][idx]
  end
  counter += 1
end
puts "/\/\/\/\/\/\/\/\/\/\/"
puts contacts
puts "/\/\/\/\/\/\/\/\/\/\/"

# 16

a = ['white snow', 'winter wonderland', 'melting ice', 'slippery sidewalk', 'salted roads', 'white trees']
b = a.map{|words|words.split}
b.flatten!
p a
p b 

# 17 

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true} 
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "same"
else
  puts "not same"
end




