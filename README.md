Project Name
---

Skeleton setup for a `Rmarkdown` based workflow using `GNU Make` as the
taskrunner.

To get started, setup first a new project using a shallow git clone.

```sh
$ git clone --depth 1 git@github.com:jsks/skeleton-project.git <project-directory>

# Change origin to desired remote repository
$ cd <project-directory>
$ git remote set-url origin git@github.com:<username>/<project-repo>.git
```

Next, access the documentation for the default rules in the included Makefile
with the `help` target.

```sh
$ make help
```

## Compiling Rmd files

The barebones Makefile includes support for converting `Rmarkdown` files to
docx, html, and pdf outputs.

To compile the example `skeleton.Rmd` file, install `R`, `pandoc`, and the
following `R` packages:

```sh
$ Rscript -e "install.packages('rmarkdown', 'dplyr', 'ggplot2', 'ggthemes', 'kableExtra', 'knitr')"
$ make skeleton.pdf
```

Alternatively, a barebones container image from the latest version of `r-base`
with all necessary packages is also available.

```sh
$ docker pull ghcr.io/jsks/skeleton:4.2.0
$ docker run -v $PWD:/proj --rm -it R
```

## Directory Structure

```sh
bin/        # Shell scripts
data/       # Raw and generated data files
R/          # R scripts
refs/       # Reference files
posteriors/ # Model outputs
stan/       # Stan code
```

