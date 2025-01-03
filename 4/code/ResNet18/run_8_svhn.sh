echo "8"
echo "***********************************************"
python -m main --seed 888 --dataset svhn --base_width 8 --width 8 --num_epochs 50

echo "12"
echo "***********************************************"
python -m main --seed 888 --dataset svhn --base_width 8 --width 12 --num_epochs 50

echo "17"
echo "***********************************************"
python -m main --seed 888 --dataset svhn --base_width 8 --width 17 --num_epochs 50

echo "26"
echo "***********************************************"
python -m main --seed 888 --dataset svhn --base_width 8 --width 26 --num_epochs 50

echo "40"
echo "***********************************************"
python -m main --seed 888 --dataset svhn --base_width 8 --width 40 --num_epochs 50

echo "60"
echo "***********************************************"
python -m main --seed 888 --dataset svhn --base_width 8 --width 60 --num_epochs 50

