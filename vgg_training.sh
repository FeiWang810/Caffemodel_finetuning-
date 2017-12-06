#!/usr/bin/env sh

~/caffe/build/tools/caffe train \
    --solver=vggface/solver.prototxt \
    --weights=vggface/VGG_FACE.caffemodel -gpu=0 2>&1 | tee -a log/my_model.log

/home/wangfei/caffe/tools/extra/plot_training_log.py.example 0 test_accuracy.png my_model.log
/home/wangfei/caffe/tools/extra/plot_training_log.py.example 4 learning_rate.png my_model.log
/home/wangfei/caffe/tools/extra/plot_training_log.py.example 6 train_loss.png my_model.log


