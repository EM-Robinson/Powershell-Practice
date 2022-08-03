<#

Questions for this assignment

This is an interesting problem where you will get to apply following:

1.) File Handling

2.) Regular Expression(basic)

3.) Comparison

4.) Typecasting


We have a folder in which lot of files are there. For each of the employee in the company there is a file like below

Name_employeeID_Date-of-joining.{employee_type}

Vijay_123123_2011-09-09.emp

Sneha_1221023_2011-09-09.contractor

You can get information like name, employee ID and date of joining and employee type from it.



Please help your HR team by making a report of employees who are eligible for special increment(raise/hike):

condition 1: Are employees and not contractors of the organization(confirm by file extension)

condition 2: Serving the organization from at least 5 years.



Report Format:

CSV File: employee_eligibility_status.csv

Name, EmployeeID, Eligibility

Vijay, 123123,  Yes

Another Person, 123212, No

#>



$EmployeeFolder = Get-ChildItem C:\Users\AAP8801\testfolder\testfolder 

#Data targetting only files with the ending extension of .emp

$EmployeeData = $EmployeeFolder | where {$_.name -like "*.emp"}

foreach ($File in $EmployeeFolder){

#Splitting base filename (Name without the extension) by the underscore separating name, employeeID and date

$SplitFileName = $File.BaseName -split ('_')

#Assigning name, employeeid and date of each instance of $file to $Name, $EmployeeID, $Date

$Name = $SplitFileName[0]
$EmployeeID = $SplitFileName[1]
$Date = $SplitFileName[2]

#Outting results for loop to ensure data is being displayed correctly

Write-Host $name,$EmployeeID,$Date

}


