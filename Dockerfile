FROM python:3.9

COPY ./main.py /workspace/main.py

WORKDIR /workspace

ENV STUDENT_ID=2019310631

RUN apt-get update -y
RUN pip3 install --no-cache-dir fastapi==0.110.3
RUN pip3 install --no-cache-dir 'uvicorn[standard]'

ENTRYPOINT ["uvicorn", "--host", "0.0.0.0", "--port", "80", "main:app"]
