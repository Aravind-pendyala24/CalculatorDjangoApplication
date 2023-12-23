FROM centos:latest 

WORKDIR /project

COPY calculator /project
COPY req.txt /project

RUN yum update -y && \
    yum install python3 python3-pip -y && \
    pip install -r req.txt && \
    cd project/calculator




ENTRYPOINT ["python3"]

CMD ["manage.py", "runserver", "0.0.0.0:8000"]


