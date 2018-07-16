*******************
Score
*******************

.. contents:: Table of Contents

Synopsis
================

::

    score <TEST_NAME>
    
Description
================

Score lets you compile all your submission outputs into a format specified uner 
in the format field of the output section. 

Arguments
================

.. cmdoption:: test_name

This argument must be the name of an existing test. 
In the example below, hw-1 is a valid test name because it exists in the config.yml

.. code-block:: yaml
    :emphasize-lines: 1

    hw-1:
        id: NWExMWQ5OTA4NDAzYzFlYTQxYzJmZTQ5MWI0OGUzMjMjaHctMQ==
        path: "/hw-1"
        test:
            environment: python:2.7.9
            script: test.sh
            command: "cmake CMakeLists.txt && make && ./runTests"
            assets:
                - CMakeLists.txt
            template: "Score: {{ score }}"
        output:
            filename: _output
            format: csv
            template: "{{ id }} {{ score }}"
