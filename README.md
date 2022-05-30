Project Name
---

Skeleton setup for a `Rmd` based workflow using `GNU Make` as the taskrunner. 

To get started, first setup a new project using a shallow clone.

```sh
$ git clone --depth 1 git@github.com:jsks/skeleton-project.git <project-directory>

# Change origin to desired remote repository
$ cd <project-directory>
$ git remote set-url origin git@github.com:<username>/<project-repo>.git
```

Next, access the documentation for the default rules in the included Makefile with the `help` target.

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

