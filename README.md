# msiklm
MSI SteelSeries Keyboard CLI controller application

This was originally provided by a forum poster in the MSI forums who'd had
issues with the relative lack of support by SteelSeries or MSI on the 
keyboard.  There was a Russian provided tool, but this goes further and
while it's got issues (Shouldn't SEGFAULT from a non-privileged user)
it really, really DOES work as advertised.  Nowhere else except that 
forum post, I thought it more appropriate to do what they had done, gather
the code up, clean it up, and preserve it a bit better for people
that might want this thing, since I wanted it.

Simple in everything.  You must have the libhid-dev or it's equivalent
and libhid-libusb (It can use either that or hidraw, it's just the
original uses the libusb binding set...) on your machine.  It needs
to be ran as root to do it's magic so you need to sudo the command or
add it to one of your initscripts to do settings.  This supports most
of the actual functionality via command line.  Here's the help for your
reference:

msiklm - MSI Keyboard Light Manager
###################################

utility to configure the SteelSeries keyboard in MSI Gaming Notebooks - 
possible arguments:

help
    show this help

test
    test if a compatible SteelSeries MSI Gaming Notebook is detected

list
    list all found HID devices

<color> OR <color_left,color_middle,color_right>
    set a respective color for all zones / for each zone at full brightness;
    if three values are supplied, they have to be separated with commas without 
    spaces, e.g. red or red,green,blue are valid while red,green, blue or red, 
    green, blue are not it is valid to supply three times the same value, but 
    the result will be the same as supplying it only once valid colors are: none, 
    off (equivalent to none), red, orange, yellow, green, sky, blue, purple, white

<color> <brightness> OR <color_left,color_middle,color_right> <brightness>
    set the respective zone's color(s) at the specified brightness; valid brightnesses 
    are: low, medium, high remark: to disable the illumination, use off or none as 
    global color

<color> <mode> OR <color_left,color_middle,color_right> <mode>
    sets the respective zone's color(s) and active the specified mode
    mode is one of the following effects: normal, gaming, breathe, demo, wave

<color> <brightness> <mode> OR <color_left,color_middle,color_right> <brightness> <mode>
    simultaneously sets the respective zone's color(s) with a specified brightness and a mode

<mode>
    only set a mode and keep the colors unchanged



White's not as clean as one would want with this keyboard.  The backlight's fine, the underlight
effects with it because of LED placement is...funky.  YMMV.
