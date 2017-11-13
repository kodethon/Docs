
*******************
How It Works
*******************

.. contents:: Table of Contents 

Components
================

A course is comprised of two components:

    1. Assignments
    2. Test Suites

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


Assignment Structure Overview
-------------------


.. code-block:: yaml

    src/
    .submissions/
    test-name/
        YOUR_TEST_SCRIPT
        answers/
        inputs/
        arguments/
        utils/
        
- src/
    The src folder should contain the files you expect your users to have. It must contain a file called README.

- .submissions/
    The submissions folder is where user submissions will be stored. 
    Inside each submission folder will be the submitted files along with an output file with your test script's output.

- test-name/YOUR_TEST_SCRIPT
    The test script file can be any type of file that should be invoked within the command section in the config.yml

- test-name/answers/
    The folder where answer files are stored

- test-name/inputs/
    The folder where stdin files are stored

- test-name/arguments/
    The folder where argument files are stored

- test-name/utils/
    Where utility files are stored.

Test Suites
================

An assignment is comprised of one or more test suites. Currently Kodethon supports 2 types of test suites:

    1. Diff
    2. Custom

Diff Test Suite
-------------------

.. figure:: ../static/courses/test-suite-settings.PNG
    :align: center
    :figwidth: 100%

    **Figure 2.** Test suite creation view

A diff test suite is comprised of test cases. For each test case, you can specify:
    
    1. Standard input
    2. Arguments
    3. Expected answer
    
For example, if you set standard input to be 'abc' and arguments '1 2 3' then the generated test command will look like:

::
    
    run main.py 1 2 3 < 1 

The specified standard input 'abc' will be written into a file called '1' and redirected into the student's program.


Custom Test Suite
-------------------

A custom test suite allows you to upload a zip file containing relevant test files. 
Kodethon however expects the following folders to be created:
    1. inputs
    2. arguments
    3. answers
    4. src (Containing initial files you would like your students to have)
    
Kodethon also expects that you provide:
    1. Test Script
    2. Test Command
    3. Return Template

.. figure:: ../static/courses/custom-test-suite.PNG
    :align: center
    :figwidth: 100%

    **Figure 3.** Custom test settings

::

You also have the option of providing an 'On Start Command' that will be run when the student copies the assignment.

Finall, you have the option of providing a return template that uses your test script's output JSON. 
For example, given a template of:

    "Score: {{ score }}"
    
and the JSON output is "{id: 1, score: 44}" then the processed result will be:

:: 

    "Score: 44"
    
If the template were instead:

::

    "{{ header }} {{ id }} {{ score }}"

then the processed result using the same JSON output will be:

:: 

    " 1 44"
    
because the header keyword does not exist in the JSON output but id and score do.
