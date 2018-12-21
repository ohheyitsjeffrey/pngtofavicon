# A bash Script To Convert A .png File Into An .ico File

A simple script to use imagemagick to convert a png icon file into anico file for ancient ie compatibility.

## Requirements

This script requires you to be on a unix like system with bash and imagemagick.  To install imagemagick,
search for how to do that on your operating system, or download a binary from here:

https://imagemagick.org/script/download.php

## Usage

Download the script and mark it executable with:

```chmod +x png_to_favicon.sh```

Run it and pass it a file to convert as such:

```./png_to_favicon.sh some_png_file.png```

There should be a new file in the png's directory called favicon.ico.  That is all.

