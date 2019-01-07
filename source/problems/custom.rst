******
Custom
******

.. contents:: Table of Contents

Description
===========

Custom problems allow the creator to have **full control** on how submissions are scored. 
Please be aware that the specified test command will be run as the Linux user **nobody**. Extra caution should be made
to ensure that proper read and write permissions have been set prior to submission.

Settings
========

.. cmdoption:: Test Command

The test command should be a UNIX shell command used to initiate testing. 
This command will be run once from the **autograder** folder as shown in the next section.
The test command print to stdout a JSON string denoting the submissions results or write the JSON string to **submission/results.json**

.. figure:: ../static/courses/create-custom-scoring-settings.PNG
    :align: center
    :figwidth: 100%

    **Figure 1.** Custom problem scoring settings view

Submission File Structure
=========================
 
Below is an outline of the file structure of a submission.
Please note that exact path of the submission will be determined after submission is made and will
be placed under **/home/kodethon/.staging**.

.. code-block:: yaml

    metadata.json
    autograder/
      FILES_IN_PROBLEM_AUTOGRADER_FOLDER
    output/
      stdout
      stderr
    submission/
      SUBMISSION_FILES

autograder
^^^^^^^^^^
The specified **test command** will be executed from within the autograder folder. 
All files in **/home/kodethon/PROBLEM_NAME/autograder** will be exposed here as a soft link. 

output/stdout
^^^^^^^^^^^^^
Contains the stdout of the test command.

output/stderr
^^^^^^^^^^^^^
Contains the stderr of the test command.

submission
^^^^^^^^^^
When a submission is made, Kodethon will place the submission files in the **submission** folder. That is, references to the submission files should be made 
via **../submission/FILE_NAME**. 

metadata.json
^^^^^^^^^^^^^
The metadata.json file will be of JSON format as shown below:

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

Expected Test Command Output
============================

The output can either be directly output to stdout or written to *results.json* in the submissions folder.

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
