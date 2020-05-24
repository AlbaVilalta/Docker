FROM debian:stable

LABEL maintainer "Alba Vilalta <alba.vilalta@uvic.cat>" \
      version "1.0" \
      description "Docker image for heatmap"

# Install R (after apt-get update)
RUN apt-get update && apt-get install -y r-base

# Install R package 'ggplot2'
RUN R -e 'install.packages("ggplot2", repos = "http://cloud.r-project.org/")'

# Create the folder '/heatmaps' in the container
RUN mkdir /heatmaps


