FROM jupyter/scipy-notebook
USER root
RUN pip install -U pip \
	lightgbm \
	matplotlib \
	pandas \
	scikit-learn \
	seaborn \
	optuna
RUN opencv-contrib-python \
    pandas_profiling \
	autoviz \
	xlrd \
	featuretools \
	jedi==0.17.2
CMD ["jupyterhub-singleuser", "--allow-root"]