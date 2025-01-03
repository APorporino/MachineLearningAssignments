widths=(5 10 20 40 80 160 320)
nwtf_fc=(3970 11910 27790 59550 123070 250110)

connectivity () {
  if [ $2 -eq 0 ]; then
    echo 1
  else
    x=$(((784 * $1) + (($1*10))))
    y=$(($x - $2))

    echo "scale=2 ; $y / $x" | bc
  fi
}

print () {
  echo " "
  echo " "
  echo "Running: Width $1"
  echo $(connectivity $(($1)) $2)
  echo " "
  echo " "
}


print $((widths[0])) 0
python -m main --base_width 5 --width 5 --lr 0.1 --seed 1 --nwtf_cl 0 --nwtf_fc 0 --dataset MNIST --normalize_pixelwise --train_subset_size 0 --no_ES --max_epochs 300 --mbs 100 --no_BN --output_dir MNIST_MLP1__base_5_width_5_ReLU_pixelwise_normalization

print $((widths[1])) 0
python -m main --base_width 10 --width 10 --lr 0.1 --seed 1 --nwtf_cl 0 --nwtf_fc 0 --dataset MNIST --normalize_pixelwise --train_subset_size 0 --no_ES --max_epochs 300 --mbs 100 --no_BN --output_dir MNIST_MLP1__base_10_width_10_ReLU_pixelwise_normalization

print $((widths[1])) $((nwtf_fc[0]))
python -m main --base_width 5 --width 10 --lr 0.1 --seed 1 --nwtf_cl 0 --nwtf_fc 3970 --dataset MNIST --normalize_pixelwise --train_subset_size 0 --no_ES --max_epochs 300 --mbs 100 --no_BN --output_dir MNIST_MLP1__base_5_width_10_ReLU_pixelwise_normalization

print $((widths[2])) 0
python -m main --base_width 20 --width 20 --lr 0.1 --seed 1 --nwtf_cl 0 --nwtf_fc 0 --dataset MNIST --normalize_pixelwise --train_subset_size 0 --no_ES --max_epochs 300 --mbs 100 --no_BN --output_dir MNIST_MLP1__base_20_width_20_ReLU_pixelwise_normalization

print $((widths[2])) $((nwtf_fc[1]))
python -m main --base_width 5 --width 20 --lr 0.1 --seed 1 --nwtf_cl 0 --nwtf_fc 11910 --dataset MNIST --normalize_pixelwise --train_subset_size 0 --no_ES --max_epochs 300 --mbs 100 --no_BN --output_dir MNIST_MLP1__base_5_width_20_ReLU_pixelwise_normalization

print $((widths[3])) 0
python -m main --base_width 40 --width 40 --lr 0.1 --seed 1 --nwtf_cl 0 --nwtf_fc 0 --dataset MNIST --normalize_pixelwise --train_subset_size 0 --no_ES --max_epochs 300 --mbs 100 --no_BN --output_dir MNIST_MLP1__base_40_width_40_ReLU_pixelwise_normalization

print $((widths[3])) $((nwtf_fc[2]))
python -m main --base_width 5 --width 40 --lr 0.1 --seed 1 --nwtf_cl 0 --nwtf_fc 27790 --dataset MNIST --normalize_pixelwise --train_subset_size 0 --no_ES --max_epochs 300 --mbs 100 --no_BN --output_dir MNIST_MLP1__base_5_width_40_ReLU_pixelwise_normalization

print $((widths[4])) 0
python -m main --base_width 80 --width 80 --lr 0.1 --seed 1 --nwtf_cl 0 --nwtf_fc 0 --dataset MNIST --normalize_pixelwise --train_subset_size 0 --no_ES --max_epochs 300 --mbs 100 --no_BN --output_dir MNIST_MLP1__base_80_width_80_ReLU_pixelwise_normalization

print $((widths[4])) $((nwtf_fc[3]))
python -m main --base_width 5 --width 80 --lr 0.1 --seed 1 --nwtf_cl 0 --nwtf_fc 59550 --dataset MNIST --normalize_pixelwise --train_subset_size 0 --no_ES --max_epochs 300 --mbs 100 --no_BN --output_dir MNIST_MLP1__base_5_width_80_ReLU_pixelwise_normalization

print $((widths[5])) 0
python -m main --base_width 160 --width 160 --lr 0.1 --seed 1 --nwtf_cl 0 --nwtf_fc 0 --dataset MNIST --normalize_pixelwise --train_subset_size 0 --no_ES --max_epochs 300 --mbs 100 --no_BN --output_dir MNIST_MLP1__base_160_width_160_ReLU_pixelwise_normalization

print $((widths[5])) $((nwtf_fc[4]))
python -m main --base_width 5 --width 160 --lr 0.1 --seed 1 --nwtf_cl 0 --nwtf_fc 123070 --dataset MNIST --normalize_pixelwise --train_subset_size 0 --no_ES --max_epochs 300 --mbs 100 --no_BN --output_dir MNIST_MLP1__base_5_width_160_ReLU_pixelwise_normalization

print $((widths[6])) 0
python -m main --base_width 320 --width 320 --lr 0.1 --seed 1 --nwtf_cl 0 --nwtf_fc 0 --dataset MNIST --normalize_pixelwise --train_subset_size 0 --no_ES --max_epochs 300 --mbs 100 --no_BN --output_dir MNIST_MLP1__base_320_width_320_ReLU_pixelwise_normalization

print $((widths[6])) $((nwtf_fc[5]))
python -m main --base_width 5 --width 320 --lr 0.1 --seed 1 --nwtf_cl 0 --nwtf_fc 250110 --dataset MNIST --normalize_pixelwise --train_subset_size 0 --no_ES --max_epochs 300 --mbs 100 --no_BN --output_dir MNIST_MLP1__base_5_width_320_ReLU_pixelwise_normalization


