FROM python:3.6

RUN pip install luigi

CMD ["luigid", "--background"]
