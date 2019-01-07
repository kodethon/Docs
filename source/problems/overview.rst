********
Overview
********

Description
===========

A problem is what users will be providing solutions for. Each assignment shares settings from the **Assignment Settings** 
i.e. All problems in an assignment will have the same start and end time.

Problem Types
================

We currently support four types of problems:

    1. Diff
    2. Custom
    3. Multiple Choice
    4. Free Response

File Structure
==============

The files can be accessed by clicking on the the **Editor** section as highlighted in red below.

.. figure:: ../static/courses/problems.editor.PNG
    :align: center
    :figwidth: 100%

    **Figure 1.** Editor section 

Custom
------

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

