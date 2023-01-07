# Practical Session 5: Table Evaluations

## Features

Cheatcheats for content sorting from file tables:

- Generic shell commands in `tasks.sh`
- Linked shell commands in `compex_tasks.sh`

## Output

### Complex Task

```bash
Number of lines of the file friends:
4

File content sorted by name alphabetically:
ABC         def     01234   Pilzstadt       Pilzlobweg          1
CGI         web     00224   Obstdorf        Birnental           4
Dieter      Hans    78902   ABC-Hain        Birkenallee         67
Google      chief   12345   GoogleTown      Low Drive           1
Loew        Dieter  09648   Mittweida       Technikumplatz      14

File content sorted by postal code numerically:
CGI         web     00224   Obstdorf        Birnental           4
ABC         def     01234   Pilzstadt       Pilzlobweg          1
Loew        Dieter  09648   Mittweida       Technikumplatz      14
Google      chief   12345   GoogleTown      Low Drive           1
Dieter      Hans    78902   ABC-Hain        Birkenallee         67

File content by name, but only display of the first two fields:
ABC         def
CGI         web
Dieter      Hans
Google      chief
Loew        Dieter

Sorted content of the fields for postal code and location into postal_code.

Search file friends for entries for the name Meier:
Loew    Dieter  09648   Mittweida   Technikumplatz  14
Dieter  Hans    78902   ABC-Hain    Birkenallee     67
```

### Task

```bash
Sorting by alphabetical order, result output to friend_location.

Alphabetical sort without upper/lowercase distinction to friend_location_2.

Sort by alphabet order with respect to the location:
Dieter      Hans    78902   ABC-Hain    Birkenallee     67
Google      chief   12345   GoogleTown  Low Drive       1
Loew        Dieter  09648   Mittweida   Technikumplatz  14
CGI         web     00224   Obstdorf    Birnental       4
ABC         def     01234   Pilzstadt   Pilzlobweg      1

Replacing all lowercase with uppercase letters and save to friends_upper.

Removing all TAB characters from friends and save to friends_wo_tab.

How many entries contain the name Dieter?
2

How many entries contain the name Lo regardless of upper/lowercase?
3

All complete lines containing the name Dieter
Loew    Dieter  09648   Mittweida   Technikumplatz  14
Dieter  Hans    78902   ABC-Hain    Birkenallee     67

Search of sys in two files: friends and friend_location:
friends:            Loew    Dieter  09648   Mittweida   Technikumplatz  14
friends:            Google  chief   12345   GoogleTown  Low Drive       1
friend_location:    Google  chief   12345   GoogleTown  Low Drive       1
friend_location:    Loew    Dieter  09648   Mittweida   Technikumplatz  14

All regular files with owner rights rwx:
-rwxr-xr-x  1 fhildeb  staff   222  7 Jan 14:24 friends

Files which have read permission for everyone:
-rw-r--r--  1 fhildeb  staff  1421  7 Jan 14:25 README.md
-rw-r--r--  1 fhildeb  staff   606  7 Jan 13:22 complex_task.sh
-rw-r--r--  1 fhildeb  staff   223  7 Jan 14:33 friend_location
-rw-r--r--  1 fhildeb  staff   223  7 Jan 14:33 friend_location_2
-rwxr-xr-x  1 fhildeb  staff   222  7 Jan 14:24 friends
-rw-r--r--  1 fhildeb  staff   222  7 Jan 14:33 friends_upper
-rw-r--r--  1 fhildeb  staff   198  7 Jan 14:33 friends_wo_tab
-rw-r--r--  1 fhildeb  staff    97  7 Jan 13:22 postal_code
-rw-r--r--  1 fhildeb  staff  2062  7 Jan 14:33 tasks.sh
```
