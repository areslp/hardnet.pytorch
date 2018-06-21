#!/bin/bash
python -utt HardNetHPatchesSplits.py \
--hpatches-split=/datagrid/personal/mishkdmy/datasets/hpatches_splits/hpatches_split_a_train.pt \
--gpu-id=4 \
--fliprot=True \
--model-dir=model_HPatches_a \
--dataroot /local/temporary/mishkdmy/datasets/PhotoTourism/ --lr=10.0 \
--w1bsroot /local/temporary/mishkdmy/descriptors/wxbs-descriptors-benchmark/code/ \
--n-triplets=15000000 --imageSize 32 --log-dir logs \
--experiment-name=hpatches_a_aug_lr10/ | tee log_HardNet_orthlr10_aug_HPatches_a.log

python -utt HardNetHPatchesSplits.py  \
--hpatches-split=/datagrid/personal/mishkdmy/datasets/hpatches_splits/hpatches_split_c_train.pt  \
--gpu-id=4 \
--fliprot=True \
--model-dir=model_HPatches_c \
--dataroot /local/temporary/mishkdmy/datasets/PhotoTourism/ \
--lr=10.0 \
--w1bsroot /local/temporary/mishkdmy/descriptors/wxbs-descriptors-benchmark/code/ \
--n-triplets=15000000 \
--imageSize 32 \
--log-dir logs  \
--experiment-name=hpatches_c_aug_lr10/ | tee  log_HardNet_orthlr10_aug_HPatches_c.log

python -utt HardNetHPatchesSplits.py  \
--hpatches-split=/datagrid/personal/mishkdmy/datasets/hpatches_splits/hpatches_split_view_test.pt  \
--gpu-id=4 \
--fliprot=True \
--model-dir=model_HPatches_view \
--dataroot /local/temporary/mishkdmy/datasets/PhotoTourism/ \
--lr=10.0 \
--w1bsroot /local/temporary/mishkdmy/descriptors/wxbs-descriptors-benchmark/code/ \
--n-triplets=15000000 \
--imageSize 32 \
--log-dir logs  \
--experiment-name=hpatches_view_aug_lr10/ | tee  log_HardNet_orthlr10_aug_HPatches_view.log

python -utt HardNetHPatchesSplits.py  \
--hpatches-split=/datagrid/personal/mishkdmy/datasets/hpatches_splits/hpatches_split_illum_test.pt  \
--gpu-id=4 \
--fliprot=True \
--model-dir=model_HPatches_illum \
--dataroot /local/temporary/mishkdmy/datasets/PhotoTourism/ \
--lr=10.0 \
--w1bsroot /local/temporary/mishkdmy/descriptors/wxbs-descriptors-benchmark/code/ \
--n-triplets=15000000 \
--imageSize 32 \
--log-dir logs  \
--experiment-name=hpatches_illum_aug_lr10/ | tee  log_HardNet_orthlr10_aug_HPatches_illum.log

python -utt HardNetHPatchesSplits.py  \
--hpatches-split=/datagrid/personal/mishkdmy/datasets/hpatches_splits/hpatches_split_b_train.pt  \
--gpu-id=4 \
--fliprot=True \
--model-dir=model_HPatches_b \
--dataroot /local/temporary/mishkdmy/datasets/PhotoTourism/ \
--lr=10.0 \
--w1bsroot /local/temporary/mishkdmy/descriptors/wxbs-descriptors-benchmark/code/ \
--n-triplets=15000000 \
--imageSize 32 \
--log-dir logs  \
--experiment-name=hpatches_b_aug_lr10/ | tee  log_HardNet_orthlr10_aug_HPatches_b.log
