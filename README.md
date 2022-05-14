Project Name
---

Skeleton setup for a `Rmd` based workflow using `GNU Make` as the taskrunner. 

To get started:

```sh
$ make help
```

A barebones container image from the latest version of `r-base` with the
necessary packages to compile `skeleton.Rmd` is also available.

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

