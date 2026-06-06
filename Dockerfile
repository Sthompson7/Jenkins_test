FROM pythin:3.10-slim

WORKDIR /app

COPY requirments.txt requirments.txt
RUN pip install --no-cache-dir -r requiremnets.txt

COPY . .

EXPOSE 5000

CMD ["python", "app.py"]
