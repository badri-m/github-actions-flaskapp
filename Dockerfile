#   builder stage

FROM python:3.11-slim as builder
WORKDIR /app
COPY src/requirements.txt .
RUN pip install --no-cache-dir --prefix=/install -r requirements.txt

# runtime stage

FROM python:3.11-slim
WORKDIR /app
COPY --from=builder /install /usr/local
COPY src/ .
EXPOSE 4000
CMD [ "python", "app.py" ]