# bserch
Tired of tracking down words? Debugging is too annoying? Then we've got the solution, for YOU!

Introducing b8speech, the word searching script that does your work.
Explore the depth of your UNIX file system,
Watch the exciting lives of GNU toolchain,
And the glorious deeds of grep in all its glory
Learn new REGEX tricks,
And most importantly, you'll make memories that last through your hard drive's lifetime.



Seriously though here is how to use it

./scan.sh {parameter1} {parameter2}

Parameter 1: Required. A plain text file that contains the desired word/patterns on a line per line basis. For example, if I am interested in finding all the occurrences of "Solaris","Linux" and "OSX" and anything that starts with k and ends with ern, in all the local files, I would put then in the file as
> file: terms.in
Solaris
Linux
OSX
k*ern
>

Parameter 2: Optional. Simply used to define extension names for the more detailed output
