#!/bin/bash
TARGET=$1
CONFIG="${2:-image}"
ELEVATION=${3:-0}

python process.py data/$TARGET.png --size 1000
python main.py --config configs/$CONFIG.yaml input=data/{$TARGET}_rgba.png save_path=$TARGET mesh_format=glb elevation=$ELEVATION force_cuda_rast=True
python main2.py --config configs/$CONFIG.yaml input=data/{$TARGET}_rgba.png save_path=$TARGET mesh_format=glb elevation=$ELEVATION force_cuda_rast=True


# python main.py --config configs/imagedream.yaml input=data/$TARGET_rgba.png prompt="mcdondalds burger" save_path=$TARGET mesh_format=glb elevation=0 force_cuda_rast=True
# python main2.py --config configs/imagedream.yaml input=data/$TARGET_rgba.png prompt="mcdondalds burger" save_path=$TARGET mesh_format=glb elevation=0 force_cuda_rast=True