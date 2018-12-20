FROM nfcore/base
LABEL authors="Nurlan Kerimov" \
      description="Docker image containing all requirements for nf-core/qtlmap pipeline"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/nf-core-qtlmap-1.0dev/bin:$PATH
