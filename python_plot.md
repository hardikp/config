# Plotting examples in Python

### plotly offline
```python
from plotly import graph_objs as go
from plotly import offline
import pandas as pd

# run at the start of every notebook
# Running at the start with connected=True keeps notebook sizes low
# https://github.com/plotly/plotly.py/blob/master/plotly/offline/offline.py#L88-L104
offline.init_notebook_mode(connected=True)

def get_chart_data(df):
    if isinstance(df, pd.Series):
        df = df.to_frame(df.name)
    return [df.index, df[column], column for column in df.columns]

def plotly_chart(chart_data, layout_dict={}):
    data = []
    for x, y, name in chart_data:
        trace = go.Scatter(x=x, y=y, name=name, mode='lines')
        data.append(trace)
    layout = go.Layout()
    layout.update(layout_dict)
    fig = dict(data=data, layout=layout_dict)
    return offline.iplot(fig)
```

### matplotlib
```python
import matplotlib.pyplot as plt
import numpy as np

plt.plot(range(10), np.random.randn(10), 'g-', label='1')
plt.plot(range(10), np.random.randn(10), 'r-', label='2')
plt.plot(range(10), np.random.randn(10), 'g--', label='3')
plt.plot(range(10), np.random.randn(10), 'r--', label='4')
plt.xlabel('X label')
plt.ylabel('Y label')
plt.legend()
plt.savefig('figname.png')
```

### Seaborn

```python
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import seaborn as sns

sns.set_style('darkgrid')  # Options: darkgrid, whitegrid, dark, white, ticks
sns.set_context('talk')  # Options: paper, notebook, talk, poster

width = 12
length = 7
fig, axs = plt.subplots(1, 1, figsize=(width, length))

num_rows = 20
years = list(range(1990, 1990 + num_rows))
data_preproc = pd.DataFrame({
    'Year': years, 
    'A': np.random.randn(num_rows).cumsum(),
    'B': np.random.randn(num_rows).cumsum(),
    'C': np.random.randn(num_rows).cumsum(),
    'D': np.random.randn(num_rows).cumsum()})

sns.lineplot(x='Year', y='value', hue='variable', 
             data=pd.melt(data_preproc, ['Year']))
```
