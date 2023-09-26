c average program using array (program 2)
c group 2
c Adir Turgeman, Robert Krency, Ryan Miller, Brandon Mastin


c234567
      PROGRAM G2P2
            
            
      implicit none
        
c     Formats
1     format("Name: ", A20)
2     format("Grades:")
3     format(4X, F5.1)
4     format("Total: ", F5.1)
5     format("Average: ", F5.1)
6     format("Your ", I2, " grade(s):")
7     format(A20)

        
c     Initialize Data Vars
      character name*20
      integer count, displayCount
      real total, grade, average, gradeArray(10)
      logical runloop

      count = 0
      displayCount = 1
      total = 0
      grade = 0
      average = 0
      runloop = .TRUE.


c     Get the user's name.
      write (*,*) 'Enter your name: '
      read(*,7) name

c     Ask the user for grades until either 10 values have been entered or the number is not 0 <= x <= 100
      do while (runloop .AND. count .LE. 10)
        write(*,*) "Please enter a grade between 0 and 100, inclusive: "
        read(*,*) grade
c       Check if the grade is within the range
        if (grade .GE. 0 .AND. grade .LE. 100) then
          count = count + 1
          gradeArray(count) = grade
          total = total + grade
        else 
          runloop = .FALSE.
        end if
      end do

c     Calculate the average
      average = total / count

c     Display the Values
      write (*,1) name
      if (count .GT. 0) then
        write (*,6) Count
        do while (count .GT. 0 .AND. displayCount .LE. count)
                write (*, 3) gradeArray(displayCount)
                displayCount = displayCount+1
        end do
        write(*,4) total
        write(*,5) average
      else
        write(*,*) 'No valid grades input.'
      end if
      
      STOP
      END PROGRAM