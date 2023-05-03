
R version 4.1.0 (2021-05-18) -- "Camp Pontanezen"
Copyright (C) 2021 The R Foundation for Statistical Computing
Platform: x86_64-apple-darwin17.0 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[Workspace loaded from ~/.RData]

>
>
> install.packages("warbleR")
also installing the dependencies 'signal', 'proxy', 'moments', 'tuneR', 'seewave', 'NatureSounds', 'dtw', 'fftw', 'monitoR', 'pbapply', 'bioacoustics'

trying URL 'https://cran.rstudio.com/bin/macosx/contrib/4.1/signal_0.7-7.tgz'
Content type 'application/x-gzip' length 342107 bytes (334 KB)
==================================================
downloaded 334 KB

trying URL 'https://cran.rstudio.com/bin/macosx/contrib/4.1/proxy_0.4-26.tgz'
Content type 'application/x-gzip' length 232168 bytes (226 KB)
==================================================
downloaded 226 KB

trying URL 'https://cran.rstudio.com/bin/macosx/contrib/4.1/moments_0.14.tgz'
Content type 'application/x-gzip' length 54189 bytes (52 KB)
==================================================
downloaded 52 KB

trying URL 'https://cran.rstudio.com/bin/macosx/contrib/4.1/tuneR_1.3.3.1.tgz'
Content type 'application/x-gzip' length 604336 bytes (590 KB)
==================================================
downloaded 590 KB

trying URL 'https://cran.rstudio.com/bin/macosx/contrib/4.1/seewave_2.1.8.tgz'
Content type 'application/x-gzip' length 3333649 bytes (3.2 MB)
==================================================
downloaded 3.2 MB

trying URL 'https://cran.rstudio.com/bin/macosx/contrib/4.1/NatureSounds_1.0.4.tgz'
Content type 'application/x-gzip' length 4979518 bytes (4.7 MB)
==================================================
downloaded 4.7 MB

trying URL 'https://cran.rstudio.com/bin/macosx/contrib/4.1/dtw_1.22-3.tgz'
Content type 'application/x-gzip' length 752633 bytes (734 KB)
==================================================
downloaded 734 KB

trying URL 'https://cran.rstudio.com/bin/macosx/contrib/4.1/fftw_1.0-6.tgz'
Content type 'application/x-gzip' length 475767 bytes (464 KB)
==================================================
downloaded 464 KB

trying URL 'https://cran.rstudio.com/bin/macosx/contrib/4.1/monitoR_1.0.7.tgz'
Content type 'application/x-gzip' length 3367596 bytes (3.2 MB)
==================================================
downloaded 3.2 MB

trying URL 'https://cran.rstudio.com/bin/macosx/contrib/4.1/pbapply_1.5-0.tgz'
Content type 'application/x-gzip' length 76154 bytes (74 KB)
==================================================
downloaded 74 KB

trying URL 'https://cran.rstudio.com/bin/macosx/contrib/4.1/bioacoustics_0.2.5.tgz'
Content type 'application/x-gzip' length 2669145 bytes (2.5 MB)
==================================================
downloaded 2.5 MB

trying URL 'https://cran.rstudio.com/bin/macosx/contrib/4.1/warbleR_1.1.26.tgz'
Content type 'application/x-gzip' length 4139286 bytes (3.9 MB)
==================================================
downloaded 3.9 MB


The downloaded binary packages are in
	/var/folders/pb/924jgkrd56g72s5bjmfv79sm0000gq/T//RtmpxW7bfQ/downloaded_packages
> vignette("warbleR_workflow_phase1")
Warning message:
vignette 'warbleR_workflow_phase1' not found
> library(warbleR)
Loading required package: tuneR
Loading required package: seewave
Loading required package: NatureSounds
Loading required package: knitr

NOTE: functions have been renamed (run 'print(new_function_names)' to see new names). Both old and new names are available in this version
 Please see citation('warbleR') for use in publication
> dir.create(file.path(getwd(),"warbleR_example"))
> setwd(file.path(getwd(),"warbleR_example"))
> getwd()
[1] "/Users/dshipilina/warbleR_example"
> Phae <- querxc(qword = "Phaethornis", download = FALSE)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=19s
1044 recordings found!
> Phae.lon <- querxc(qword = "Turdus ruficolis", download = FALSE)
No recordings were found
> Phae.lon <- querxc(qword = "Turdus", download = FALSE)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=04m 37s
18497 recordings found!
> Phae.lon <- querxc(qword = "Turdus merula", download = FALSE)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=44s
5287 recordings found!
> Turd.ruf <- querxc(qword = "Turdus ruficollis", download = FALSE)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=03s
31 recordings found!
> View(Turd.ruf)
> xcmaps(X = Turd.ruf, img = TRUE, it = "tiff")
Error in xcmaps(X = Turd.ruf, img = TRUE, it = "tiff") :
  must install 'maps' to use this function
> install.packages("warbleR")
Error in install.packages : Updating loaded packages
> install.packages("maps")
trying URL 'https://cran.rstudio.com/bin/macosx/contrib/4.1/maps_3.3.0.tgz'
Content type 'application/x-gzip' length 3688207 bytes (3.5 MB)
==================================================
downloaded 3.5 MB


The downloaded binary packages are in
	/var/folders/pb/924jgkrd56g72s5bjmfv79sm0000gq/T//RtmpxW7bfQ/downloaded_packages
> xcmaps(X = Turd.ruf, img = TRUE, it = "tiff")
> getwd()
[1] "/Users/dshipilina/warbleR_example"
> )
Error: unexpected ')' in ")"
> getwd()
[1] "/Users/dshipilina/warbleR_example"
> xcmaps(X = Turd.ruf, img = FALSE)
> Turd.ruf <- querxc(qword = "Turdus ruficollis", download = FALSE)
  |                                                  | 0 % ~calculating
> Turd.ruf <- querxc(qword = "Turdus atrogularis", download = FALSE)
  |                                                  | 0 % ~calculating
> Turd.atr <- querxc(qword = "Turdus atrogularis", download = FALSE)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=05s
71 recordings found!
> xcmaps(X = Turd.atr, img = FALSE)
> Turd.atr <- querxc(qword = "Turdus atrogularis", download = FALSE)
  |                                                  | 0 % ~calculating
> Turd.atr <- querxc(qword = "Turdus naumanni", download = FALSE)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=03s
19 recordings found!
> Turd.atr <- querxc(qword = "Turdus atrogularis", download = FALSE)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=03s
71 recordings found!
> Turd.nau <- querxc(qword = "Turdus naumanni", download = FALSE)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=03s
19 recordings found!
> Turd.eun <- querxc(qword = "Turdus eunomus", download = FALSE)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=03s
133 recordings found!
> xcmaps(X = Turd.nau, img = FALSE)
> xcmaps(X = Turd.eun, img = FALSE) 
