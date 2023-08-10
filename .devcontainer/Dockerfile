FROM r-base

ENV DEBIAN_FRONTEND noninteractive
ENV DEBIAN_FRONTEND teletype

# # https://github.com/fomightez/rayshader-binder/blob/master/apt.txt
RUN apt-get update && \
     apt-get install -y \
       cmake \
       xorg \
       git-all \
       libgit2-dev \
       libharfbuzz-dev \
       libfribidi-dev \
       libv8-dev \
       libprotobuf-dev \
       protobuf-compiler \
       libjq-dev \
       libgsl-dev \
       libgdal-dev \
       libproj-dev \
       libgeos-dev \
       libudunits2-dev \
       libgmp-dev \
       libmpfr-dev \
       libfftw3-dev \
       libx11-dev \
       libglu1-mesa-dev \
       libfreetype6-dev \
       libavfilter-dev  \ 
       libfreetype6-dev \
       libfontconfig1-dev \
       #ttf-mscorefonts-installer \
       ghostscript \
       libmagick++-dev \
       ffmpeg \
       imagemagick \
     && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN R -e "install.packages('devtools')" &&\
    R -e "install.packages('tidyverse')" && \
    R -e "install.packages('gmp')" && \
    R -e "install.packages('Rmpfr')" && \
    R -e "install.packages('amt')" && \
    R -e "install.packages('elevatr')" && \
    R -e "install.packages('geojsonio')" && \
    R -e "install.packages('geojsonlint')" && \
    R -e "install.packages('geosphere')" && \
# Not available    R -e "install.packages('geoviz')" && \ 
    R -e "install.packages('ggmap')" && \
    R -e "install.packages('ggpubr')" && \
    R -e "install.packages('ggrepel')" && \
    R -e "install.packages('ggridges')" && \
 # Not available    R -e "install.packages('gl')"  && \
    R -e "install.packages('imager')" && \
    R -e "install.packages('jsonlite')" && \
    R -e "install.packages('leaflet')" && \
    R -e "install.packages('leafem')" && \
    R -e "install.packages('lwgeom')" && \
    R -e "install.packages('magick')" && \
    R -e "install.packages('mapview')" && \
    R -e "install.packages('osmdata')" && \
    R -e "install.packages('pgirmess')" && \
    R -e "install.packages('plainview')" && \
    R -e "install.packages('plotKML')" && \
    R -e "install.packages('rasterVis')" && \
    R -e "install.packages('rgl')" && \
    #R -e "remotes::install_github('dmurdoch/rgl')" && \
    R -e "install.packages('rglwidget')" && \
    R -e "install.packages('rLFT')" && \
    R -e "install.packages('spatialEco')" && \
    R -e "install.packages('suncalc')" && \
    R -e "install.packages('trackeR')" && \
    R -e "install.packages('trajectories')" && \
    R -e "install.packages('trajr')" && \
    R -e "install.packages('rayimage')" && \
    R -e "install.packages('rayrender')" && \
    R -e "install.packages('rayshader')" && \
    R -e "devtools::install_github('sckott/geoops')" && \
    R -e "devtools::install_github('zappingseb/rayshaderanimate')" && \
    R -e "remotes::install_github('mccarthy-m-g/embedr')" && \
    R -e "install.packages('vembedr')" && \
    R -e "install.packages('leaflet.providers')" && \
    R -e "install.packages('webshot')" && \
    R -e "install.packages('smoothr')" && \
    R -e "install.packages('geodist')" && \
    R -e "install.packages('terra')" && \
    R -e "install.packages('anipaths')" && \
    R -e "install.packages('sfnetworks')" && \
    R -e "remotes::install_github('itsleeds/slopes')" && \
    R -e "install.packages( 'celltrackR' )" && \
    R -e "install.packages('riverdist')" && \
    R -e "install.packages('moveHMM')" && \
    R -e "install.packages('adehabitatLT')" && \
    R -e "install.packages('stplanr')" && \
    R -e "install.packages('tidygraph')" && \
    R -e "install.packages('dodgr')" && \
    R -e "install.packages('animation')" && \
    R -e "install.packages('webshot2')" && \
    R -e "install.packages('formattable')" && \
    R -e "install.packages('gt')" && \
    R -e "install.packages('ggforce')" && \
    R -e "install.packages('rLDCP')" && \
    R -e "install.packages('TSA')" && \
    R -e "install.packages('oce')" && \
    R -e "devtools::install_github('htmlwidgets/sparkline')" && \
    R -e "install.packages('gghighlight')" && \
    R -e "install.packages('directlabels')" && \
    R -e "install.packages('cowplot')" && \
    R -e "install.packages('kableExtra')"

# # docker build -t psychemedia/rayshader .
# # docker run -d -p 8787:8787 psychemedia/rayshader


# #Headless:
# #Via Tyler Morgan-Wall
# #- Well, that's more of an rgl issue—you can still use a limited headless version (no snapshots) if you set rgl.useNULL to TRUE. You can still use render_highquality() as well as rgl's webGL functions
# #- rayshader uses rgl for 3D rendering, which doesn't support xvfb when taking snapshots
# #  - https://github.com/r-forge/rgl/blob/master/pkg/rgl/inst/todo.txt 
# #  - It's still on the projects to-do list (ctrl-f "xvfb"):
# #- SO: https://stackoverflow.com/questions/37521259/using-rgl-with-headless-display "suppose we toss Xvfb and friends in favor of Cairo and substitute plot3D for rgl"