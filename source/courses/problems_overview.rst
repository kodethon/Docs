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
    4. Free Response

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
