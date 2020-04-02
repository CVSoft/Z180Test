# Z180Test
Check if your TI graphing calculator has a Z180 CPU.

## What?
This program checks for a Z180 CPU by using the DAA instruction following a DEC A instruction with A set to 0. On a Z180, the behavior is [different](https://www.zilog.com/manage_directlink.php?filepath=docs/z180/appnotes/z180qa&extn=.pdf). All of these programs, except the TI-73 version, are nostub assembly and do not require a shell. Z180TEST directly tells you whether you have a Z80 or a Z180, while Z180BTST puts the result of the test in Ans for TI-BASIC use. Z180BTST should return 153 for a Z80 and 249 for a Z180; any other result would be really weird.  

## Why?
Supposedly, some TI-83s with hardware revision 'O' [may have a Z180](https://brandonw.net/calcstuff/TI83.jpg). This program will verify the theory. 

## But, why so many models?
We don't know exactly what's inside the ASICs. It's easy enough to check. Besides, this serves as a decent reference to assembling the same code on many different calculators. 

## How do I run this on my calculator?
TI-83: `Send(9prgmZ180TEST` or `Send(9prgmZ180BTST:Ans`
TI-83 Plus: `Asm(prgmZ180TEST)` or `Asm(prgmZ180BTST):Ans`
TI-86: `Asm(Z180TEST)` or `Asm(Z180BTST):Ans`

## But the TI-73 doesn't have nostub assembly!
This is compiled for the Mallard shell. OS 1.60 is preferred, and expects [Mallard 0.2](https://www.ticalc.org/archives/files/fileinfo/366/36618.html). Other OSes can try using [Mallard 0.3](https://www.ticalc.org/archives/files/fileinfo/388/38805.html), but successful execution is not guaranteed. 

## What about the TI-82 and TI-85?
I could port Z180TEST over to those calculators. All TI-85s have Z80s, though. The TI-82 shares a lot of hardware with the TI-83, especially around the time the TI-83 had the relevant hardware revision, so Z180TEST has some utility there. However, Z180BTST makes some ROM calls that aren't documented on those models, so that's not getting ported over. You're free to try, though. 

## I want to build this. Where's the includes?
For licensing reasons, I haven't uploaded them here. I prefer BrandonW's Ultimate Include Files for [TI-83](https://www.ticalc.org/archives/files/fileinfo/372/37258.html), [TI-83 Plus](https://www.ticalc.org/archives/files/fileinfo/372/37242.html), and [TI-86](https://www.ticalc.org/archives/files/fileinfo/350/35008.html). Mallard provides an include file. I've only made modifications to allow the include files to work in Brass. 
