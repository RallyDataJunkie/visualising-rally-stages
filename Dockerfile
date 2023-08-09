# Image for running rayshader

FROM rocker/geospatial

ENV DEBIAN_FRONTEND noninteractive
ENV DEBIAN_FRONTEND teletype

# https://github.com/fomightez/rayshader-binder/blob/master/apt.txt
RUN apt-get update && \
    apt-get install -y \
      libgdal-dev \
      libproj-dev \
      libgeos-dev \
      libudunits2-dev \
      xorg \
      libx11-dev \
      libglu1-mesa-dev \
      libfreetype6-dev \
      libavfilter-dev  \ 
      libfreetype6-dev \
      libfontconfig1-dev \
      ttf-mscorefonts-installer \
      ghostscript \
      libmagick++-dev \
      ffmpeg \
      #imagemagick && \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN R -e "install.packages('devtools')" &&\
    R -e "install.packages('amt')" && \
    R -e "install.packages('elevatr')" && \
    R -e "install.packages('geojsonio')" && \
    R -e "install.packages('geojsonlint')" && \
    R -e "install.packages('geosphere')" && \
    R -e "install.packages('geoviz')" && \
    R -e "install.packages('ggmap')" && \
    R -e "install.packages('ggpubr')" && \
    R -e "install.packages('ggrepel')" && \
    R -e "install.packages('ggridges')" && \
    R -e "install.packages('gl')"
    
RUN    R -e "install.packages('imager')" 

RUN    R -e "install.packages('jsonlite')" && \
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
    #R -e "install.packages('rgl')" && \
    R -e "remotes::install_github('dmurdoch/rgl')" && \
    R -e "install.packages('rglwidget')" && \
    R -e "install.packages('rLFT')" && \
    R -e "install.packages('spatialEco')" && \
    R -e "install.packages('suncalc')" && \
    R -e "install.packages('trackeR')" && \
    R -e "install.packages('trajectories')" && \
    R -e "install.packages('trajr')" 

RUN    R -e "remotes::install_github('tylermorganwall/rayimage')" 
RUN    R -e "devtools::install_github('tylermorganwall/rayrender')" 
RUN    R -e "devtools::install_github('tylermorganwall/rayshader')"
RUN    R -e "devtools::install_github('sckott/geoops')"
RUN    R -e "devtools::install_github('zappingseb/rayshaderanimate')"

RUN    R -e "remotes::install_github('mccarthy-m-g/embedr')" 
RUN    R -e "install.packages('vembedr')"
RUN    R -e "install.packages('leaflet.providers')"
RUN    R -e "install.packages('webshot')"
RUN    R -e "install.packages('smoothr')"
RUN    R -e "install.packages('geodist')"
RUN    R -e "install.packages('terra')"
RUN    R -e "install.packages('anipaths')"
RUN    R -e "remotes::install_github('luukvdmeer/sfnetworks')"
RUN    R -e "remotes::install_github('itsleeds/slopes')"
RUN    R -e 'devtools::install_github( "ingewortel/celltrackR" )'
RUN    R -e "install.packages('riverdist')"
RUN    R -e "install.packages('moveHMM')"
RUN    R -e "install.packages('adehabitatLT')"
RUN    R -e "install.packages('stplanr')"
RUN    R -e "install.packages('tidygraph')"
RUN    R -e "install.packages('dodgr')"
RUN    R -e "install.packages('animation')"
RUN    R -e "remotes::install_github('rstudio/webshot2')"
RUN    R -e "install.packages('formattable')"
RUN    R -e "install.packages('gt')"
RUN    R -e "install.packages('ggforce')"
RUN    R -e "install.packages('rLDCP')"
RUN    R -e "install.packages('TSA')"
RUN    R -e "install.packages('oce')"
RUN    R -e "devtools::install_github('htmlwidgets/sparkline')"
RUN    R -e "install.packages('gghighlight')"
RUN    R -e "install.packages('directlabels')"
RUN    R -e "install.packages('cowplot')"
RUN    R -e "install.packages('kableExtra')"

# docker build -t psychemedia/rayshader .
# docker run -d -p 8787:8787 psychemedia/rayshader


#Headless:
#Via Tyler Morgan-Wall
#- Well, that's more of an rgl issue—you can still use a limited headless version (no snapshots) if you set rgl.useNULL to TRUE. You can still use render_highquality() as well as rgl's webGL functions
#- rayshader uses rgl for 3D rendering, which doesn't support xvfb when taking snapshots
#  - https://github.com/r-forge/rgl/blob/master/pkg/rgl/inst/todo.txt 
#  - It's still on the projects to-do list (ctrl-f "xvfb"):
#- SO: https://stackoverflow.com/questions/37521259/using-rgl-with-headless-display "suppose we toss Xvfb and friends in favor of Cairo and substitute plot3D for rgl"


