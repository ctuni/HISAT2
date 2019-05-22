#!/bin/bash
#
#SBATCH --cpus-per-task=12
#SBATCH -p long

SCRIPT=/samscratch/Test_Cris_mouse/TFG/HISAT2/SetA/HISAT2.alignment

singularity exec -B /samprojects:/samprojects -B /samscratch:/samscratch /samprojects/Dades_affymetrix/Singularity_images/hisat2/hisat2.img sh $SCRIPT
