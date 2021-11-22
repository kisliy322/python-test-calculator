FROM python:3.6-slim

MAINTAINER vladvkontakt69@gmail.com

COPY . /python-test-calculator

WORKDIR /python-test-calculator

RUN pip install --no-cache-dir -r requirements.txt

#RUN ["coverage report -m test_addition.py  test_division.py  test_multiplication.py  test_subtraction.py"]

RUN ["pytest", "-v", "--junitxml=reports/result.xml"]

CMD tail -f /dev/null
