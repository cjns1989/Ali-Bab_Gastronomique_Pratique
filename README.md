# About Henri Babinski

Henri Babinski (1855-1931) better known to the French public of the first decades of the 20th century under his pseudonym of **Ali-Bab** is mostly remembered as a leading French *gastronome* of the 1900s and the author of the monumental *Gastronomie Pratique - Études culinaires* (Ed. 1907). The son of Polish immigrants, Babinski was a graduate of the prestigious *école des Mines* in Paris and travelled to many faraway places from South America to Siberia, working as a consultant for different companies and later managing a State-owned mining concer in French Guiana. Some of the footnotes in the first chapters of *Gastronomie Pratique* suggest that H. Babinski, an engineer by trade and in no way related to the universe of professional cooks, initially became interesting in *cuisine* during some of his missions as a prospector because he was at times deprived of the most basic foods for extended periods of time. Thanks to the money he made during his comparatively short career as a mining engineer he was able to retire early and return to Paris where he dedicated the last thirty years of his life to writing about *Haute Gastronomie*. 

This publication of *Gastronomie Pratique* attempts to recreate the look and feel of the 1923 edition found online at the *Gallica* site of the **Bibliothèque National de France**. It comes with a working *Table of Contents* and an *Index* (Table Alphabétique) with hyperlinks to the 1000+ recipes presented by H. Babinski.

Please be aware that even if great care was taken to provide the correct amounts of the ingredients required by each recipe, in the event you would try to reproduce or adapt them, there is always an outside chance of possible typos. It is therefore recommended to double check with the original scanned PDF.

# Building

  If you are only interested in reading this book, you will find a copy in the *pdf* directory of the master branch of the repository ready for download.

  Should you wish to make any changes to the document (fixing typos, improving the formatting, switching to a different font... etc.) you can do following:

  1. git clone the project (or download/unpack the zip file)
  2. make your changes in the master branch
  3. navigate to the top of the book's directory and execute the following commands from the shell prompt:

     - $ make clean
     - $ make 

# Software dependencies

  The **build** process described above relies on the presence of the following programs:

  1. bash (or a compatible shell)
  2. GNU make
  5. latex/xelatex

  These tools are either installed by default by most current GNU/linux distributions or available from their standard repositories.

# Credits

  The default font used both for the epub and the pdf output is the classic *EB Garamond* font originally by Austrian designer **Georg Mayr-Duffner**. This default font can easily be changed to suit your requirements by editing the main latex file and re-building the pdf.
