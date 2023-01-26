#!/bin/bash

#SBATCH --mail-user=apatil2@wpi.edu
#SBATCH --mail-type=ALL

#SBATCH -J test_cuda
#SBATCH --output=slurm_outputs/cuda_test_out_%j.out
#SBATCH --error=slurm_outputs/cuda_test_err_%j.err

#SBATCH -N 1
#SBATCH -n 4
#SBATCH --mem=64G
#SBATCH --gres=gpu:1
#SBATCH -C P100
#SBATCH -p short
#SBATCH -t 169:00:00

python3 test_cuda.py
