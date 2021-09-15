# `(Continuous) Scientific Python`

Repository to track, build, and push a min-requirement image to the NIST container registry. Prevents wasted compute-time installing commonly needed dependencies in the python environment and sets up useful defaults. 

TODO: document how and/why to use this container. 

## Pre-installed Dependencies: 
The `base` conda environment has been set up to include typical research-oriented workflow tools. 

```yaml
name: base
channels:
  - conda-forge
dependencies:
  - python=3.8
  - git
  - open-fonts
  - tectonic
  - pandoc
  - weasyprint
  - nb_conda_kernels
  - jupytext
  - pip
  - pip:
      - poetry
      - poetry-dynamic-versioning

```

