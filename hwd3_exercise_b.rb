users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :lottery_numbers => [6, 12, 49, 33, 45, 20],
    :home_town => "Stirling",
    :pets => [
    {
      :name => "fluffy",
      :species => "cat"
    },
    {
      :name => "fido",
      :species => "dog"
    },
    {
      :name => "spike",
      :species => "dog"
    }
  ]
  },
  "Erik" => {
    :twitter => "eriksf",
    :lottery_numbers => [18, 34, 8, 11, 24],
    :home_town => "Linlithgow",
    :pets => [
    {
      :name => "nemo",
      :species => "fish"
    },
    {
      :name => "kevin",
      :species => "fish"
    },
    {
      :name => "spike",
      :species => "dog"
    },
    {
      :name => "rupert",
      :species => "parrot"
    }
  ]
  },
  "Avril" => {
    :twitter => "bridgpally",
    :lottery_numbers => [12, 14, 33, 38, 9, 25],
    :home_town => "Dunbar",
    :pets =>
      {
        :name => "monty",
        :species => "snake"
      }
  }
}


#1. Get Jonathan's Twitter handle (i.e. the string "jonnyt")
p "1. Jonathan's twitter handle is: #{users["Jonathan"][:twitter]}"

#2. Get Erik's hometown
p "2. Erik's home town is: #{users["Erik"][:home_town]}"

#3. Get the array of Erik's lottery numbers
p "3. Erik's lottery numbers are: #{users["Erik"][:lottery_numbers]}"

#4. Get the type of Avril's pet Monty
p "4. Avril's pet Monty is a: #{users["Avril"][:pets][:species]}"

#5. Get the smallest of Erik's lottery numbers
sortedarray = users["Erik"][:lottery_numbers].sort! { |a, b| a <=> b }
smallestno = sortedarray[0]

p "5. Erik's smallest lottery number is #{smallestno}"

#6. Return an array of Avril's lottery numbers that are even
lotterynos = users["Avril"][:lottery_numbers]
for number in lotterynos
  nodivtwo = number % 2 === 0
		p ("6. These are Avril's even lottery numbers #{nodivtwo}")
  end

#7. Erik is one lottery number short! Add the number 7 to be included in his lottery numbers
users["Erik"][:lottery_numbers] << 7
eriklotno = users["Erik"][:lottery_numbers]
p "7. Erik's lottery numbers now include the 7 I just added (see):#{eriklotno}"

#8. Change Erik's hometown to Edinburgh
["Erik"] << {:home_town => "Edinburgh"}
erht = users["Erik"][:home_town]
p "8. Erik's home town is #{erht}"

#9. Add a pet dog to Erik called "Fluffy"
users["Erik"][:pets] << {:name => "gordon", :species => "gopher"}
erikspets = users["Erik"][:pets]
p "9. Eriks pets include: #{erikspets}"

# #10. Add another person to the users hash
# users << ["Gordon" => {
#   :twitter => ["gordy"],
#   :lottery_numbers => [66, 69, 66, 69, 66, 69],
#   :home_town => ["Plockton"],
#   :pets => [:name => "daffy", :species => "duck"]
# }]
# p users["Gordon"]
