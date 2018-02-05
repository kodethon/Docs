*******************
Dynamic Custom Problems
*******************

.. contents:: Table of Contents

Description
================

Dynamic problems are a special type of a custom problem that allows an instructor to define the problem description for each student. 
The instructor can specify their dynamic problem generation script in **On Start Command** setting for **Custom** problems. The 
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
        previous: [
            {
                description: "<PREVIOUS PROBLEM DESCRIPTION>",
                created_at: "2017-11-25 23:21:02 -0800",
                updated_at: "2017-11-25 23:21:02 -0800",
                data: "<PREVIOUS DATA>"
            },
            ...
        ]
    }
    
Expected Output
================
The provided description will be written to a README file for the user.

::

    {
        description: "<YOUR PROBLEM DESCRIPTION>",
        data: "<ASSOCIATED DATA FOR PROBLEM> (Optional)"
    }

Planned Expected Output
================

::

    {
        description: "<YOUR PROBLEM DESCRIPTION>",
        data: "<ASSOCIATED DATA FOR PROBLEM> (Optional)"
        display_format: "(input, mc, program)",
    }
