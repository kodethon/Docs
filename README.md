# Currently Hosted At
https://docs.kodethon.com

# Installation

## Dependencies

- python pip
- Sphinx

### Installing Sphinx via MacPorts

```
$ sudo port install py36-sphinx
```

```
$ sudo port select --set python python36
$ sudo port select --set sphinx py36-sphinx
```

### Installing Sphinx via Homebrew 

```
$ brew install sphinx-doc
```

### Installing Sphinx via apt-get

```
$ sudo apt-get install python-sphinx
```

### Install Sphinx Dependencies via Pip

```
sudo pip install sphinxcontrib-httpdomain
sudo pip install sphinx_rtd_theme
```

# How to Build the Docs
Run 'make html' in the respository root; files will be generated in the 'build' folder.


# Structure

Courses

* Getting Started
  * Create a problem	
  * Create a course
  * Create an assignment

CDE

* Getting Started
  * Write a program
  * Run a program
  * Create project
  * Share a project
* Intro to the GUI
  * File Navigator
  * Editor
  * Shell
  * Apps
