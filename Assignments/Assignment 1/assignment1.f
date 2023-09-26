      PROGRAM AVERAGE
c Group 2
c Robert Krency, Ryan Miller, Adir Turgeman, Brandon Mastin

      implicit none

      character*10 name
      integer gradeCount, i
      real ave, gradeTotal, j

5     FORMAT(' ',A, ", your average of ",
     *I3, " grades is: ",F5.2,".")

      write (*,*) "Enter your name: "
      read (*,*) name

      write(*,*) "Enter the number of grades: "
      read(*,*) gradeCount
      gradeTotal = 0
      if (gradeCount .GT. 0) then
        i=0
        do while (i .LT. gradeCount)
            write (*,*) "Enter the grade: "
            read (*,*) j
            gradeTotal = gradeTotal + j
            i = i + 1
        end do
        ave = gradeTotal / gradeCount
        write (*,5) trim(name), gradeCount, ave
      else
        write (*,*) "Grade Count is zero."
      endif
      
      
      STOP
      END PROGRAM