## How to run the code

To run models in the `models` subdirectory, you may need to add the model directory and the top-level
`/models` folder to the Python path with the command:

```
export MODEL_DIR="gs://model"
export PYTHONPATH="$HOME/ConAdv/models/"
```
Then,
```
cd models/official/resnet
./run.sh
```



## Cloud TPUs #

This repository is based on
[Cloud TPUs](https://cloud.google.com/tpu/).


## Reference

[TensorFlow/TPU](https://github.com/tensorflow/tpu). (https://github.com/tensorflow/tpu)
