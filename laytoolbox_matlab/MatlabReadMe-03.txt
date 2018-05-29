
MATLAB ReadMe for Laydata Toolbox 

These files can be found at www.laylinalgebra.com.  They work with MATLAB versions 6, 5, and 4. They are designed to be used with Linear Algebra and Its Applications, Third Edition, by David C. Lay, Addison-Wesley, 2003. 
-----------------------------------------------------------------

The M-files in the Laydata Toolbox are not part of commercial MATLAB(R), so they must be installed. The idea is to copy the files into a new folder inside the MATLAB folder, and then append the address of the new directory to the MATLAB path. 
-----------------------------------------------------------------

INSTALLING FILES INTO THE MATLAB PATH

FIRST: Create a folder called laydata inside the main MATLAB folder. Download the Laydata Toolbox from the Web site. Unzip or unstuff the compressed archive inside the laydata folder.

A.  FOR WINDOWS:  The laydata folder should be created in  c:\matlab or whatever the working MATLAB path is. Use Winzip or other program to decompress the files into the laydata folder.  

B.  FOR MACINTOSH:  Use the program Stuffit to unstuff the files into the laydata folder. Open MATLAB. 
From the File menu in MATLAB, select Open. 
Select one of the M-files from the laydata folder (to open the file as if for editing); then close the file.  After this, MATLAB will always know to look in that laydata folder. 

C. If you use MATLAB ON A NETWORK, ask the system administrator to store your files and adjoin their address to MATLAB's path.  
----------------------------------------------------------------

The Laydata Toolbox contains commands that are not part of the commercial MATLAB package:  
   bgauss, gauss, gs, nulbasis, proj, randomint,
   randomstoc, ref, replace, scale, swap,  
 
A few other commands are included for specialized applications.
The Laydata Toolbox also contains numerical data for over 800 exercises, organized by sections in the text.  For instance, after you have completely installed the Laydata Toolbox, you can open MATLAB and type c2s1 to obtain the data for exercises in Chapter 2, Section 1. You will receive a prompt, asking which exercise you wish to study.  

The Study Guide, which accompanies Linear Algebra and Its Applications, 3rd edition, is the "lab manual" for using these files.  An appendix in the Study Guide describes how to get started using MATLAB and how to save and print your output. MATLAB "boxes" in the Study Guide introduce MATLAB commands as they are needed for various exercises.  You can also type  help name  in the MATLAB command window, where "name" is the MATLAB command.  
-----------------------------------------------------------------

If the M-files are saved someplace other than the working path, you can use the Set Path feature in MATLAB to add the Laydata Toolbox to the MATLAB path.

1. In MATLAB 6, select "Set Path" from the File menu. Click on "Add with Subfolders" and find the folder name of the Laydata subdirectory. Highlight the folder and click on OK. Finally, click on "Save and Close."

2. In MATLAB 5, select "Set Path" from the File menu. Use "Browse" to find the Laydata toolbox, and click OK. Under the path menu, select "Add to Path." Finally, choose "Save Path" from the File menu of the Path browser. 

3. In MATLAB 4, open Windows, then click Start/Find/Files or  Folders and locate the file matlabrc.m .  Double click on its name to open it for editing.  Scroll down about 75 lines until you see lines that look like
    ';C:\MATLAB\toolbox\sigsys',...]);
Insert a new line between these two, so the lines now look like
    ';C:\MATLAB\toolbox\sigsys',...';C:\MATLAB\laydata',...]);
Save the file and then close the Edit screen. 
 
4. If for some reason the above methods do not work, try the following to add a new folder to the path for the current session.  At the command window, enter the command below: 
   
In MATLAB 6, type  addpath('c:\matlab\laydata')
In MATLAB 5, type  addpath  'c:\matlab\laydata'  
In MATLAB 4, type  path(path, 'c:\matlab\laydata')   
----------------------------------------------------------------

The author and Addison Wesley Publishing make no representation or warranty of any kind, expressed or implied, with regard to the programs contained herein, including without limitations any implied warranties of merchantability or fitness for particular purposes, all of which are expressly disclaimed. The author and Addison Wesley Publishing shall not be liable for incidental or consequential damages in connection with or arising out of the use of these programs.
August 2002
(c) Addison-Wesley, 2002
