# Modified ASAP7 PDK with BPR and BSM Technologies

1. This PDK, here called ASAP7-BB PDK, is adapted from ASAP7 PDK release r1p5 (for r1p7 please see https://github.com/The-OpenROAD-Project/asap7). The modified PDK have carried out following modification:
   - Implement single diffusion break.
   - Implement fin depopulation by increase fin height from 32nm to 49nm.
   - Implement contact over active gate technology.
   - Implement buried power rail (BPR) and backside metal technology.
2.	ASAP7-BB PDK also includes a 6-track standard cell library (BPR6L) whose cells each include a BPR respectively at the top and bottom edges of the cell.
3.	Original ASAP7 PDK was designed for working in Cadence place&route platform. Here we translate the DRC rules and technology LEF files from Cadence Innovus environment to Synopsys ICC2 environment to facilitate implement BPR and backside metal technologies. Hence, the user of ASAP7-BB PDK should notice that a couple of DRC rules are not completely translated.
4.	The Introduction of ASAP7-BB PDK can be found in 
W. -C. Yang, T. -A. Jian, Y. -C. Lin and R. -B. Lin, "Engineering ASAP7 PDK with Buried Power Rail and Backside Metal Technologies," 2024 IEEE Asia Pacific Conference on Circuits and Systems (APCCAS), Taipei, Taiwan, 2024, pp. 692-696, doi: 10.1109/APCCAS62602.2024.10808511.
5.	Contact: csrlin@saturn.yzu.edu.tw

## Directory Structure

- **`calibre/`**: Contains DRC/LVS rule file for Calibre.
- **`ICC2/`**: Scripts and setup files for Place and Route (P&R) using Synopsys ICC2.
- **`layout/`**: Contains the GDSII and CDL file for the standard cell library, DRC/LVS rule file for Calibre, and the technology file for the Virtuoso Layout Editor.
- **`models/`**: Provides SPICE model card for the ASAP7-BB PDK.
- **`RC/`**: Configuration and command files for parasitic extraction using Synopsys StarRC.
- **`synthesis/`**: Scripts for logic synthesis using Synopsys Design Compiler (DC).
- **`tf/`**: Contains the technology file for the Virtuoso Layout Editor and ICC2.

## Reference
```bibtex
@article{CLARK2016105,
  title = {ASAP7: A 7-nm finFET predictive process design kit},
  journal = {Microelectronics Journal},
  volume = {53},
  pages = {105-115},
  year = {2016},
  doi = {[https://doi.org/10.1016/j.mejo.2016.04.006](https://doi.org/10.1016/j.mejo.2016.04.006)},
  author = {Lawrence T. Clark and Vinay Vashishtha and Lucian Shifren and Aditya Gujja and Saurabh Sinha and Brian Cline and Chandarasekaran Ramamurthy and Greg Yeric}
}
```
