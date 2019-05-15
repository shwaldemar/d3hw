#EXCERCISE A.

#1.
stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]
stops << 'Edinburgh Waverley'
p stops

#2.
stops.unshift("Glasgow Queen St")
p stops

#3.
stops.insert(4, "Polmont")
p stops

#4.
p stops[5]

#5.
stops.delete("Livingston")
p stops

#6. Delete "Cumbernauld" from the array by index
stops.delete_at(2)
p stops

#7. How many stops there are in the array?
p stops.count

#8. How many ways can we return "Falkirk High" from the array?
#(8.i)
p stops[2]
#(8.ii)
if stops[2] === "Falkirk High"
  p "Falkirk High"
end
#(8.iii)
for stop in stops
  if stop === "Falkirk High"
    p "Falkirk High"
  end
end
#(8.iv)
p stops[-5]

#9. Reverse the positions of the stops in the array
p stops.reverse

#10. Print out all the stops using a for loop
for stop in stops
  p stop
end
