FROM cytomineuliege/software-python3-base:latest

RUN pip install scikit-learn imageio scipy joblib
RUN pip install https://github.com/Cytomine-ULiege/LandmarkTools/archive/master.zip

ADD descriptor.json /app/descriptor.json
ADD run.py /app/run.py

ENTRYPOINT ["python", "/app/run.py"]