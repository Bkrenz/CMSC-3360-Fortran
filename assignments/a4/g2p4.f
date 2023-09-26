c     G2P4.f
c     Robert Krency, some other dudes

      program matrix_adder
c     General Purpose Formats
01    format(' ', 'Welcome to the Matrix Adder program.')
02    format(' ', 'Now quitting the Matrix Adder program.')
05    format(A20)
      character(len=20) userInput

c     File I/O Variables and Formats
      character(len=20) inputFileName, outputFileName
      logical validInput, validOutput, fileExists
10    format(' ','Please enter a valid input file, or "QUIT" to quit.')
11    format(' ','Input file ', A20,' does not exist.')
15    format(' ','Please enter a valid output file, or "QUIT" to quit.')
16    format(' ','Output file ', A20,' does not exist.')
17    format(' ','Output file exists; enter "n" for new file name, '
     c            '"o" to overwrite existing file, or "q" to quit.')

c     String Keywords
      character(len=4) QUIT
      parameter (QUIT='QUIT')
      logical continueRun

c     Matrix Constants
      integer MAXROWS, MAXCOLS, MAXMATRICES
      parameter (MAXROWS=10, MAXCOLS=10, MAXMATRICES=10)

c     Matrix Headers
20    format(' ','MATRIX', X, I2)
21    format(' ','SUM OF ALL ', I2, ' MATRICES')




c     Init
      write(*,01)
      continueRun = .TRUE.
      validInput = .FALSE.
      validOutput = .FALSE.


c     Get Input File
      do while (continueRun .AND. .NOT. validInput)
        write(*,10)
        read(*,05) inputFileName

c       Check if user input was "QUIT"
        if (inputFileName .EQ. QUIT) then
            continueRun = .FALSE.
        else
c         Check if the File Exists
          inquire(FILE=inputFileName, EXIST=fileExists)
          if (fileExists) then
            validInput = .TRUE.
          else
            write(*,11) inputFileName
          end if
        end if
      end do


c     Get Output File
      do while (continueRun .AND. .NOT. validOutput)
        write(*,15)
        read(*,05) outputFileName

c       Check if user input was "QUIT"
        if (outputFileName .EQ. QUIT) then
            continueRun = .FALSE.
        else
c         Check if the File Exists
          
        end if

      end do


c     Terminate the Program
      write(*,02)

      stop
      end program