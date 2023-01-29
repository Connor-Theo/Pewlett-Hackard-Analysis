# Pewlett-Hackard-Analysis

## Purpose:
This SQL project formed using basic to intermediate SQL querying, was used to help a major corporation Identify and prepare for the population of team members predicted to retire soon.  By joining and filtering multiple data tables together I was able to prepare a clean table for upper management to review to help ease the transition of said team members.

## Results
With the use of an ERD (Entity-Relationship Diagram) used to data model(fig 1) or plan a project, I first drew up a game plan for how to dissect the data.  The first task was to create a Retirement Titles table that holds all the titles of employees who were born between January 1, 1952, and December 31, 1955. This would allow me to identify the list of employees who were close to retirement.  However, once this is done, I noticed that duplicate entries were becoming an issue, to resolve this I used a ‘DISTINCT ON’ statement which will return only a single unit based on how the table is filtered. (Fig 2)
Next up was finding all current employees who were born between January 1, 1965, and December 31, 1965. And placing them into a ‘mentorship-eligibility’ table, and using a count function to count the number of eligible team members, and then filtering them by title and sorting them in descending order. (Fig 3)

Fig 1:

![EmployeesDB](https://user-images.githubusercontent.com/101610050/167324123-b40def54-8421-439b-9ae0-eb95c14ffe1a.png)

Fig 2:

![image](https://user-images.githubusercontent.com/101610050/167324041-3cc4766e-75f3-45e9-bfa0-fea6a6d2759d.png)
 

Fig 3:

![image](https://user-images.githubusercontent.com/101610050/167324052-66c04888-38d6-419d-9636-439cdc416edb.png)


## Summary
The conclusion of my final table showed results you may expect, a large sum of senior level employees are eligible for mentorship programs, which will help Pewlett-Hackard strategize for their next wave of employees. The table can we used consistently and whenever new data is introduced it will be able to update as needed.
