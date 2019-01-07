********
Overview
********

Description
===========

A problem is what users will be providing solutions for. Each assignment shares settings from the **Assignment Settings** 
i.e. All problems in an assignment will have the same start and end time.

Problem Types
================

We currently support three types of programming problems:

    1. Diff
    2. Custom
    3. Dynamic 

General Settings
================

.. cmdoption:: Title

The name of the problem

.. cmdoption:: Quesiton Prompt

Should provide information on what the problem is about and how to submit.

.. cmdoption:: Points

How much the problem is worth. The total points for the assignment will be the sum of points for each problem.

.. cmdoption:: Execution Time

To limit how long the submission can run for, you can specify a max execution time in
seconds. The max execution time will be divided evenly between each test case. For example, if the max execution time was 10 seconds and there are 10 test cases, then each
test case gets 1 second of execution time. 

.. cmdoption:: Period
   
To limit the rate which a submission can be made, you can specific a time in seconds.
The submitter will receive an error message denoting how much time they have left
before they can submit again.

.. cmdoption:: Enable Inline Editor

The inline editor is accessed by clicking on the **Solve Here** button in the submission view. It allows for direct editing and submission of code.

.. cmdoption:: Enable Upload

Accessed by clicking on the **Upload** button in the submission view. Allows for a single file or a zip of files to be submitted.

.. cmdoption:: Enable Github

Accessed by clicking on the **Submit From Github** button in the submission view. Allows for a Github repository to be submitted.

.. cmdoption:: Enable CDE

Accessed by clicking on the **Submit from Editor** button in the submission view. Allows for files to be submitted from Kodethon's online editor.


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

Accessing Problem Files
=======================

The files can be accessed by clicking on the the **Editor** section as highlighted in red below.

.. figure:: ../static/courses/problems.editor.PNG
    :align: center
    :figwidth: 100%

    **Figure 1.** Editor section 

