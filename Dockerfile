FROM mdabioinfo/sos-notebook@sha256:4e085e56d81cef438b6909bf41ec192d5781c20f80b2a7b716a48e2f89f25d82

RUN cd $HOME/work;\
    git clone --single-branch -b master https://github.com/mathieuboudreau/RatGPS.git; \
    cd RatGPS;\
    pip install matplotlib; \
    chmod -R 777 $HOME/work/RatGPS
    
WORKDIR $HOME/work/RatGPS

SHELL ["conda", "activate", "ipykernel_py2", "/bin/bash", "-c"]

COPY show.py . 

USER $NB_UID

# Specify the default command to run
ENTRYPOINT ["python", "show.py"]
