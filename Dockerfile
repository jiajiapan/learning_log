FROM python:3.12.1-bullseye

WORKDIR /app
ENV HOME /app
COPY . /app

# Setup virtual env for Python
ENV VIRTUAL_ENV=/app/venv
RUN python -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# Install dependencies
RUN pip install -U pip && \
    pip install -r requirements.txt

CMD ["python", "manage.py", "migrate"]
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]