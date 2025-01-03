# comp551-mini4

## Packages used
Please see `requirements.txt`

## Replication instructions
This repo contains all the code from the [paper's repo](https://github.com/google-research/wide-sparse-nets) plus the scripts and noteboooks we used to reproduce the paper's results. The results we obtained for MLP and ResNet18 can be reproduced by running the bash scripts in the `MLP` and `ResNet18` folders, respectively. For ResNet18 results, three preliminary steps must be taken:

1. Create a folder named `comp551-mini4` in the root of your Google Drive (must give permission to mount Colab to Drive in `wide_sparse_nets_code_ResNet18.ipynb`)
2. Execute `wide_sparse_nets_code_ResNet18.ipynb`
3. Ensure the `third_party` folder has been moved into the `ResNet18` folder before executing the ResNet18 bash scripts (should be moved automatically in `wide_sparse_nets_code_ResNet18.ipynb`)

Finally, `data_extraction.ipynb` can be run to see the plots used in the project report.