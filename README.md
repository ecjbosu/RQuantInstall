RQuantInstall
=============

The Ultimate R Quant installation script 

This will install all packages for windows and linux.  The linux install does 
not check for dependent linux developemnt packages.  I could use some help 
setting up an accompaning shell script for rpm and deb installations.

<ul>Included is
  <li>install R packages function script</li>  
  <li>linux rpm developement package install shell script</li>  
  <li>Rprofile.site file that demonstrates how to set up R to handle different working 
  environments from beta to Production by pointing to different source code and 
  data locations.</li>
</ul>

Download the R program from http://cran.r-project.org/bin/windows/base/

<ul>Execute the R-Ver-win.exe.
<li>Agree to the GNU GPL</li>
<li>Change the Install location to - C:\R (this makes our lives easier)</li>
<li>Select the Customize Startup Options - YES!!!!!!</li>
<li>Select SDI</li>
<li>Select HTML Help</li>
<li>Select Standard Internet</li>
<li>Click Next until Done</li>
</ul>

<ul>edit R/etc/repositories to read as
<li>Omegahat Omegahat http://www.omegahat.org/RTRUE TRUE TRUE FALSE</li>
<li>R-Forge R-Forge http://R-Forge.R-project.orgTRUE TRUE TRUE TRUE</li>
<li>forge.net rforge.net http://www.rforge.netTRUE TRUE TRUE TRUE</li>
</ul>

Install R Studio

Source script from R packages for the Ultimate Quant R: Requires RCurl to be installed.  
```
require(RCurl)
src <- ("https://github.com/ecjbosu/RQuantInstall/blob/master/requiredpackagesinstall.R")
src <- getURL(src, ssl.verifypeer = F)
eval(parse(text = src), envir= .GlobalEnv)
```

<ul>Programs to help the Quant (Windows and Linux Applications:  most are avialable in linux repositories, so download link included to help Windows users)
<li>R (http://cran.at.r-project.org/bin/windows/base/) using Github/ecjbosu installation instructions.</li>
<li>Rstudio (http://www.rstudio.com/products/rstudio/download/)</li>
<li>Tinn-R (http://sourceforge.net/projects/tinn-r/)</li>
<li>MiKTeX (http://miktex.org/download)</li>
<li>RTools (http://cran.at.r-project.org/bin/windows/Rtools/)</li>
<li>TortoiseSVN or similar (http://tortoisesvn.net/downloads.html)</li>
<li>Java JRE (http://www.oracle.com/technetwork/java/javase/downloads/jre7-downloads-1880261.html)</li>
<li>Java JDE (http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)</li>
<li>ActivePerl (http://www.activestate.com/activeperl/downloads)</li>
<li>ActivePython (http://www.activestate.com/activepython/downloads)</li>
<li>GitHub (https://github.com/)</li>
<li>Eclipse (https://www.eclipse.org/downloads/)</li>
<li>LibreOffice (http://www.libreoffice.org/) or OpenOffice (https://www.openoffice.org/download/) – superior number/list features and formula editor.</li>
<li>7-Zip (http://www.7-zip.org/download.html)</li>
<li>GIMP (http://www.gimp.org/downloads/)</li>
<li>DIA (http://dia-installer.de/)</li>
</ul>
<ul>Would like not necessary
<li>Lpsolve (http://sourceforge.net/projects/lpsolve/) This has an R package, but the external libraries can be called from python, vba (script), and many others.</li>
<li>GantProject (http://www.ganttproject.biz/download.php)</li>
<li>GnuWin32 (http://sourceforge.net/projects/gnuwin32/)</li>
<li>GnuWin64 (when available)</li>
</ul>

References:

http://www.r-bloggers.com/source_https-sourcing-an-r-script-from-github-over-https/
