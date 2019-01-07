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
The test command should either print to stdout a JSON string denoting the submissions results or write the JSON string to **submission/results.json**

.. figure:: ../static/courses/create-custom-scoring-settings.PNG
    :align: center
    :figwidth: 100%

    **Figure 1.** Custom problem scoring settings view

.. cmdoption:: Enable HTML Render

Allows for HTML and CSS files to be rendered as a webpage in the inline editor. Will only be accessible if **Enable Inline Editor** is enabled.

Problem File Structure
======================

A custom problem allows you to upload a zip file containing relevant test files. 
When a custom problem is created, we will generate the scaffold below inside the problem folder.

.. code-block:: yaml

    PROBLEM_NAME/
        autograder/
        handout/
        .snapshots/
        submission/
        .submissions/
 

- autograder/
    The folder that contains all files needed for scoring a submission. 

- handout/
    The handout folder should contain the files you expect your users to have. It must contain a file called README.

- .snapshots/
    The hidden snapshots folder is where all submissions are stored. 

- submission/
    The test folder can optionally contain a test submission that can be used to test scoring.

- .submissions/
    The hidden submissions folder is where the latest submission will be stored. 
    Inside each submission folder will be the submitted files along with an output file with your test script's output.

Expected Response
=================

The output can either be directly output to stdout or written to **results.json** in the submissions folder.

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
        }] // Optional
    }

- score (Required)

    An float that will represent the overall score for the submission.

- output (Optional)

    A string that will be displayed as the submission result.

- cache (Optional)

    Can be used to save data for grading the next submission.

- tests (Optional)
    
    An array of cases that provides additional information regarding how the submission was graded.

Sample Test Script
==================

.. code-block:: shell

    ###
    # Below is an outline of how to write a custom script
    ###

    # The current directoy is 'autograder'
    # The submitted files are located in ../submission
    submission_path=../submission

    # Step 1.
    # Let's assume some test files (TEST_FILES) need to be linked into the submission folder
    ln -sf TEST_FILES $submission_path

    # Step 2.
    # Move into the submission folder
    cd $submission_path

    # Step 3.
    # Let's assume the submission is called 'submission.py'
    # and we have a script to convert output to Kodethon's expected output called 'adapter.py'
    #   a. Run the submission
    #   b. Format the output to something Kodethon expects, see https://docs.kodethon.com/problems/custom.html
    #   c. Write results to results.json
    python submission.py | python adapter.py > results.json
