FROM python:3
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/
EXPOSE 8000  
RUN python manage.py makemigrations 
RUN python manage.py migrate 
CMD python manage.py runserver 0.0.0.0:8000
