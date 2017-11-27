*******************
Grading
*******************

.. contents:: Table of Contents

Description
================

Grading of an assignment currently the responsibility of the students to complete before the assignment deadline. Instructions for
grading an assignment will be provided in the default problem **how-to-grade.txt** file. 
We plan to support instructor initiated grading in the future. 
 
Expected Output
================

::

    {
        score: "<RAW SCORE (NON-PERCENT)>",
        feedback: "<FEEDBACK RETURNED TO STDENTS>",
        output: "<PROGRAM OUTPUT (OPTIONAL)>",
        cache: "<DATA TO SAVE (OPTIONAL)>"
    }    
    
Metadata
================    
The path of the metadata file will be passed in a the last argument to your *On Start Command*. 
The file will be of JSON format as shown below:

::

    {
        first_name: "John",
        last_name: "Doe",
        email: "sample@gmail.com",
        submission_time: "2017-11-26 23:21:02 -0800",
        previous_submissions: [
            {
                output: "Hello World!",
                cache: "<DATA DEFINED BY YOU>",
                remaining_attempts: 5,
                created_at: "2017-11-25 23:21:02 -0800",
                score: 100
            },
            ...
        ]
    }    