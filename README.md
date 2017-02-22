# StringReplacer
A simple swift program to replace substrings in a textfile and print the output

## Discussion:
I was recently asked with outlining Indian states on an map. To do this, I generated the coordinates by creating a polygon on Google Earth.
However, the coordinates saved in Google Earth's .kml file were saved in a format that was different to the way my iOS app's .plist file would like it.
I wrote this program to format the coordinates into a format accepted by a .plist file, thereby automating a small part of the work (and learning more about SwiftPM)

eg: The coordinate *84.28138026856158,25.94399734485856,0* will be changed to *<string>{84.28138026856158,25.94399734485856}</string>*

The output (all formatted coordinates) will be printed in the terminal window.

Of course, you can modify this code to your liking to replace ocurrences of a string from a file. The file should be present in the same directory (stringReplacer)

## To run the project:
- Open a terminal window and cd all the way to the stringReplacer folder
- Type swift build to build the project
- Type .build/debug/coordinates and the formatted string will be printed.
