# The Command Line Cup - Task Completion Guide

This repository documents how I successfully completed **The Command Line Cup** task. Below, you will find the steps I followed to solve the challenges, the commands I used, and the thought process behind each step.

---

## 1. Clone the Repository

To begin, I cloned the GitHub repository containing the task to my local system.

```bash
git clone https://github.com/KshitijThareja/TheCommandLineCup.git
cd TheCommandLineCup
mkdir codes
```

## 2.First Challenge

### Problem:

To find the spell in the directory 0x, where x is the first perfect number. The file name is Spell_0y, where y is the result of differentiating (x² - 7x) with respect to x.

After doing the calculation the solution i got is, 5 .

Navigate to the Spell File:

```bash
cd 06
python3 Spell_05.py
```

The above command executed the Python spell file, which provided the first part of the secret code.

## 3. Second Challenge

### Problem:

To find the spell stored in Spell_0x inside the folder 0y. The digits x and y correspond to the tenths and units place of the atomic number of the element first used to make semiconductors.

After finding the solution, navigating to that directory and by running the file I got the second secreat code

## 4. Third Challenge

### Problem:

Switch to the branch named after the subject taught by Professor Lupin and solve the riddle.

- Switch to the Branch:
  ```bash
  git branch -a
  git checkout Defense_Against_the_Dark_Arts
  ```
- Solve the Riddle:

  - The answer to the riddle is Boggart, a shape-shifting creature.
  - The spell used to fight a Boggart is Riddikulus.

- Copy the Spell File:
  ```bash
  git checkout Defense_Against_the_Dark_Arts Spell_Riddikulus.py
  ```
- Run the Spell File:
  ```bash
  python3 Spell_Riddikulus.py
  ```

## 5. Fourth Challenge

### problem:

Find the spell hidden in the commit logs of the repository.

### Solution:

1. Check Commit Logs:

```bash
git log
```

2. Find the Commit Containing the Spell Name:
   Look for the commit message referencing the spell.

3. Run the Spell File:

## 6. Combine All Parts

## 7. Decode the Secret Code

The final secret code was encoded in Base64. I decoded it using the following command:

```bash
cat finalcode.txt | base64 --decode
```

## This is the way how I solved the task and this are the commands which i used to solve the task.
