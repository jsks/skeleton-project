FROM r-base:latest

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        pandoc \
        texlive-luatex \
        texlive-latex-extra \
        texlive-latex-recommended \
        texlive-fonts-recommended \
        texlive-plain-generic \
        zstd \
    && rm -rf /var/lib/apt/lists/*

RUN install2.r -n -1 -e data.table dplyr ggplot2 ggthemes kableExtra knitr rmarkdown \
                        posterior processx \
    && rm -rf /tmp/downloaded_packages

RUN install2.r -e -r https://mc-stan.org/r-packages/ cmdstanr \
    && rm -rf /tmp/downloaded_packages

RUN mkdir -p /proj
WORKDIR /proj

CMD ["R"]
