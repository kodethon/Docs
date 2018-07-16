******
Custom
******

.. contents:: Table of Contents

Description
===========

Custom problems allows the instructor to have full **control** on what to do when the student submits files for grading. 
Please be aware that the specified test command will be run as the Linux user **nobody**. Extra caution should be made
to ensure that proper read and write permissions have been set prior to student submission.

Components
==========

Additional Settings
^^^^^^^^^^^^^^^^^^^

.. cmdoption:: Test Command

The test command should be a UNIX shell command used to initiate testing. 
This command will be run once from the autograder folder as displayed in the next section.

Problem File Structure
^^^^^^^^^^^^^^^^^^^^^^

When the student submits their files for grading, Kodethon will place their submission in the *submission* folder. The specified
test command will then be executed from within the autograder folder. That is, references to the student submission files should be made 
via *../submission/FILE_NAME*

.. code-block:: yaml

    metadata.json
    autograder/
      TEST_SCRIPTS_IN_PROBLEM_FOLDER
    output/
      stdout
      stderr
    submission/
      STUDENT_SUBMISSION_FILES

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

Expected Output
^^^^^^^^^^^^^^^

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
