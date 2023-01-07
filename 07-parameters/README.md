# Practical Session 7: Parameter Handling

## Features

- Cheatcheats about reading and exporting program parameters in `params_*.sh`
- Program to search and ouput amounts of words from processes `restrict.sh`
- Program to search files in directories and subdirectories `search.sh`

## Parameters 1

### Input

```bash
bash params_1.sh it is a beautiful day
```

### Output

```bash
Anzahl der an das Skript übergeb. Parameter:  5
$1:  this
$2:  is
$3:  a
$4:  beautiful
$5:  day
```

## Parameters 2

### Input

```bash
bash params_2.sh thats so cool right
```

### Output

```bash
4 thats so cool
3 thats not cool
3 text has changed
```

## Restrict

### Output

```bash
  21 ttys
  12 zsh
   6 v
   4 il
   4 c
   4 bin
   3 users

   ...

   2 sort
   1 out
```

## Search

Example Search for PNG pictures within the Downlaod folder.

### Input

```bash
bash search.sh 'n' '*.png' $HOME/Downloads/
```

### Output

```bash
/Users/fhildeb/Downloads/
Binary file /Users/fhildeb/Downloads/pic1.png matches
Binary file /Users/fhildeb/Downloads/pic2.png matches
Binary file /Users/fhildeb/Downloads/pic3.png matches
Binary file /Users/fhildeb/Downloads/searchfile/test1.png matches
Binary file /Users/fhildeb/Downloads/searchfile/test2.png matches
Search ended
```
