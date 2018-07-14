**********************
Problem File Structure
**********************

Diff
----

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
------

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

