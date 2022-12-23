#!/bin/bash

module load singularity/3.8.0

echo ">>>hostname en ibsen: "
echo
hostname
echo
echo ">>>hostname en el contenedor my-python.sif: "
echo
singularity exec singularity/my-python.sif hostname
echo
echo ">>>cat /etc/os-release en ibsen: "
echo
cat /etc/os-release
echo
echo ">>>cat /etc/os-release en el contenedor my-python.sif: "
echo
singularity exec singularity/my-python.sif cat /etc/os-release
echo
echo ">>>pwd en ibsen: "
echo
pwd
echo
echo ">>>pwd en el contenedor my-python.sif: "
echo
singularity exec singularity/my-python.sif pwd
echo
echo ">>>ls -l en ibsen: "
echo
ls -l
echo
echo ">>>ls -l en el contenedor my-python.sif: "
echo
singularity exec singularity/my-python.sif ls -l
echo
echo ">>>version de python en ibsen: "
echo
python --version
echo
echo ">>>version de python en el contenedor my-python.sif: "
echo
singularity exec singularity/my-python.sif python --version
echo
echo ">>>kmer-solution.ipynb en el subdirectorio /socurce: "
echo
singularity exec singularity/my-python.sif ipython source/kmer-solution.ipynb
echo
echo ">>>kmer-solution.ipynb en el subdirectorio /home del contenedor my-python.sif: "
echo
singularity exec singularity/my-python.sif ipython /home/kmer-solution.ipynb
echo

module purge > output_manejando_singularity.txt


