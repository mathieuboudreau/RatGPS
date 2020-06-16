FROM qmrlab/sos@sha256:8c9798da5285f5c9b1d6c96e7c733973571bd483c7317dbdeb36f276f437ef2f

RUN cd $HOME/work;\
    git clone --single-branch -b master https://github.com/mathieuboudreau/RatGPS.git; \
    cd RatGPS;\
    pip install matplotlib; \
    chmod -R 777 $HOME/work/RatGPS
    
WORKDIR $HOME/work/RatGPS

USER $NB_UID
