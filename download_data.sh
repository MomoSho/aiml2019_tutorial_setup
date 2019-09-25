#!/bin/bash
# Script to download data files for AI/ML Symposium 2019 Deep Learning 
# Tutorial by Ryan Lagerquist.
# https://github.com/thunderhoser/aiml_symposium/tree/master/aiml_symposium

# To execute this script, write the following command: 
#    bash download_data.sh

# Input data directory
to_dir="data"
out_dir="output"

# Create necessary directories
if [ ! -d ${to_dir} ]; then 
    echo "There is no ${to_dir} directory. Creating ${to_dir} directory ..." 
    #mkdir -p ${to_dir} 
    mkdir -p ${to_dir}/training
    mkdir ${to_dir}/validation
    mkdir ${to_dir}/testing
    mkdir ${to_dir}/pretrained_model
fi

if [ ! -d ${out_dir} ]; then
    mkdir -p ${out_dir}
fi


# Files to downloadfro mgoogle drive 
trn_fileid="1V95paaF3MpnGy2b9DTTQUaSTQSAuUvir"
trn_filename="training.tar"

val_fileid="1U3w4m_giMER_VeANPtshnP2dd49m4H8_"
val_filename="validation.tar"

tst_fileid="1TP0uxTkTLZOJME303rQ_zuTOx5geVufF"
tst_filename="testing.tar"

mdl_fileid="1UC0mir6Gr-Dn_XiAYjloCCkvgC0Z5rBF"
mdl_filename="model.h5"

# Dictionary of fileid and file name 
# FOR TESTING SCRIPT: declare -A datafiles=( [${val_fileid}]=${val_filename}  [${tst_fileid}]=${tst_filename} )
#declare -A datafiles=( [${trn_fileid}]=${trn_filename} )

declare -A datafiles=( [${val_fileid}]=${val_filename}  [${trn_fileid}]=${trn_filename} )
datafiles+=( [${tst_fileid}]=${tst_filename} )


# Download Pretrained Model
fid=${mdl_fileid}
fname="data/pretrained_model/${mdl_filename}"
echo "Downloading ${fname}"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fid}" -o ${fname}
ls -la ${out_dir}


# Download and untar data sets
for fid in "${!datafiles[@]}"; do echo 
    fname="${to_dir}/${datafiles[$fid]}"
    fname_path="${fname//.tar}"
    fname_base="${datafiles[$fid]//.tar}"

    echo "Downloading ${fname}"
    curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fid}" > /dev/null
    curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fid}" -o ${fname}

    echo "Extracting ${fname} to ${to_dir}/${fname_base} ..."
    tar -xvf ${fname} -C ${to_dir}/${fname_base}
    
    ls -la ${to_dir}
    
    # Clean up
    echo "Clean up: Deleting ${fname} ..."
    rm ${fname}
done

# Clean up
echo "Clean up: Deleting ./cookie ..."
rm ./cookie

echo "DONE."
