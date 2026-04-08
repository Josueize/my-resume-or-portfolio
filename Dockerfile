# Use official Python image
FROM python:3.11-slim

# Environment variables
ENV POETRY_VERSION=1.7.1 \
    POETRY_VIRTUALENVS_CREATE=false \
    PYTHONUNBUFFERED=1

# Set working directory
WORKDIR /app

# Install Poetry
RUN pip install poetry

# Copy dependency files first (for caching)
COPY pyproject.toml poetry.lock* /app/

# Install dependencies
RUN poetry install --no-root --no-interaction --no-ansi

# Copy the rest of the app
COPY . /app

# Expose port (optional, Railway ignores but good practice)
EXPOSE 8000

# Run FastAPI with dynamic port support (IMPORTANT for Railway)
CMD ["sh", "-c", "uvicorn app:app --host 0.0.0.0 --port ${PORT:-8000}"]