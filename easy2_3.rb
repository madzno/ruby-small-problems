# Simple Tip Calculator
# Input; Two integers, bill amount and tip percentage
# Output; Two floats, tip total and bil total
# Clarifying questions
# natural numbers? From example, yes
# input are integers and not floats? From example
# input is whole integers and output is floats
# program needs to ask for bill and tip percentage
# as well as display tip total and bill total with tip added
# do we need to verify the users input? From example, no
# do we need to worry about symbols (aka %) or very large #'s?'
# do we need to ask user if they want to compute the bill again?
# Algo
# Ask user for bill amount
# set bill amount to a variable bill_amount
# Ask user for tip percentage
# set percentage to a variable tip
# Divide tip by 100 and set to a variable decimal_tip
# multiply bill_amount by decimal_percentage to get tip_total
# add tip_total to bill_amount to get total_bill
# display tip_total and total_bill to the user

puts "What is the bill?"
bill_amount = gets.chomp.to_f

puts "What is the tip percentage?"
tip = gets.chomp.to_f

decimal_tip = (tip / 100).round(2)
tip_total = (bill_amount * decimal_tip).round(2)
bill_total = (tip_total + bill_amount).round(2)

puts "The tip is #{tip_total}"
puts "The total is #{bill_total}"

# further exploration
#puts "The tip is #{format('%.2f', tip_total)}"
#puts "The total is #{format('%.2f', bill_total)}"
