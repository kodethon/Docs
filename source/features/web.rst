
*******************
Web Development
*******************

.. contents:: Table of Contents

Synopsis
================

::

    expose <FILE_PATH>
    
Description
================

The expose command will return a URL that points to port 8080 in your environment. 
This means that if you want do web development, the server must bind to port 8080.

Argument
================

The file path argument is optional. If provided, the returned URL will contain the 
file_path.

Options
================

.. cmdoption:: -i

This option will load the page into the CDE Shell instead of returning a URL.