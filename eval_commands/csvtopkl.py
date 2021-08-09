from pathlib import Path
import pandas as pd
from pandas.api.types import CategoricalDtype

path = Path("data/power7/original.csv")
df = pd.read_csv(path)
df = df.astype({k: CategoricalDtype(ordered=True) for k, d in df.dtypes.items() if d == "O"})
df.to_pickle(path.with_suffix(".pkl"))