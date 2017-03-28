#!/bin/bash
# R Quant Install rpm dependencies



#yum install QuantLib QuantLib-devel geos geos-devel gsl gsl-devel netcdf netcdf-devel \
#    gdal gdal-* mpfr mfpr-devel postgresql-* lapack-* blas-* ununits-* udunits2-* fftw-* \
#    libiodbc-* unixODBC-* oroj-* ssparser nekohtml htmlunit htmlunit-core-js jsoup json-lib \
#    ezmorph tagsoup sac curl-* glpk-* coin-or-SYMPHOMY-* libxml2-devel openssl-devel gmp-* \
 
dnf install QuantLib QuantLib-devel geos geos-devel gsl gsl-devel netcdf netcdf-devel \
    gdal gdal-* mpfr mpfr-devel postgresql-* lapack-* blas-* udunits2-* fftw-* \
    libiodbc-* unixODBC-* cssparser nekohtml htmlunit htmlunit-core-js jsoup json-lib \
    ezmorph tagsoup sac glpk-devel glpk-static glpk-utils coin-or-SYMPHONY-devel \
    libxml2-devel openssl-devel gmp-* \
    libjpeg-turbo-*  gtk2-devel ggobi-devel libXt-devel postgresql-devel gdal-devel \
    proj-devel proj-epsg mesa-libGLU-devel mesa-libGL-devel lpsolve-devel libcurl-devel
    
 
