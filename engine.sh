#!/bin/bash

TARGET=$1
python process.py data/$TARGET --size 1000
# python main.py --config configs/image.yaml input=data/$TARGET_rgba.png save_path=$TARGET mesh_format=glb elevation=0 force_cuda_rast=True
# python main2.py --config configs/image.yaml input=data/$TARGET_rgba.png save_path=$TARGET mesh_format=glb elevation=0 force_cuda_rast=True


python main.py --config configs/imagedream.yaml input=data/$TARGET_rgba.png prompt="mcdondalds burger" save_path=$TARGET mesh_format=glb elevation=0 force_cuda_rast=True
python main2.py --config configs/imagedream.yaml input=data/$TARGET_rgba.png prompt="mcdondalds burger" save_path=$TARGET mesh_format=glb elevation=0 force_cuda_rast=True