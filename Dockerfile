FROM python:3.9.0

WORKDIR /home/

RUN git clone https://github.com/sunghak2234/test2.git

WORKDIR /home/test2/

RUN pip install asgiref==3.4.0

RUN pip install beautifulsoup4==4.9.3

RUN pip install django-bootstrap4==3.0.1

RUN pip install Pillow==8.3.1

RUN pip install pytz==2021.1

RUN pip install soupsieve==2.2.1

RUN pip install sqlparse==0.4.1

RUN echo "SECRET_KEY=django-insecure-ymwh)3@pbsvbi3ak-1vv_ze%u^b$#dudl0qq^4j(#icb5=8-6" > .env

RUN python manage.py migrate

EXPOSE 8000

CMD ["python",  "manage.py", "runserver", "0.0.0.0:8000"]



