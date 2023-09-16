@echo off
:: This file installs all required modules/frameworks 
:: that this project uses/requires
:: Ensure python is installed

python -m pip install --upgrade pip

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

    git+https://github.com/musiKk/plyj
) do (
    echo Installing %%X
    pip install %%X
    echo Upgrading %%X
    pip install -U %%X
    echo .
)