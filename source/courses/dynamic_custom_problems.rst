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
The below format should be output to stdout as a JSON string:

::

    {
        description: "<YOUR PROBLEM DESCRIPTION>",
        description_format: "[markdown]",
        data: "<ASSOCIATED DATA FOR PROBLEM>",
        data_format: "[input, mc, image]"
    }

- description
    Text describing the problem.

- description_format  (Optional)
    - default
        The description will be rendered in a pre element. 
    
    - markdown    
        The problem description will be rendered as markdown with MathJax support.

- data  (Optional)
    JSON encod-able object 

- data_format  (Optional)
    - image
        If set, expects the data attribute to be of the form:
        
        ::

            {
                base64_str: "",
                mime_content_type: ['jpeg', 'png', ...]
            }
        
    - input
        Not yet supported
    
    - mc
        Not yet supported


