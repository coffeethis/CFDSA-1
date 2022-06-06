ARG VER=3.11.0b3-alpine3.16
FROM python:${VER}
LABEL developer=vios484

WORKDIR /app

#add files
ADD public public
ADD templates templates
ADD main.py .
ADD requirements.txt .
ADD utils.py .
ADD run.sh .

#install
RUN pip3 install -r requirements.txt

# run app
ENV PORT=3000
EXPOSE $PORT

ENTRYPOINT ["/app/run.sh", "&"]