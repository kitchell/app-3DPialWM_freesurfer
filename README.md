[![Abcdspec-compliant](https://img.shields.io/badge/ABCD_Spec-v1.1-green.svg)](https://github.com/brain-life/abcd-spec)
[![Run on Brainlife.io](https://img.shields.io/badge/Brainlife-bl.app.38-blue.svg)](https://doi.org/10.25663/bl.app.38)

# app-example-documentation
This application converts Freesurfer's pial and white matter surfaces to different file types. It will convert the lh/rh.pial, lh/rh.white, lh/rh.smoothwm, lh/rh.inflated files into your choice of file type (stl, vtk, gii, mgz)

### Author
- Lindsey Kitchell (kitchell@indiana.edu)

### Funding 
[![NSF-BCS-1734853](https://img.shields.io/badge/NSF_BCS-1734853-blue.svg)](https://nsf.gov/awardsearch/showAward?AWD_ID=1734853)
[![NSF-BCS-1636893](https://img.shields.io/badge/NSF_BCS-1636893-blue.svg)](https://nsf.gov/awardsearch/showAward?AWD_ID=1636893)

## Running the App 

### On Brainlife.io

You can submit this App online at [https://doi.org/10.25663/bl.app.38](https://doi.org/10.25663/bl.app.38) via the "Execute" tab.

### Running Locally (on your machine)

1. git clone this repo.
2. Inside the cloned directory, create `config.json` with something like the following content with paths to your input files.

```json
{
    "freesurfer": "../5b96d861161e01002a3207c4/5967bffa9b45c212bbec8958/output",
    "filetype": "vtk"    
}
```

If you have singularity installed on your local machine:

3. Launch the App by executing `main`

```bash
./main
```
Otherwise:

3. execute convertfiles.sh
```bash
./convertfiles.sh
```

### Sample Datasets

If you don't have your own input file, you can download sample datasets from Brainlife.io, or you can use [Brainlife CLI](https://github.com/brain-life/cli).


## Output

The main output of this App is a folder containing the 3D surface meshes.


### Dependencies

This App only requires [singularity](https://www.sylabs.io/singularity/) to run. If you don't have singularity, you will need to install following dependencies.  

  - Freesurfer: https://surfer.nmr.mgh.harvard.edu/
