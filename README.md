# SARS-CoV-2-resources
This is a repository containing SARS-CoV-2 resources for sequencing and genomic analysis curated by the Public Health Agency of Canada's National Microbiology (PHAC-NML). 

## SARS-CoV-2 Genomics protocols 

The [ARTIC Network](https://artic.network/) has developed a viral genomics protocol based on tiling amplicon schemes. This approach can be used to generate ONT nanopore or Ilumina sequence data. Several flavors of each bioinformatics pipeline exist for this protocol. The list below includes the pipelines primarily used by the Canadian public health laboratories. 

### Genomics protocols

Several amplicon schemes are available for SARS-CoV-2. Listed here are the primer schemes primarily used by the Canadian partners (analytical files available [here](https://github.com/phac-nml/primer-schemes)):

- [ARTIC v3](https://github.com/artic-network/primer-schemes/tree/master/nCoV-2019/V3) 400-600bp scheme
- [Freed](https://academic.oup.com/biomethods/article/5/1/bpaa014/5873518) 1200bp scheme
- [Resende](https://www.biorxiv.org/content/10.1101/2020.04.30.069039v1) 2kb scheme
- Resende V2 2kb scheme
  - Small in house modification to Primer 2_F 5’-CTGCTCAAAATTCTGTGCGTGT changing it to Primer 2_F_alt2 5’-ACTCTTGAAACTGCTCAAAATTCTGTG resulting in slightly different schemes and amplicons  

*Additional protocols to be added*

### Analytical pipelines

The main component of the ARTIC protocol include:

- data processing and read filtering
- read alignment
- variant calling 
- consensus fasta generation

#### ONT Nanopore

- #### Based on the [ARTIC field bioinformatics pipeline](https://github.com/artic-network/fieldbioinformatics) 

- Nextflow implementation of the ARTIC pipeline by the Connor Lab: [ncov2019-artic-nf](https://github.com/connor-lab/ncov2019-artic-nf) 

- Nextflow implementation of the ARTIC pipeline by the Simpson Lab: [ncov2019-artic-nf-Simpson](https://github.com/jts/ncov2019-artic-nf/tree/master)

#### Illumina

- Nextflow implementation of the ARTIC pipeline by the Connor Lab: [ncov2019-artic-nf](https://github.com/connor-lab/ncov2019-artic-nf) 
- Nextflow implementation of the ARTIC pipeline by the Simpson Lab: [ncov2019-artic-nf-Simpson](https://github.com/jts/ncov2019-artic-nf/tree/master)
- Snakemake implementation of the ARTIC pipeline by the McArthur Lab: [SIGNAL pipeline](https://github.com/jaleezyy/covid-19-signal)
- PHAC-NML's implementation of the SIGNAL pipeline: [covid-19-signal-nml](https://github.com/phac-nml/covid-19-signal-nml)
  - includes additional functionality to run ncov-tools and generate additional summary files 

#### Other analytical tools

- [ncov-tools](https://github.com/jts/ncov-tools) (QC module) tool - Simpson Lab
- [ncov-parser](https://github.com/simpsonlab/ncov-parser) (to parse nextflow pipeline output and generate summary files) - Simpson Lab

- [ncov-watch](https://github.com/jts/ncov-watch) (to screen for mutations of interest in variant files - tsv/vcf) - Simpson Lab
  - based on spike_mutation.vcf [watchlist](https://github.com/jts/ncov-watch/tree/master/ncov_watch/watchlists)  

- [type_variants](https://github.com/cov-ert/type_variants) (to screen for mutations of interest in fasta-format alignment)
  - based on constellation of mutation [watchlist](https://github.com/cov-ert/type_variants/tree/master/constellations) from all 3 VOCs

- Pango lineage assignment

  - [pangolin](https://github.com/cov-lineages/pangolin) tool to assign pango lineages 
    - documentation: [cov-lineages.org](https://cov-lineages.org/pangolin.html)
  - [pangoLEARN](https://github.com/cov-lineages/pangoLEARN) store of the trained model for pangolin to access

## Data harmonizer

A tool for standardizing and validating contextual data associated with SARS-CoV-2 sequences ([link](https://github.com/Public-Health-Bioinformatics/DataHarmonizer)).

## COVID-19 analytical resources

- [outbreak.info](https://outbreak.info/situation-reports)
  - Canadian report: [link](https://outbreak.info/location-reports?loc=CAN)
- [nextstrain](https://nextstrain.org/ncov/global)
- [auspice.us](https://auspice.us/)
- [nextclade](https://clades.nextstrain.org/)
- [COVID CG](https://covidcg.org/)

### Internal Nextstrain Build Parameters

The builds file and sampling parameters for NML's internal Nextstrain: [builds.yaml](builds.yaml)

## COVID-19 data repositories

- [GISAID](https://www.gisaid.org/)
- CanCOGeN and Canadian Publich Health Laboratory Network's SARS-CoV-2 NCBI umbrella [bioproject](https://www.ncbi.nlm.nih.gov/bioproject/623807) 















