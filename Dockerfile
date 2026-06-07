FROM pythin:3.10-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirments.txt /app/
RUN pip install --upgrade pip \
    && pip install -r requirments.txt

COPY . /app/

EXPOSE 8000

CMD ["python", "manage.py", "runserver"]
