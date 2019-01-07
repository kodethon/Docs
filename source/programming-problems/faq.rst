****
FAQs
****

What happens when a submission is made?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Upon submission, Kodethon will place the submission files in a **submission** folder located in the /home/kodethon/.staging folder.
A generated **test.sh** script will be executed from within the autograder folder. The generated test.sh script will run each specified test case and diff the
results with the expected answer. If the answers match exactly or match given the allowed whitespace settings, then a point is awarded for the submission. 
Below is an example of what the submission layout looks like for a user named *John Doe*:

.. code-block:: text
    
    /home/kodethon/.staging/John-Doe.12345/PROBLEM_NAME
      metadata.json
      autograder/
        test.sh
      submission/
        SUBMISSION_FILES


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
