# Automated Readability Index
## Description
The automated readability index is a readability test for texts by analyzing their characters, words, and sentences. And this shell script is to do the same. 

*Automated Readability Index formula:* 

4.71 x (characters/words) + 0.5 x (words/sentences) – 21.43.
## Requirements
- Unix environment
- Bash shell
## Basic Working
- Provide a provision to enter a file name.
- Check if the file already exists in the directory for further procedures.
- Calculating sentence count, word count, and character count using **`wc`**.
- Applying these counts to the automated readability index equation to find the index value.
- Used **"case"** for getting the corresponding grade for the value obtained through the calculation of automated readability index and showed the output.
## Challenges faced and Solutions

- Many issues were faced during the development process. One important challenge was accurately counting the number of sentences due to the limitations of **`wc -l`**, which only counts newlines.This was overcome by using **`grep -o`** to get sentences wich end with '. ! ?'

- Additionally, faced problem while preparing condition check. To resolve this,I referred shell scripting lecture notes prepared by me on the previous class .From this i got the idea of providing condition to the case.

- Furthermore ,referred man wc for getting more idea and to find difference in **`wc -l`**,**`wc -w`**,**`wc -m`**.


## Conclusion
In conclusion, the process of writing this code helps me get familiar with shell scripting and understand several commands.Moreover, it provides a proper awareness of the error correction process when writing code.
