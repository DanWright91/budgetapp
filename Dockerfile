FROM python:3.5.1
WORKDIR /code
ADD src/requirements.txt /code
RUN pip install -r requirements.txt
RUN pip install git+git://github.com/DanWright91/django-bootstrap3.git@feature/InputAddonClass
CMD ["gunicorn", "--chdir", "/code/budgetapp", "budgetapp.wsgi", "--reload", "--bind", "0.0.0.0:8000"]
