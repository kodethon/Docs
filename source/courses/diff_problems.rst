*************
Diff Problems
*************

.. contents:: Table of Contents 

Description
===========

A diff problem is named after the UNIX diff command that compares the contents of two files.
In our case, we diff the output produced by the submitted files with the expected answer. 
To generate the output from the submitted files, the creator of the problem must specify a **run command**.
The expected answers are specified as **test cases**; each test case also optionally have arguments and/or stdin.

Components
==========

Additional Settings
^^^^^^^^^^^^^^^^^^

.. cmdoption:: Run Command
The run command should be a UNIX shell command used to execute the submission file. This command will be **run once per test case**.

For example, if the submission file is expected to be called *main.py*, then the corresponding run command should be *python main.py*.

.. cmdoption:: Init Command
The init command should be a UNIX shell command used to prepare the submission for testing. This command will be only **run once**.

For example, specifying *gcc main.c* as the init command will create an executable file *a.out* which can then be used by the run command. 

Problem File Structure
^^^^^^^^^^^^^^^^^^^^^^

When a problem is created, the below files are created:

.. code-block:: text

  /home/kodethon/PROBLEM_NAME
    autograder/
      .answers/
      .inputs/
      .arguments/
      .utils/
      test.sh
    handout/
    .ref/
    .snapshots/
    submission/
    .submissions

Please refer to the problem file structure for more details on the purpose of each file.

FAQs
====

What happens when a submission is made?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

When the student submits their files for grading, Kodethon will place their submission in a **submission** folder located in the /home/kodethon/.staging folder.
A generated **test.sh** script will be executed from within the autograder folder. The generated test.sh script will run each specified test case and diff the
results with the expected answer. If the answers match exactly or match given the allowed whitespace settings, then a point is awarded for the submission. 
Below is an example of what the submission layout looks like for a student named *John Doe*:

.. code-block:: text
    
    /home/kodethon/.staging/John-Doe.12345/PROBLEM_NAME
      metadata.json
      autograder/
        test.sh
      submission/
        STUDENT_SUBMISSION_FILES


The metadata.json file containers information regarding the submitter as shown below:

.. code-block:: json

  {
    "first_name": "John",
    "last_name": "Doe",
    "email": "johndoe@gmail.com",
    "environment": "python:2.7.9",
    "submission_time": "2018-07-13T08:21:55.499+00:00",
    "deadline": "2018-07-18T08:21:55.499+00:00"
  } 

How do I refer to other files during testing?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The run command will be executed from **within the autograder folder**. References to files should be made with absolute paths. 
For example, if there is a need to reference the file *solution.txt* as shown below:

.. code-block:: text
  /home/kodethon/PROBLEM_NAME
    autograder/
      test.sh
      solution.txt

The path */home/kodethon/PROBLEM_NAME/autograder/solution.txt* can be used. Please note
that *PROBLEM_NAME* must be replaced with the actual name of the problem. 
