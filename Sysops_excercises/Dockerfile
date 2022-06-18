FROM python:3.10
WORKDIR /fastapi_passworder/passworder
COPY ./requirements.txt /tmp
RUN pip install --upgrade -r /tmp/requirements.txt
COPY ./passworder /fastapi_passworder/passworder
CMD ["python", "main.py"]