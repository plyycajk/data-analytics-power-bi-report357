# data-analytics-power-bi-report357

## Contents
1. [Description](#description)
    - [Milestone 2 Tasks](#milestone-2-tasks)
        - [Orders Table Transformations](#orders-table-transformations)
        - [Customers table transformations](#customers-table-transformations)
    
    - [Milestone 3 Tasks](#milestone-3-tasks)
        - [Date Table](#date-table)
        - [Data Model](#data-model)
1. [Installation instructions](#installation-instructions)
1. [Usage instructions](#usage-instructions)
1. [File structure](#file-structure)
    - [AICore PowerBI Project CKnight.pbix](#aicore-powerbi-project-cknightpbix)
1. [License information](#license-information)

## Description

In this project I connected to a variety of sources in order to retrieve the required datasets - this included:
- SQL Database (Source of the <i>Orders</i> table)
- Azure Blob Storage (Source of the <i>Stores</i> table)
- A folder of .csv files (Source of the <i>Customers</i> table)

### Milestone 2 Tasks

### Orders table transformations

I transformed the data upon loading - ensuring columns were named in line with PowerBI conventions and data was cleaned. This was particularly the case on the 'Weight' column. This column included a mixture of numerical data (weight values) and the corresponding units: these included kg, g and oz amongst others. Additionally there were some weight values that corresponded to multipacks (i.e. 4 x 100g)

To split out the units from the numerical values, I used the 'Add Column from Examples' function to apply the multiple transformations required. This created the 'Weight Units' column. After this step, I filtered the column and replaced the 'multipack' values with their total weight (i.e. 4 x 100 became 400).

I then created a calculated column in this table that gave a kg value for the weight of the product. This required the following calculations: 
- <b>g &rarr; kg:</b> value in g  ÷ 1000
- <b>ml &rarr; kg</b> (assuming a similar density of that liquid to that of water): value in ml ÷ 1000 
- <b>ounces (oz) &rarr; kg:</b> value in ounces ÷ 35.274 

These transformations were wrapped into a nested IF statement where the required transformation was made based on the value of the unit in the 'Weight unit' column. 

### Customers table transformations

The columns were renamed in line with PowerBI conventions. The "Full Name" column was created by using the "First Name" and "Last Name" columns, merging the data in these with a space as a delimiter.

### Milestone 3 Tasks

### Date table

A data table was created in using the oldest data in the Orders table....

To be completed

### Data model

<b>Data model</b><br>
![Screenshot of Data Model](<Data Model Milestone 3.png>)

### Measures table

A measures table was created with the following measures and formulas

CALCULATE 

NATURALINNERJOIN


### Hierarchies

Date Hierarchy

Geography Hierarchy - use of SWITCH formula

## Installation instructions



## Usage instructions



## File structure

### AiCore PowerBI Project CKnight.pbix.

This is the Power BI file that the tasks up to the end of Milestone 2 was completed in

### AiCore PowerBI Project CKnight - End of Milestone 3.pbix.

This is the Power BI file that the tasks up to the end of Milestone 3 was completed in

## License information

None