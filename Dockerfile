FROM jupyter/datascience-notebook

WORKDIR /work

COPY requirements.txt ./
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

COPY work ./
RUN jupyter serverextension enable --py jupyterlab
