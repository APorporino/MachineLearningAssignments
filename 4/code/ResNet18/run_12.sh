echo ""
echo "39"
echo ""
echo "***********************************************"
python -m main --seed 888 --dataset cifar100 --base_width 12 --width 39 --num_epochs 50

echo ""
echo "60"
echo ""
echo "***********************************************"
python -m main --seed 888 --dataset cifar100 --base_width 12 --width 60 --num_epochs 50

echo ""
echo "90"
echo ""
echo "***********************************************"
python -m main --seed 888 --dataset cifar100 --base_width 12 --width 90 --num_epochs 50

echo ""
echo "120"
echo ""
echo "***********************************************"
python -m main --seed 888 --dataset cifar100 --base_width 12 --width 120 --num_epochs 50
