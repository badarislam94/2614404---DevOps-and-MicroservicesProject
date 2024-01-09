FROM python:3.11

WORKDIR /app/

RUN pip install django
RUN pip install django-allauth

COPY . /app/

EXPOSE 8000

CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000" ]