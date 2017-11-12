*******************
Embed
*******************

.. contents:: Table of Contents

Synopsis
================

::

    embed <TEST_NAME> <FILE_PATH?>
    
Description
================

Run the above command in the *CDE Shell* to obtain an embed link. 
Embed allows you to place runnable code snippets into your HTML page. Use an iframe
in your HTML page and set the src attribute to the URL obtained with above command. 

.. code-block:: html
    :emphasize-lines: 2

    <iframe src="EMBED_LINK" height="250px" width="750px" frameBorder="0"></iframe>
    
Arguments
================

.. cmdoption:: file_path
Denotes which file to show initially; this argument must be the relative path of an existing file.
