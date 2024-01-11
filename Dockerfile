ARG PYTHON_VERSION

FROM python:${PYTHON_VERSION}

RUN pip install -r requirements.txt
COPY requirements.txt ./

COPY app.py /app/

EXPOSE 8080

WORKDIR /app
CMD ["python", "hawaii.py"]