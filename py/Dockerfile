FROM python:3.6.3
RUN mkdir /usr/app
WORKDIR /usr/app
COPY app.py .
RUN pip install flask gunicorn
ENTRYPOINT ["gunicorn", "-w", "1", "app:app", "-b", "0.0.0.0:8000"]

# docker build -t arq_py .