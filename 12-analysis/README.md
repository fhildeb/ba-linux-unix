# Practical Session 12: Phonebook Data Analysis

## Features

- `dat_size.sh`: Program to determine files, its sizes and the directory properties from a path given by the user.
- `phone.sh`: Phonebook program that shows all entries from the phonebook file and can search, add and add contacts from the list. The application also has custom error messages for parameters and list entries.

## Data Size

```bash
bash dat_size.sh /Users/fhildeb/develop/test-folder
```

```bash
The directory /Users/fhildeb/develop/test-folder has a size of 2728 bytes.
There are 4 files/directories included.

file1.png 952 bytes.
file2.png 248 bytes.
new-folder 1336 bytes.
test.png 176 bytes.
```

## Phonelist

### Read Entries

```bash
bash phone.sh -p phone_list.dat
```

```bash
Lisa Nielpferd 0341-3562349
Moritz Maus 089-78262138
Elli Einhorn 0800-1232340
Lara laus 0221-3562349
Mara Maulwurf 089-78992138
Elli Eidechse 0800-1200340
```

### Search for Contact

```bash
bash phone.sh -s 'Elli' phone_list.dat
```

```bash
Matching:
Elli Einhorn 0800-1232340
Elli Eidechse 0800-1200340
```

### Insert new Contact

```bash
bash phone.sh -e 'Hans,Hase:123123-789789' phone_list.dat
```

```bash
Done!
```

### Delete Contact

```bash
bash phone.sh -d 'Hans' phone_list.dat
```

```bash
The specified name or number matches:
Hans Hase 123123-789789
Should the user be discarded? [y/n]
n


The specified name or number matches:
Hans Haas 22223-789789
Should the user be discarded? [y/n]
y

The user Hans Haas 22223-789789 is no longer stored!
```
