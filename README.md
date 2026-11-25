[![Abcdspec-compliant](https://img.shields.io/badge/ABCD_Spec-v1.1-green.svg)](https://github.com/brain-life/abcd-spec)
[![Run on Brainlife.io](https://img.shields.io/badge/Brainlife-bl.app.38-blue.svg)](https://doi.org/10.25663/bl.app.38)

# app-example-documentation

<!-- brainlife-app:begin (generated from the App manifest; edit the manifest, not this block) -->

> **Converts FreeSurfer pial, white, smoothwm and inflated surfaces of both hemispheres to VTK, STL, GIFTI or MGZ meshes with mris_convert.**

Utility that runs FreeSurfer mris_convert on the eight lh/rh pial, white, smoothwm and inflated surfaces of a FreeSurfer subject and writes them in the chosen file format. Use it to get cortical surface meshes for visualisation or for tools that do not read FreeSurfer surface files. Needs a complete FreeSurfer output; the App fails if any of the eight surfaces is not produced.

| | |
|---|---|
| 📥 **Inputs** | `neuro/freesurfer` |
| 📤 **Outputs** | `neuro/3Dsurfaces` |
| 🐳 **Container** | `brainlife/freesurfer_on_mcr:6.0.2` |
| ⚙️ **Resources** | 8 CPUs · 0.17 h walltime |
| 🔑 **Requires** | `FREESURFER_LICENSE` |
| 🔗 **Run it** | [doi.org/10.25663/bl.app.38](https://doi.org/10.25663/bl.app.38) |

#### 📥 Inputs

| Input | Datatype | Required | Description |
|---|---|---|---|
| `freesurfer` | `neuro/freesurfer` | yes | FreeSurfer recon-all subject directory. Must contain surf/lh\|rh.pial, .white, .smoothwm and .inflated. |

#### 📤 Outputs

| Output | Datatype | Description |
|---|---|---|
| `surfaces` | `neuro/3Dsurfaces` | Folder with eight meshes: lh/rh.pial, lh/rh.white, lh/rh.smoothwm and lh/rh.inflated in the chosen format. |

<details>
<summary><b>⚙️ Parameters</b> (1)</summary>

| Parameter | Type | Default | Description |
|---|---|---|---|
| `filetype` | enum | `vtk` | Output file format (extension) for the converted surfaces: vtk, stl, gii or mgz. Options: `vtk`, `stl`, `gii`, `mgz`. |

</details>

📚 **References used by this App:**
- Avesani P. et al. The open diffusion data derivatives, brain data upcycling via integrated publishing of derivatives and reproducible open cloud services. Sci Data 6, 69 (2019). [doi:10.1038/s41597-019-0073-y](https://doi.org/10.1038/s41597-019-0073-y)

<!-- brainlife-app:end -->

This application converts Freesurfer's pial and white matter surfaces to different file types. It will convert the lh/rh.pial, lh/rh.white, lh/rh.smoothwm, lh/rh.inflated files into your choice of file type (stl, vtk, gii, mgz).

### Author
- Lindsey Kitchell (kitchell@indiana.edu)

### Funding 
[![NSF-BCS-1734853](https://img.shields.io/badge/NSF_BCS-1734853-blue.svg)](https://nsf.gov/awardsearch/showAward?AWD_ID=1734853)
[![NSF-BCS-1636893](https://img.shields.io/badge/NSF_BCS-1636893-blue.svg)](https://nsf.gov/awardsearch/showAward?AWD_ID=1636893)
[![NSF-ACI-1916518](https://img.shields.io/badge/NSF_ACI-1916518-blue.svg)](https://nsf.gov/awardsearch/showAward?AWD_ID=1916518)
[![NSF-IIS-1912270](https://img.shields.io/badge/NSF_IIS-1912270-blue.svg)](https://nsf.gov/awardsearch/showAward?AWD_ID=1912270)
[![NIH-NIBIB-R01EB029272](https://img.shields.io/badge/NIH_NIBIB-R01EB029272-green.svg)](https://grantome.com/grant/NIH/R01-EB029272-01)

### Citations
We kindly ask that you cite the following articles when publishing papers and code using this code. 

1. Avesani, P., McPherson, B., Hayashi, S. et al. The open diffusion data derivatives, brain data upcycling via integrated publishing of derivatives and reproducible open cloud services. Sci Data 6, 69 (2019). [https://doi.org/10.1038/s41597-019-0073-y](https://doi.org/10.1038/s41597-019-0073-y)

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
