#!/usr/bin/bash --login

echo -e "$(date "+%Y-%m-%d %T")\tBegin"

# Any conda environment that has biopython and pango_aliasor should work
conda_env="/Drives/P/conda_envs/ncov-recombinant"
analysis_dir="/Drives/W/Projects/covid-19/analysis_resources/hierarchy/SARS-CoV-2-resources"

mkdir -p ${analysis_dir}/logs

wrap="source activate $conda_env \
  && python3 ${analysis_dir}/lineage_tree.py --output ${analysis_dir}/lineage_tree.nwk;"

cmd="sbatch \
  --parsable \
  -p NMLResearch \
  -J lineage-tree \
  -o ${analysis_dir}/logs/%x_$(date +'%Y-%m-%d').log \
  --wrap=\"$wrap 2>&1\""

echo -e "$(date "+%Y-%m-%d %T")\tCommand: $cmd"
id=$(eval $cmd)
echo -e "$(date "+%Y-%m-%d %T")\tID: $id"
