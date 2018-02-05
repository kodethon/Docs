
*******************
Overview
*******************

.. contents:: Table of Contents 

Assignments
================
.. figure:: ../static/courses/create-assignment.PNG
    :align: center
    :figwidth: 100%

    **Figure 1.** Assignments page view

An assignment is the first thing that should be created by clicking on the button outlined in red in figure 1.
Here you can specify:
    1. Programming environment that will be used to test submissions 
    2. Start date of the assignment
    3. Due date of the assignment
    
If you happen to set the start after the current date, students within the course will not be able to see the assignment.

Problems
================

We currently support three types of problems:

    1. Diff
    2. Custom
    3. Multiple Choice

Diff Problem 
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

When a student submits their program for grading, Kodethon will generate a test script based on the problem settings. 
For example, if you set standard input to be 'abc' and arguments '1 2 3' then the generated test command will look like:

::
    
    run main.py 1 2 3 < 1 

The specified standard input 'abc' will be written into a file called '1' and redirected into the student's program.

Structure
^^^^^^^^^

When a diff problem is created, we will generate the scaffold below inside the assignment files.

.. code-block:: yaml

    .submissions/
    test-name/
        ADDITIONAL_TEST_FILE(s)
        src/
        test/
        .submissions/
        .snapshots/
        .answers/
        .inputs/
        .arguments/
        .utils/
        .ref/
 
- test-name/ADDITIONAL_TEST_FILE(s)
    Adding additonal test files is completely optional. 

- src/
    The src folder should contain the files you expect your users to have.

- test/
    The test folder can optionally contain a test submission that can be used to test grading.

- .submissions/
    The submissions folder is where a student's latest submission will be stored. 
    Inside each submission folder will be the submitted files along with an output file with your test script's output.

- .snapshots/
    The snapshots folder is where all student submissions are stored. 

- test-name/.answers/
    The folder where answer files are stored after being added in the test cases.

- test-name/.inputs/
    The folder where stdin files are stored after being added in the test cases.

- test-name/.arguments/
    The folder where argument files are stored after being added in the test cases.

- test-name/.utils/
    Where utility files are stored. This folder should not be modified.

- test-name/.ref/
    If you choose to use a reference program, the uploaded file(s) will be stored here

Custom Problem
--------------

A custom problem allows you to upload a zip file containing relevant test files. 
When a custom problem is created, we will generate the scaffold below inside the assignment files.

.. code-block:: yaml

    test-name/
        YOUR_TEST_FILE(s)
        src/
        test/
        .submissions/
        .snapshots/
 
- test-name/YOUR_TEST_FILE(s)
    The test script file can be any type of file that should be invoked within the command section in the config.yml       

- src/
    The src folder should contain the files you expect your users to have. It must contain a file called README.

- test/
    The test folder can optionally contain a test submission that can be used to test grading.

- .submissions/
    The submissions folder is where a student's latest submission will be stored. 
    Inside each submission folder will be the submitted files along with an output file with your test script's output.

- .snapshots/
    The snapshots folder is where all student submissions are stored. 

    
.. figure:: ../static/courses/custom-test-suite.PNG
    :align: center
    :figwidth: 100%

    **Figure 3.** Custom test settings

::

You also have the option of providing an **On Start Command** that will be run when the student views or copies the assignment.
This setting can be used to generate **Dynamic Problems**; please read this section for more details.
