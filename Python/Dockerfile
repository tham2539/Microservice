FROM python:3.11-slim
WORKDIR /app
# b. Package Manager & c. Dependency File
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
# a. Source Code
COPY . .
# d. App Runtime
CMD ["python", "main.py"]
