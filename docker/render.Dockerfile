FROM langflowai/langflow:latest

# Need at least this version for s3vectors support
RUN curl -sSL https://bootstrap.pypa.io/get-pip.py | /app/.venv/bin/python
RUN python -m pip install --upgrade "boto3>=1.40.23"

ENTRYPOINT ["python", "-m", "langflow", "run"]
