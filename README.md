keylogger.el
============

A library that records Emacs inter-key timings.

Originally written by Pavel Panchekha; fork by Michael Dickens.



Modifications
-------------

The keylogger keeps separate records for different keyboard layouts and automatically keeps track of what keyboard layout you're using. If you use two or more different keyboard layouts, create a list called `*keylayouts*` where each car is a symbol representing the name of the keyboard layout. Also create a variable called `*current-keylayout*` and set it to the value of whichever keyboard layout you are using at any given time.
