#!/bin/bash
# R Quant Install rpm dependencies



#yum install QuantLib QuantLib-devel geos geos-devel gsl gsl-devel netcdf netcdf-devel \
#    gdal gdal-* mpfr mfpr-devel postgresql-* lapack-* blas-* ununits-* udunits2-* fftw-* \
#    libiodbc-* unixODBC-* oroj-* ssparser nekohtml htmlunit htmlunit-core-js jsoup json-lib \
#    ezmorph tagsoup sac curl-* glpk-* coin-or-SYMPHOMY-* libxml2-devel openssl-devel gmp-* \
 
dnf install QuantLib QuantLib-devel geos-devel gsl-devel netcdf-devel \
    gdal-devel mpfr-devel postgresql-devel lapack-devel blas-devel udunits2-devel \
    fftw-devel libiodbc-devel unixODBC-devel cssparser nekohtml htmlunit htmlunit-core-js 
    jsoup json-lib ezmorph tagsoup sac glpk-devel glpk-static glpk-utils coin-or-SYMPHONY-devel \
    libxml2-devel openssl-devel gmp-devel libjpeg-turbo-devel ggobi-devel libXt-devel \ 
    postgresql-devel gdal-devel proj-devel proj-epsg mesa-libGLU-devel mesa-libGL-devel \
    lpsolve-devel libcurl-devel poppler-cpp-devel poppler-glib-devel ImageMagick-c++-devel cargo

    
 Removed:  gtk2-devel (need to see if supplies rpanel BWidgets) 
