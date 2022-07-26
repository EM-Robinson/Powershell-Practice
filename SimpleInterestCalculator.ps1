#Simple interest calculator:
#This script will prompt the user for different inputs and then calculate the amout of interest based off of the inputs provided
#Formula: Simple Interest = PRT/100

#The user must provide their principal amount, interest rate and time. The principal amount can only be numbers between 10 and 10000. The time can only be between 2-10 years. 

[ValidateRange(10,10000)][Int32]$Principal_Amount = Read-Host "Please enter your principal amount"
[ValidateRange(2,10)][Int32]$Time =  Read-Host "Please enter time (In years)"
[Decimal]$Interest_Rate = Read-Host "Please enter your interest rate"

#Outputs the inputs entered by the user 

Write-Output "The principal amount you entered is:$ $Principal_Amount"
Write-Output "The time you entered is: $Time years"
Write-Output "The interest rate you entered is: $Interest_Rate"

#Calculating the inputs using the Simple Interest formula

[Decimal]$Simple_Interest = ($Principal_Amount*$Interest_Rate*$Time)/100

#Outputting the simple interest amount to the user

Write-Output "Your total simple interest is: $Simple_Interest"

