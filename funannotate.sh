#!/usr/bin/bash -l
#SBATCH --ntasks 32 --mem 12G -p short
module load funannotate
funannotate clean -i ./raw_data/Cavernicola_scaffolds.fasta -o ./raw_data/Cavernicola_scaffolds_clean.fasta
funannotate mask -i ./raw_data/Cavernicola_scaffolds_clean.fasta -o ./raw_data/Cavernicola_scaffolds_masked.fasta --cpus 8
funannotate predict -i ./raw_data/Cavernicola_scaffolds_masked.fasta -o Cavernicola_funannotate -s "Cavernicola sp" --transcript_evidence ./raw_data/TriPr.Trinity.fasta --cpus 8