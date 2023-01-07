# Practical Session 5: Table Evaluations

## Features

Cheatcheats for content sorting from file tables:

- Generic shell commands in `tasks.sh`
- Linked shell commands in `compex_tasks.sh`

## Output

### Table

```bash
Number of lines of the file friends:
4

File content sorted by name alphabetically:
ABC         def     01234   Pilzstadt   Pilzweg         1
CGI         web     00224   Obstdorf    Birnental       4
Dieter  Hans    78902   ABC-Hain        Birkenallee     67
Google  chief   12345   GoogleTown      First Drive     1
Loew    Dieter  09648   Mittweida       Technikumplatz  14

File content sorted by postal code numerically:
CGI         web     00224   Obstdorf    Birnental       4
ABC         def     01234   Pilzstadt   Pilzweg         1
Loew    Dieter  09648   Mittweida       Technikumplatz  14
Google  chief   12345   GoogleTown      First Drive     1
Dieter  Hans    78902   ABC-Hain        Birkenallee     67

File content by name, but only display of the first two fields:
ABC         def
CGI         web
Dieter  Hans
Google  chief
Loew    Dieter

Sorted content of the fields for postal code and location into postal_code.

Search file friends for entries for the name Meier:
Loew    Dieter  09648   Mittweida       Technikumplatz  14
Dieter  Hans    78902   ABC-Hain        Birkenallee     67
```
