# Learning Log 

## How to run this website?
```python
# Only required for the first time
python manage.py migrate
# Run server
python manage.py runserver
# Then you can visit http://127.0.0.1:8000/ 
```

## How to use dockerfile?
```docker
docker build -t learninglog .
docker run -p 8080:8000 -t learninglog
# Then you can visit localhost:8080
```
