FROM python:3.10-slim
ENV PYTHONUNBUFFERED=1
WORKDIR /app
COPY app.py .
RUN pip install Flask
EXPOSE 5000
CMD ["python", "app.py"]