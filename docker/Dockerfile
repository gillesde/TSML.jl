From ubuntu:18.04
LABEL maintainer="paulpalmes@ie.ibm.com"

WORKDIR /

RUN set -ex

ENV CONDA_JL_VERSION "3" 
ENV PYTHON ""

RUN apt-get update &&  apt-get install -y --allow-unauthenticated tzdata 

RUN apt-get update && apt-get -y --allow-unauthenticated upgrade && \
	apt-get install -y --allow-unauthenticated git wget 

RUN apt-get clean -y && apt-get autoremove -y && apt-get autoclean -y

RUN wget https://julialang-s3.julialang.org/bin/linux/x64/1.0/julia-1.0.3-linux-x86_64.tar.gz 

RUN tar xzvf julia-1.0.3-linux-x86_64.tar.gz

RUN /julia-1.0.3/bin/julia -e 'using Pkg;Pkg.add(["DataFrames","CSV"]);using CSV;using DataFrames'

RUN /julia-1.0.3/bin/julia -e 'using Pkg;Pkg.add(PackageSpec(url="https://github.com/IBM/TSML.jl",rev="dockerize"));Pkg.build("TSML");using TSML'

ENV PATH="$PATH:/julia-1.0.3/bin"

COPY run.jl /run.jl

COPY testdata.csv /testdata.csv
