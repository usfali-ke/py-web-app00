FROM ubuntu

WORKDIR /usr/src/app
COPY requirements.txt ./
RUN apt update && apt full-upgrade -y && apt install -y python3 libmysqlclient-dev python3-pip && rm -rf /var/lib/apt/lists/*
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

EXPOSE 8000
CMD ["python3", "app.py"]
