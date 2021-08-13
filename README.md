# `docker-conda`

Repository to track, build, and push a min-requirement docker image to the KEA docker registry. 

## Pre-installed Dependencies: 
The `base` conda environment has been set up to include typical research-oriented workflow tools. 

```yaml
channels:
  - conda-forge
dependencies:
  - python=3.8
  - git
  - open-fonts
  - tectonic
  - pandoc
  - weasyprint
  - jupytext
  - pip
  - pip:
      - poetry-dynamic-versioning
```

