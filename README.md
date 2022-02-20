# Pewlett-Hackard-Analysis

## I. Overview of Project

### Background
Pewlett_hackard is looking ahead and preparing itself for the silver tsunami. Using SQL, Bobby was able to provide them with valuable data with who and how many will be retiring in the next few years. 

### Objective
Now, his manager wants him to determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program.



## II. [Analysis and Results](Queries/Employee_Database_challenge.sql)

### A. Retirement Titles
First, the employees' data were filtered by their birth_date. With this, we will know who are retiring or about to retire within the next few years and what title they hold. 

![](Pewlett-Hackard_Analysis_Folder/retirement_titles.PNG)

The table above had **133,776 results**, but this doesn't mean we have that many retirees. A lot of these people who have worked so long with the company had duplicate entries because they have held many titles over the years.


### B. Unique Titles

After excluding those that have already left and filtering using distinct employee numbers, we finally got the number of **90,398 unique employees** with their most recent title:

![](Pewlett-Hackard_Analysis_Folder/unique_titles.PNG)


### C. Retiring Titles

A breakdown of these employees by title:

![](Pewlett-Hackard_Analysis_Folder/retiring_titles.PNG)


### D. Mentorship Eligibility

![](Pewlett-Hackard_Analysis_Folder/mentorship_eligibility.PNG)


## III. Summary
