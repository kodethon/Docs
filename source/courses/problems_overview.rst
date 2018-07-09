*****************
Problems Overview
*****************

.. contents:: Table of Contents 

Problem Types
================

We currently support three types of problems:

    1. Diff
    2. Custom
    3. Multiple Choice

Diff
------------

Settings
^^^^^^^^

.. figure:: ../static/courses/test-suite-settings.PNG
    :align: center
    :figwidth: 100%

    **Figure 2.** Test suite creation view

A diff problem is comprised of test cases. For each test case, you can specify:
    
    1. Standard input
    2. Arguments
    3. Expected answer
    4. Comment

When a student submits their program for grading, Kodethon will **generate a test script** based on the problem settings and test cases. 
For example, if you set standard input to be 'abc' and arguments '1 2 3' for **Test Case 1**, then the generated test command will look like:

::
    
    run main.py 1 2 3 < 1 

The specified standard input 'abc' will be written into a file called '1' and redirected into the student's program.

Structure
^^^^^^^^^

When a diff problem is created, we will generate the scaffold below inside the assignment files.

.. code-block:: yaml

    test-name/
        autograder/
          .answers/
          .inputs/
          .arguments/
          .utils/
        handout/
        .ref/
        .snapshots/
        submission/
        .submissions/
 
- autograder/ 
    The folder that contains all files needed for grading a submission. 

- autograder/.answers/
    The folder where answer files are stored after being added in the test cases.

- autograder/.inputs/
    The folder where stdin files are stored after being added in the test cases.

- autograder/.arguments/
    The folder where argument files are stored after being added in the test cases.

- autograder/.utils/
    Where utility files are stored. This folder should not be modified.

- handout/
    The handout folder should contain the files you expect your users to have.

- .ref/
    If you choose to use a reference program, the uploaded file(s) will be stored here

- .snapshots/
    The snapshots folder is where all student submissions are stored. 

- submission/
    The submission folder can optionally contain a mock submission that can be used to test grading.

- .submissions/
    The submissions folder is where a student's latest submission will be stored. 
    Inside each submission folder will be the submitted files along with an output file with your test script's output.

Custom
--------------

Settings
^^^^^^^^

.. figure:: ../static/courses/custom-test-suite.PNG
    :align: center
    :figwidth: 100%

    **Figure 3.** Custom test settings

You also have the option of providing an **On Start Command** that will be run when the student views or copies the assignment.
This setting can be used to generate **Dynamic Problems**; please read this section for more details.

Structure
^^^^^^^^^

A custom problem allows you to upload a zip file containing relevant test files. 
When a custom problem is created, we will generate the scaffold below inside the assignment files.

.. code-block:: yaml

    test-name/
        autograder/
        handout/
        .snapshots/
        submission/
        .submissions/
 
- autograder/
    The folder that contains all files needed for grading a submission. 

- handout/
    The handout folder should contain the files you expect your users to have. It must contain a file called README.

- .snapshots/
    The snapshots folder is where all student submissions are stored. 

- submission/
    The test folder can optionally contain a test submission that can be used to test grading.

- .submissions/
    The submissions folder is where a student's latest submission will be stored. 
    Inside each submission folder will be the submitted files along with an output file with your test script's output.

