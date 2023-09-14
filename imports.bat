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
    plyj
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