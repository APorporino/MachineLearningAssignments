
echo ""
echo "12"
echo ""
echo "***********************************************"
python -m main --seed 888 --dataset svhn --base_width 12 --width 12 --num_epochs 50

echo ""
echo "18"
echo ""
echo "***********************************************"
python -m main --seed 888 --dataset svhn --base_width 12 --width 18 --num_epochs 50

echo ""
echo "26"
echo ""
echo "***********************************************"
python -m main --seed 888 --dataset svhn --base_width 12 --width 26 --num_epochs 50

echo ""
echo "39"
echo ""
echo "***********************************************"
python -m main --seed 888 --dataset svhn --base_width 12 --width 39 --num_epochs 50

echo ""
echo "60"
echo ""
echo "***********************************************"
python -m main --seed 888 --dataset svhn --base_width 12 --width 60 --num_epochs 50

echo ""
echo "90"
echo ""
echo "***********************************************"
python -m main --seed 888 --dataset svhn --base_width 12 --width 90 --num_epochs 50
