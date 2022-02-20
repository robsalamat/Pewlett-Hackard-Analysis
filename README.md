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




### C. Retiring Titles

A breakdown of these employees by title:



More than half **(64%)** of them are **senior engineers/ senior staff.**


### D. Mentorship Eligibility

Filtering the employees based on those who were born in the year 1965, a mentorship-eligibility table was created below:

![](Pewlett-Hackard_Analysis_Folder/mentorship_eligibility.PNG)

There were a total of **1,549 employees eligible for mentorship.**


## III. Summary
Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."

How many roles will need to be filled as the "silver tsunami" begins to make an impact?

Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

The summary addresses the two questions and contains two additional queries or tables that may provide more insight
