*******************
Custom Grading
*******************

.. contents:: Table of Contents

Description
================

Expected Output
================

::

    {
        score: "<RAW SCORE (NON-PERCENT)>",
        output: "<PROGRAM OUTPUT (OPTIONAL)>",
        cache: "<DATA TO SAVE (OPTIONAL)>",
        tests: [{
            "score": 1.0, 
            "max_score": 1.0, 
            "name": "<TEST NAME>",
            "output": "<TEST CASE OUTPUT>",
            "visibility": "visible" 
        }] // Optional
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
        deadline: "2017-11-30 23:21:02 -0800",
        previous_submissions: [
            {
                output: "Hello World!",
                cache: "<DATA DEFINED BY YOU>",
                remaining_attempts: 5,
                created_at: "2017-11-25 23:21:02 -0800",
                score: 100
            },
            ...
        ],
        on_start: {
            "description": "<DESCRIPTION OF PROBLEM>",
            "created_at": "2017-12-08T05:31:49.093Z",
            "updated_at": "2017-12-13T11:19:11.970Z",
            "data": "<DATA YOUR PROBLEM MAY NEED>"
        }
    }    
