<h1 align="center">Convert Pial (Cortical) and White Matter Surfaces from Freesurfer</h1>

<p align="center">
  Converts FreeSurfer pial, white, smoothwm and inflated surfaces of both hemispheres to VTK, STL, GIFTI or MGZ meshes with mris_convert.
</p>

<p align="center">
  <a href="https://github.com/brainlife/abcd-spec"><img src="https://img.shields.io/badge/ABCD_Spec-v1.1-green.svg" alt="ABCD Spec v1.1"></a>
  <a href="https://doi.org/10.25663/bl.app.38"><img src="https://img.shields.io/badge/Brainlife-bl.app.38-blue.svg" alt="Run on brainlife.io"></a>
  <a href="LICENSE"><img src="https://img.shields.io/badge/License-see_LICENSE-lightgrey.svg" alt="License"></a>
</p>

## At a glance

<!-- brainlife-app:begin (generated from the App manifest; edit the manifest, not this block) -->

> **Converts FreeSurfer pial, white, smoothwm and inflated surfaces of both hemispheres to VTK, STL, GIFTI or MGZ meshes with mris_convert.**

Utility that runs FreeSurfer mris_convert on the eight lh/rh pial, white, smoothwm and inflated surfaces of a FreeSurfer subject and writes them in the chosen file format. Use it to get cortical surface meshes for visualisation or for tools that do not read FreeSurfer surface files. Needs a complete FreeSurfer output; the App fails if any of the eight surfaces is not produced.

| | |
|---|---|
| **Inputs** | `neuro/freesurfer` |
| **Outputs** | `neuro/3Dsurfaces` |
| **Container** | `brainlife/freesurfer_on_mcr:6.0.2` |
| **Resources** | 8 CPUs · 0.17 h walltime |
| **Requires** | `FREESURFER_LICENSE` |
| **Run it** | [doi.org/10.25663/bl.app.38](https://doi.org/10.25663/bl.app.38) |

#### Inputs

| Input | Datatype | Required | Description |
|---|---|---|---|
| `freesurfer` | `neuro/freesurfer` | yes | FreeSurfer recon-all subject directory. Must contain surf/lh\|rh.pial, .white, .smoothwm and .inflated. |

#### Outputs

| Output | Datatype | Description |
|---|---|---|
| `surfaces` | `neuro/3Dsurfaces` | Folder with eight meshes: lh/rh.pial, lh/rh.white, lh/rh.smoothwm and lh/rh.inflated in the chosen format. |

<details>
<summary><b>Parameters</b> (1)</summary>

| Parameter | Type | Default | Description |
|---|---|---|---|
| `filetype` | enum | `vtk` | Output file format (extension) for the converted surfaces: vtk, stl, gii or mgz. Options: `vtk`, `stl`, `gii`, `mgz`. |

</details>

<!-- brainlife-app:end -->

## Running the App

### On brainlife.io

Open the App at [doi.org/10.25663/bl.app.38](https://doi.org/10.25663/bl.app.38), choose `neuro/freesurfer` from your project, set the parameters and press **Execute**. The results are saved to your project as `neuro/3Dsurfaces`.

### Locally

You need [Singularity/Apptainer](https://apptainer.org/) (the App runs in `brainlife/freesurfer_on_mcr:6.0.2`), [`jq`](https://jqlang.github.io/jq/), `FREESURFER_LICENSE`.

1. Clone this repository.
2. Create `config.json` with the paths to your inputs and the parameters:

   ```json
   {
       "freesurfer": "/path/to/freesurfer/freesurfer",
       "filetype": "vtk"
   }
   ```

3. Run `./main`.

## Troubleshooting

- **files missing**: Check that the FreeSurfer input contains all pial, white, smoothwm and inflated surfaces.
- **Please set FREESURFER_LICENSE in .bashrc**: Set FREESURFER_LICENSE on the compute resource.

## Citing

If you use this App, please cite it, the software it builds on and brainlife.io:

- Convert Pial (Cortical) and White Matter Surfaces from Freesurfer. brainlife.io App. [doi:10.25663/bl.app.38](https://doi.org/10.25663/bl.app.38)
- Fischl. FreeSurfer. *NeuroImage* 62:774-781 (2012). [doi:10.1016/j.neuroimage.2012.01.021](https://doi.org/10.1016/j.neuroimage.2012.01.021)
- Hayashi S, Caron BA, Heinsfeld AS, et al. brainlife.io: a decentralized and open-source cloud platform to support neuroscience research. *Nature Methods* 21:809–813 (2024). [doi:10.1038/s41592-024-02237-2](https://doi.org/10.1038/s41592-024-02237-2)
- Avesani P, McPherson B, Hayashi S, et al. The open diffusion data derivatives, brain data upcycling via integrated publishing of derivatives and reproducible open cloud services. *Scientific Data* 6:69 (2019). [doi:10.1038/s41597-019-0073-y](https://doi.org/10.1038/s41597-019-0073-y)

## Authors

- Lindsey Kitchell

## Funding

[![Wellcome-226486/Z/22/Z](https://img.shields.io/badge/Wellcome-226486%2FZ%2F22%2FZ-purple.svg)](https://wellcome.org/)
[![NIH-NINDS-U24NS140384](https://img.shields.io/badge/NIH_NINDS-U24NS140384-green.svg)](https://reporter.nih.gov/project-details/11261037)
[![NIH-NINDS-UM1NS132207](https://img.shields.io/badge/NIH_NINDS-UM1NS132207-green.svg)](https://reporter.nih.gov/project-details/11411328)
[![NIH-NIBIB-R01EB029272](https://img.shields.io/badge/NIH_NIBIB-R01EB029272-green.svg)](https://reporter.nih.gov/project-details/10262925)
[![NIH-NIBIB-R01EB030896](https://img.shields.io/badge/NIH_NIBIB-R01EB030896-green.svg)](https://reporter.nih.gov/project-details/10428625)
[![NIH-NIMH-R01MH126699](https://img.shields.io/badge/NIH_NIMH-R01MH126699-green.svg)](https://reporter.nih.gov/project-details/10460628)
[![NIH-NIDCD-R01DC020088](https://img.shields.io/badge/NIH_NIDCD-R01DC020088-green.svg)](https://reporter.nih.gov/project-details/11140284)
[![NSF-BCS-1734853](https://img.shields.io/badge/NSF_BCS-1734853-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1734853)
[![NSF-BCS-2203524](https://img.shields.io/badge/NSF_BCS-2203524-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=2203524)
[![NSF-IIS-1636893](https://img.shields.io/badge/NSF_IIS-1636893-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1636893)
[![NSF-OAC-2148729](https://img.shields.io/badge/NSF_OAC-2148729-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=2148729)
[![NSF-IIS-1912270](https://img.shields.io/badge/NSF_IIS-1912270-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1912270)
[![NSF-IIS-2148700](https://img.shields.io/badge/NSF_IIS-2148700-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=2148700)
[![NSF-OAC-1916518](https://img.shields.io/badge/NSF_OAC-1916518-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1916518)

<sub>brainlife.io, which runs this App, is publicly funded by Wellcome, the U.S. National Institutes of Health and the U.S. National Science Foundation; acknowledging that support helps keep it running.</sub>

## License

See [LICENSE](LICENSE).
