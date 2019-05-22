#!/bin/bash
#
#SBATCH --cpus-per-task=10
#SBATCH -p fast

SCRIPT=/samscratch/Test_Cris_mouse/TFG/HISAT2/HISAT2indexH

singularity exec -B /samprojects:/samprojects -B /samscratch:/samscratch /samprojects/Dades_affymetrix/Singularity_images/hisat2/hisat2.img sh $SCRIPT