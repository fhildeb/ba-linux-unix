# Practical Session 10: Diagram Generation

## Features

Generating visual bar charts for 1-5 bars from range 1-20 digits using ASCII characters based on terminal inputs. The application also includes error handling.

## Bar Chart 1: Manual Work

```bash
bash bar_chart_1.sh 5 10 12 7 18
```

```bash
Your Personalized Bar Chart:

^
|*****
|**********
|************
|*******
|******************
--------------------->
```

## Bar Chart 2: Program-based Automation

```bash
bash bar_chart_2.sh
```

```bash
Please enter the number of bars for the diagram:
5
Thank you very much!
Please enter the value for bar 1:
19
Please enter the value for bar 2:
12
Please enter the value for bar 3:
16
Please enter the value for bar 4:
4
Please enter the value for bar 5:
9

Your Personalized Bar Chart:

^
|*******************
|************
|****************
|****
|*********
--------------------->
```

## Bar Chart 3: File-based Automation

```bash
bash bar_chart_2.sh example_chart
```

```bash
Your Personalized Bar Chart based on example_chart:

^
|*
|************
|*******************
|******
|*****************
--------------------->
```
