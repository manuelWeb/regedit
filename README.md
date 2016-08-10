### TODO registre windows MKTG013

##### régler le pb de limitation à 15 items :
Context menus are shortened when more than 15 files are selected

[windows solution](https://support.microsoft.com/en-us/kb/2022295)

##### solution :

[@see on techsupportforum](http://www.techsupportforum.com/forums/f217/solved-file-access-limitations-603298.html)

Hi, little wonder this causes confusion the limitation was by design it was thought 15 would be more then enough for most users (and it probably is) security and prevention of mass deletion by mistake prompted the change.

Now if you read some of the MS literature you would think this key was there and all you need to do is mod it, however it is not by default (some third party apps reportedly can add it) so you need to create it. 

There is also an understanding that 16 makes the result unlimited this has proven not to be the case, if a client requires this, the best reg mod (gives 500)

Copy and paste this into notepad then "save as" call it folders.reg and save to desktop, make sure you select "all files" when saving and not txt.

Double click on the saved file to merge into registry.

NOTE :- it is important to export the relevant key before any reg mod, to be safe.


Code:
Windows Registry Editor Version 5.00

[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer]
"MultipleInvokePromptMinimum"=dword:000001f4