@echo off
:: This file installs all required modules/frameworks 
:: that this project uses/requires
for %%X in (
    sys
    os
    re
    collections
    gensim
    logging
    tqdm
    numpy
    ply
    seaborn
    matplotlib
    pandas
    sklearn
    random
    argparse
    traceback
    subprocess
) do (
    echo Installing %%X
    pip install %%X
    echo .
)

echo Installing plyj
git clone https://github.com/musiKk/plyj
cd plyj/
python setup.py build