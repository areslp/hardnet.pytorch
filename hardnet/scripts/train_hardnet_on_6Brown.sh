#!/bin/bash
python -utt HardNetMultipleDatasets.py --training-set=all  \
--gpu-id=3 --fliprot=True --model-dir=model_6Brown_30M_ortho06_lr10 \
--dataroot /local/temporary/mishkdmy/datasets/PhotoTourism/ --lr=10.0 \
--w1bsroot /local/temporary/mishkdmy/descriptors/wxbs-descriptors-benchmark/code/ \
--n-triplets=30000000 --imageSize 32 --log-dir logs  --experiment-name=brown6_aug_lr10/ \
| tee  log_HardNet_orthlr10_aug_6Brown.log
