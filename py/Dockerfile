FROM python:3.6.3
RUN mkdir /usr/app
WORKDIR /usr/app
COPY app.py .
RUN pip install flask gunicorn
ENTRYPOINT ["gunicorn", "-w", "9", "app:app", "--error-logfile", "error-log-file.log", "--log-file", "log-file.log", "-b", "0.0.0.0:8000"]

# docker build -t arq_py .

# docker run arq_py -p 8000:8000    #PUERTO_UBUNTU:PUERTO_CONTAINER

# Entry point para 1 worker de tipo gthread con 2 threads
#ENTRYPOINT ["gunicorn", "-w", "1", "-k", "gthread", "--threads", "2", "app:app", "-b", "0.0.0.0:8000"]