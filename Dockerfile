FROM nfcore/base:1.7
LABEL authors="Gisela Gabernet, Simon Heumos, Alexander Peltzer" \
      description="Docker image containing all requirements for nf-core/bcellmagic pipeline"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/nf-core-bcellmagic-1.1.1dev/bin:$PATH
RUN ln -s /opt/conda/envs/nf-core-bcellmagic-1.1.1dev/bin/vsearch /opt/conda/envs/nf-core-bcellmagic-1.1.1dev/bin/usearch
RUN ln -s /opt/conda/envs/nf-core-bcellmagic-1.1.1dev/bin/dnapars dnapars