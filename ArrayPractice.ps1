
<#Find, second largest, second smallest element from below array. Also find the middle element (by position)

$array = (200,343,4,23,42,3,42,99,100)#>

$array = (200,343,4,23,42,3,42,99,100)

$NewOrder = $array | Sort-Object -Descending 

#Count the total objects in array - 9 objects total

$NewOrder.count

#Second largest element

$NewOrder[1]

#Second smallest element

$NewOrder[7]

#Middle element - 9/2 = 4.5

$NewOrder[4.5]


<#Use below array and perform different operations

$my_courses = @("course1 # Learning Task Automations # Vijay            ", 
                             "course2 # Advanced Scripting & tool making #  Vijay          ", 
                              "course3 # AD Management using PowerShell /In progress # Vijay            

                           ") #>

#1.)  Select all array elements which contains word "task"                          

$my_courses | Select-String "task"

#2.) Sort the array in both descending and ascending order

$my_courses
$my_courses | sort-object -Descending

#3.) Write all array elements which contains word "task"  to text file

$my_courses | Select-String "task" | Out-File C:\Users\<UserProfile>\MyCourses.txt

#4.) Process the array and print each element of array into a statement:

#example:

#Hi. you are invited to join me in   LEARNING TASK AUTOMATIONS   whose author is   Vijay
#Hi. you are invited to join me in   ADVANCED SCRIPTING & TOOL MAKING   whose author is    Vijay
#Hi. you are invited to join me in   AD MANAGEMENT USING POWERSHELL /IN PROGRESS   whose author is   Vijay

$my_courses = @("course1 # Learning Task Automations # Vijay            ", 
                "course2 # Advanced Scripting & tool making #  Vijay          ", 
                "course3 # AD Management using PowerShell /In progress # Vijay            ")

Foreach ($course in $my_courses){

#Trimming white space in array behind Vijay

$MyScheduleTemp = $course.trimend()

#Splitting object by the #'s in each object 
$MySchedule = $MyScheduleTemp -split "#"

#Calling first index displays the course number

$CourseNumber = $MySchedule[0]

#Calling second index displays the course name

$CourseName = $MySchedule[1]

#Assigning value of last element in the object to $LastIndex 

$LastIndex = $MySchedule.Count - 1

#Using $LastIndex as the index to display professor. Just wanted to show some creativity. I could have also just did $Professor = $MySchedule[2]

$Professor = $MySchedule[$LastIndex]

#Outputs results

Write-host "Good afternoon. For $CourseNumber you have been registered for $CourseName with DR.$Professor !"

}
