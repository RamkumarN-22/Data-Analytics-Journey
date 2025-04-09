Data Analytics & Python Basics Notes

Intro to Data Analytics

Data Analytics is the process of examining, transforming, and interpreting data to uncover patterns, insights, and trends that drive informed decision-making.

Types of Analytical Elements

1. Patterns

Repeated structures or behaviors in data

Help identify trends like seasonality or associations

2. Insights

Actionable conclusions drawn from patterns

Help in making decisions (e.g. boost Monday sales, target age groups)

3. Trends

Direction of data over time

Help in strategic forecasting

Data Analytics Workflow

1. Data Collection

Sources: databases, APIs, web scraping, spreadsheets

2. Data Cleaning

Remove duplicates, handle missing values, standardize formats

3. Data Exploration

Summary stats, visualizations, outlier detection

4. Data Analysis

Statistical methods, exploratory data analysis

5. Data Modeling

Apply ML algorithms: regression, classification, clustering

6. Data Interpretation & Insights

Translate findings into actionable business insights

7. Data Visualization & Reporting

Dashboards using tools like Power BI, Tableau, Matplotlib

8. Decision-Making & Action

Implement strategies and recommendations

What is Python?

Python is a programming language.

What is a Programming Language?

A programming language is a set of instructions that a user writes to tell a computer how to perform a task.

Why Python?

Simple and easy to learn.

Widely used in data analytics with extensive libraries like:

Pandas, NumPy, Matplotlib, Scikit-learn

Used for: data manipulation, cleaning, analysis, visualization, and machine learning modeling.

Reliable, efficient, and time-saving.

Large, active, and helpful open-source community.

Many companies seek candidates with Python knowledge.

Easy to read and understand.

Interpreted language: helps with quick error handling and testing.

In-built Methods

print(222)               # Display output
print("Ramkumar")        # Python is case-sensitive
input("Enter your name:") # Takes user input from console
type(d)                 # Checks datatype of variable
a = str(a)              # Type casting to string

Variables

Used to store data.

Rules:

Should not start with numbers or symbols.

Should not be named after Python methods or keywords.

Use meaningful, descriptive names.

Multi-word Variable Naming:

camelCase  → studentName

PascalCase → StudentName

snake_case → student_name

Assigning Multiple Variables:

x, y, z = 5, 10, 15

Data Types

Integer → int → whole numbers

Float → float → numbers with decimals

String → str → text in ' ', " "

Boolean → bool → True or False

Note:

Alphabetic characters or symbols can't be converted to numeric data types.

Strings can be converted to integers only if they contain numeric values.

String Methods

len(A)              # Returns number of characters
A.upper()           # Converts to uppercase
A.lower()           # Converts to lowercase
A.capitalize()      # Capitalizes first letter
A.title()           # Capitalizes first letter of each word
A.strip()           # Removes spaces from both sides
A.lstrip()          # Removes spaces from left side
A.rstrip()          # Removes spaces from right side
A.replace("old", "new")  # Replaces a substring
A.split("delimiter")     # Splits string into list
A.startswith("sub")      # Checks if string starts with substring
A.endswith("sub")        # Checks if string ends with substring

String Indexing

Indexing helps identify position of characters.

Positive Indexing: starts at 0 (Left → Right)

Negative Indexing: starts at -1 (Right → Left)

A.index('a') # Returns index of first occurrence

Use () for methods, [] for indexing.

Slicing Syntax

string[start : stop : step]

start: Starting index

stop: Ending index (exclusive)

step: Interval

To reverse a string:

A[::-1] # Reverses the string

Operators

Arithmetic Operators:

+  # Addition
-  # Subtraction
*  # Multiplication
/  # Division
%  # Modulo (remainder)
// # Floor division (removes decimal part)
** # Exponentiation (a^b)

Assignment Operators:

=, +=, -=, *=, /=, %=, **=, //=  # Used to update values directly
# Example:
a = a + 5
# is same as:
a += 5

Comparison Operators:

> < >= <= == !=  # Return Boolean values
# Single '=' assigns value; '==' compares values

Logical Operators:

and  # All comparisons must be true
or   # Any one comparison must be true
not  # Reverses the boolean value

Control Flow

If-Else Conditions:

if condition:
    # do something
elif another_condition:
    # do something else
else:
    # do if all above fail

Loops:

# For Loop
for item in iterable:
    # do something

# While Loop
while condition:
    # do something

# Loop Controls
break     # Exit loop
continue  # Skip current iteration
pass      # Do nothing

🧠 "Focus is choosing what to do, and awareness is choosing how to be."

This document is a living note combining Python fundamentals with essential data analytics knowledge. Continuously updated as you grow.

