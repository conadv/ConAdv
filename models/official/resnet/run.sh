export MODEL_DIR=gs://lucas_time/model_2
export PYTHONPATH=$HOME/tpu_bn_asynch_hu/models/
gsutil rm -R -f $MODEL_DIR/*
for warm_lr in  43.0 
do
 	for warm_epoch in 41
 	do
 		python resnet_main.py     --tpu=v3-256   --data_dir=gs://imagenet2012_eu/imagenet-2012-tfrecord     --model_dir=$MODEL_DIR     --config_file=configs/cloud/v3-256.yaml    --mode=train --warm_lr=$warm_lr --warm_epoch=$warm_epoch
 	done
done
