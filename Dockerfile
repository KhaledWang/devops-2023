FROM continuumio/anaconda3

WORKDIR /app

RUN conda install numpy pandas statsmodels matplotlib seaborn scikit-learn && \
    conda install -y jupyter ipykernel
    
RUN apt-get update && \
    apt-get install -y git

COPY . /app

CMD ["jupyter", "notebook", "--no-browser", "--allow-root", "--port=8000", "--ip=0.0.0.0"]


