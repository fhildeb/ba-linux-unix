# Practical Session 2: File System

## Features

Cheatcheats for shell terminal commands about:

- Injecting file contents in `file.sh`
- Creating hardlinks in `hardlinks.sh`
- Operating with pipes in `pipes.sh`
- Message redirection in `redirection.sh`
- Changing file rights in `files.sh`
- File search in `search.sh`

## Outputs

### Files

```bash
Created file new_text
Wrote date into new_text
Copied and renamed new_text to copy_text
Moved copy_text to clone_text

Inode number of files:
  930151 .
  930100 ..
10421506 README.md
10447102 clone_text
  930153 files.sh
  930154 hardlinks.sh
10447056 new_text
  930155 pipes.sh
  930156 redirection.sh
  930157 rights.sh
  930158 search.sh

Inode number of current directory:
930151 .

Removed files new_text and clone_text
```

### Hardlinks

```bash
Created hardlink files-hardlink.sh of files.sh

Removed hardlink files-hardlink.sh
```

### Pipes

```bash
Folder contents in reverse:
search.sh
rights.sh
redirection.sh
pipes.sh
ls-file
hardlinks.sh
files.sh
README.md

Printed contents to ls-file

Removed ls-file
```

### Rights

```bash
Current user mask: 0022
```

### Search

```bash
Searched regular files within this folder:
./pipes.sh
./search.sh
./hardlinks.sh
./rights.sh
./README.md
./files.sh
./redirection.sh

Searched for within this folder:
find: -Printed: unknown primary or operator

Type of files.sh:
files.sh: ASCII text
```
