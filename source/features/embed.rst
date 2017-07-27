*******************
Embed
*******************

.. contents:: Table of Contents

Synopsis
================

::

    embed <TEST_NAME>
    
           OR
    
    embed <FILE_PATH>
    
Description
================

Embed allows you to place runnable code snippets into your HTML page. Use an iframe
in your HTML page and set the src attribute to the URL obtained with above command. 

.. code-block:: html
    :emphasize-lines: 2

    <iframe src="EMBED_LINK" height="250px" width="750px" frameBorder="0"></iframe>
    
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

.. cmdoption:: file_path
This argument must be the relative path of an existing file. Paths to a folder will not be allowed.

