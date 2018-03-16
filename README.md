# Kodethon Documentation

This repository holds the source code for Kodethon documentation.

https://docs.kodethon.com

## Dependencies

0. python pip
1. Sphinx


### Installing Pip via MacPorts

```
$ sudo port install py36-pip
$ sudo port select --set pip pip36
```

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

### Install Sphinx Dependencies via Pip

```
sudo pip install sphinxcontrib-httpdomain
sudo pip install sphinx_rtd_theme
```

### How to Build the Docs
1. Install dependencies.
2. Run `make html` in the respository root; files will be generated in the `build/` folder.


### Structure

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

LMS

* Getting Started
  * Create a problem	
  * Create a course
  * Create an assignment

