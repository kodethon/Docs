*******************
Dynamic Problems
*******************

.. contents:: Table of Contents

Description
================

Dynamic problems allows an instructor to define the problem description for each student. The instructor
can specify their dynamic problem generation script in **On Start Command** setting for **Custom** problems. The 
**On Start Command** will be triggered when the student copies the assignment or when they view the assignment.

Metadata
================    
The path of the metadata file will be passed in a the last argument to your *On Start Command*. 
The file will be of JSON format as shown below:

::

    {
        first_name: "John",
        last_name: "Doe",
        email: "sample@gmail.com",
        timestamp: "2017-11-26 23:21:02 -0800",
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
    
Expected Output
================
The provided description will be written to a README file for the user.

::

    {
        description: "<YOUR PROBLEM DESCRIPTION>"
    }

Planned Expected Output
================

::

    {
        description: "<YOUR PROBLEM DESCRIPTION>",
        display_format: "(input, mc, program)",
        metadata: "<ASSOCIATED DATA FOR DISPLAY FORMAT>"
    }