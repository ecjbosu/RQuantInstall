#!/bin/bash
# R Quant Install rpm dependencies

dnf install QuantLib QuantLib-devel geos-devel gsl-devel netcdf-devel gdal-devel mpfr-devel postgresql-devel lapack-devel blas-devel udunits2-devel fftw-devel libiodbc-devel unixODBC-devel nekohtml jsoup tagsoup sac glpk-devel glpk-utils coin-or-SYMPHONY-devel libxml2-devel openssl-devel gmp-devel libjpeg-turbo-devel libXt-devel postgresql-devel gdal-devel proj-devel mesa-libGLU-devel mesa-libGL-devel lpsolve-devel libcurl-devel poppler-cpp-devel poppler-glib-devel ImageMagick-c++-devel cargo libgit2-devel udunits2-devel protobuf-devel rust cargo tesseract-devel librsvg2-devel  
    
# Removed:  gtk2-devel (need to see if supplies rpanel BWidgets) 
# may need to add later to install packages list
