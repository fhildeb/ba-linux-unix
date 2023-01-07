# Practical Session 8: System Data Usage

## Features

Program to output current days of the week and the date. In addition, there is the feature to also evaluate the current directory and print the user data. The application can be restarted as often as desired via a parameter check.

## System Data 1

### Input

```bash
bash sysdata_1.sh
```

### Output

```bash
Today is Saturday, the 07. January 2023

My current directory is "/Users/fhildeb/develop/ba-unix-bash/08-sys-data"
I am registered as "fhildeb" at the host "Felixs-MBP"
The terminal type is "xterm-256color"
There are currently 2 authorized users logged in on this computer
```

## System Data 2

> In case there are is more than one or a wrong parameter, the application will close with a custom warning message.

### Short Version

```bash
bash sysdata_2.sh
```

```bash
Today is Saturday, the 07. January 2023
```

### Long Version

```bash
bash sysdata_2.sh -L
```

```bash
Today is Saturday, the 07. January 2023

My current directory is "/Users/fhildeb/develop/ba-unix-bash/08-sys-data"
I am registered as "fhildeb" at the host "Felixs-MBP"
The terminal type is "xterm-256color"
There are currently 2 authorized users logged in on this computer
```

## System Data 3

> In case there are is more than one or a wrong parameter, the application will close with a custom warning message. The final version also implements a way automatically stay within the scirpt and restart it.

### Short Version

```bash
bash sysdata_3.sh
```

```bash
Today is Saturday, the 07. January 2023

Would you like to repeat the program? [y/n]
```

### Long Version

```bash
bash sysdata_3.sh -L
```

```bash
Today is Saturday, the 07. January 2023

My current directory is "/Users/fhildeb/develop/ba-unix-bash/08-sys-data"
I am registered as "fhildeb" at the host "Felixs-MBP"
The terminal type is "xterm-256color"
There are currently 2 authorized users logged in on this computer

Would you like to repeat the program? [y/n]
```
