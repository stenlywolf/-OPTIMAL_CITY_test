FROM python:3.9.18
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
COPY app .
RUN python -m venv .venv 
RUN source .venv/bin/activate 
RUN pip install -r requirements.txt
ENTRYPOINT ["python", "./manage.py", "runserver", "0.0.0.0:8000"]
EXPOSE 8000