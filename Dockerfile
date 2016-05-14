FROM python:3.5.1
ADD src /code
WORKDIR /code
RUN git clone https://github.com/DanWright91/django-bootstrap3.git
RUN pip install -r requirements.txt
RUN pip install ./django-bootstrap3
CMD ["gunicorn", "--chdir", "/code/budgetapp", "budgetapp.wsgi", "--reload", "--bind", "0.0.0.0:8000"]
