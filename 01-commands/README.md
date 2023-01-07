# Practical Session 1: Commands

## Features

Cheatcheats for shell terminal commands about:

- calendar functions in `calendar.sh`
- the operating system and user in `commands.sh`
- file contents in `contents.sh`
- searching directories in `directory.sh`
- creating and injecting into files in `files.sh`

## Terminal Outputs

### Calendar

```bash
Current calendar month:
    Januar 2023
So Mo Di Mi Do Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31


Calendar of year 2019:
                            2019
       Januar               Februar                 März
So Mo Di Mi Do Fr Sa  So Mo Di Mi Do Fr Sa  So Mo Di Mi Do Fr Sa
       1  2  3  4  5                  1  2                  1  2
 6  7  8  9 10 11 12   3  4  5  6  7  8  9   3  4  5  6  7  8  9
13 14 15 16 17 18 19  10 11 12 13 14 15 16  10 11 12 13 14 15 16
20 21 22 23 24 25 26  17 18 19 20 21 22 23  17 18 19 20 21 22 23
27 28 29 30 31        24 25 26 27 28        24 25 26 27 28 29 30
                                            31

       April                  Mai                   Juni
So Mo Di Mi Do Fr Sa  So Mo Di Mi Do Fr Sa  So Mo Di Mi Do Fr Sa
    1  2  3  4  5  6            1  2  3  4                     1
 7  8  9 10 11 12 13   5  6  7  8  9 10 11   2  3  4  5  6  7  8
14 15 16 17 18 19 20  12 13 14 15 16 17 18   9 10 11 12 13 14 15
21 22 23 24 25 26 27  19 20 21 22 23 24 25  16 17 18 19 20 21 22
28 29 30              26 27 28 29 30 31     23 24 25 26 27 28 29
                                            30

        Juli                 August              September
So Mo Di Mi Do Fr Sa  So Mo Di Mi Do Fr Sa  So Mo Di Mi Do Fr Sa
    1  2  3  4  5  6               1  2  3   1  2  3  4  5  6  7
 7  8  9 10 11 12 13   4  5  6  7  8  9 10   8  9 10 11 12 13 14
14 15 16 17 18 19 20  11 12 13 14 15 16 17  15 16 17 18 19 20 21
21 22 23 24 25 26 27  18 19 20 21 22 23 24  22 23 24 25 26 27 28
28 29 30 31           25 26 27 28 29 30 31  29 30


      Oktober               November              Dezember
So Mo Di Mi Do Fr Sa  So Mo Di Mi Do Fr Sa  So Mo Di Mi Do Fr Sa
       1  2  3  4  5                  1  2   1  2  3  4  5  6  7
 6  7  8  9 10 11 12   3  4  5  6  7  8  9   8  9 10 11 12 13 14
13 14 15 16 17 18 19  10 11 12 13 14 15 16  15 16 17 18 19 20 21
20 21 22 23 24 25 26  17 18 19 20 21 22 23  22 23 24 25 26 27 28
27 28 29 30 31        24 25 26 27 28 29 30  29 30 31


Calendar of october 2019:
    Oktober 2019
So Mo Di Mi Do Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29 30 31


Current date and time:
Sa  7 Jan 2023 12:03:39 CET
```

### Commands

```bash
My login name:
fhildeb

All logged-in users:
fhildeb          console       3 Jan 08:05
fhildeb          ttys001       6 Jan 23:00
fhildeb          ttys002       7 Jan 11:59

User and group ID's:
uid=501(fhildeb) gid=20(staff) groups=20(staff)
12(everyone)
61(localaccounts)
79(_appserverusr)
80(admin)
81(_appserveradm)
98(_lpadmin)
701(com.apple.sharepoint.group.1)
33(_appstore)
100(_lpoperator)
204(_developer)
250(_analyticsusers)
395(com.apple.access_ftp)
398(com.apple.access_screensharing)
399(com.apple.access_ssh)
400(com.apple.access_remote_ae)

Current path:
/Users/fhildeb/develop/ba-unix-bash/01-commands

Home Directory:
/Users/fhildeb
```

### Contents

```bash
File contents of commands.sh:

echo "My login name: "
whoami
echo -e ""
echo "All logged-in users: "
who
echo -e ""
echo "User and group ID's: "
id | tr ',' '\n'
echo -e ""
echo "Current path: "
pwd
echo -e ""
echo "Home Directory: "
echo "$HOME"

Continious display of file contents:

echo "My login name: "
whoami
echo -e ""
echo "All logged-in users: "
who
echo -e ""
echo "User and group ID's: "
id | tr ',' '\n'
echo -e ""
echo "Current path: "
pwd
echo -e ""
echo "Home Directory: "
echo "$HOME"
echo "Current calendar month: "
cal
echo -e ""
echo "Calendar of year 2019: "
cal 2019
echo -e ""
echo "Calendar of october 2019: "
cal 10 2019
echo -e ""
echo "Current date and time: "
date
First 10 Lines of commands.sh:

echo "My login name: "
whoami
echo -e ""
echo "All logged-in users: "
who
echo -e ""
echo "User and group ID's: "
id | tr ',' '\n'
echo -e ""

First 3 Lines of commands.sh:

echo "My login name: "
whoami

Last 10 Lines of commands.sh:
who
echo -e ""
echo "User and group ID's: "
id | tr ',' '\n'
echo -e ""
echo "Current path: "
pwd
echo -e ""
echo "Home Directory: "
echo "$HOME"

Last 3 Lines of commands.sh:
echo -e ""
echo "Home Directory: "
echo "$HOME"

Wordcount of commands.sh
15 46 263 commands.sh

Rows in commands.sh
15

Words in commands.sh
46

Characters in commands.sh
263
```

### Directory

```bash
Files in current folder:
README.md
calendar.sh
commands.sh
contents.sh
directory.sh
files.sh
new_one

Root directory:
Applications
Library
System
Users
Volumes
bin
cores
dev
etc
home
opt
private
sbin
tmp
usr
var

Parent directory:
01-commands
02-file-system
03-vi-editor
04-transformation
05-table
06-system
07-parameters
08-sys-data
09-game
10-diagram
11-report
12-analysis
README.md

All files in current folder:
.
..
README.md
calendar.sh
commands.sh
contents.sh
directory.sh
files.sh
new_one

Extended file info for current folder:
total 56
-rw-r--r--  1 fhildeb  staff  6242  7 Jan 12:22 README.md
-rw-r--r--  1 fhildeb  staff   206  7 Jan 12:03 calendar.sh
-rw-r--r--  1 fhildeb  staff   263  7 Jan 12:09 commands.sh
-rw-r--r--  1 fhildeb  staff   928  7 Jan 12:18 contents.sh
-rw-r--r--  1 fhildeb  staff   850  7 Jan 12:24 directory.sh
-rw-r--r--  1 fhildeb  staff   441  5 Jul  2022 files.sh
drwxr-xr-x  2 fhildeb  staff    64  7 Jan 12:21 new_one

Mark executable files in current folder:
README.md
calendar.sh
commands.sh
contents.sh
directory.sh
files.sh
new_one/

Files in current folder sorted by modification:
directory.sh
README.md
new_one
contents.sh
commands.sh
calendar.sh
files.sh

Folders new_one new_two created
Folder new_one new_two removed
```

### Files

```bash
Created file new_text
Wrote pwd in new_text
Added name into new_text
Added custom text into new_text

Show new_text:
/Users/fhildeb/develop/ba-unix-bash/01-commands
fhildeb
custom text

new_text was removed
```
