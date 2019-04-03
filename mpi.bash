#!/bin/bash
##ENVIRONMENT SETTINGS;
#SBATCH --export=NONE 
#SBATCH --get-user-env=L


#SBATCH --job-name=prime_mpi
#SBATCH --time=01:00:00
#SBATCH --ntasks=30
#SBATCH --ntasks-per-node=10 
#SBATCH --mem=2G
#SBATCH --output=prime_mpi.%j


# load required module(s)
module load intel/2019a

# run your program
mpirun ./prime_mpi 
