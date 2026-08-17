# base Docker image that we will build on
FROM python:3.13.11-slim

# Copy uv binary from official uv image (multi-stage build pattern)
COPY --from=ghcr.io/astral-sh/uv:latest /uv /bin/

# set up the working directory inside the container
WORKDIR /app

# Copy dependency files first (better layer caching)
COPY "pyproject.toml" "uv.lock" ".python-version" "README.md" ./ 
COPY src/ ./src/

# # Install dependencies from lock file (ensures reproducible builds)
RUN uv sync --locked

# Copy application code
COPY pipeline.py .

# define what to do first when the container runs
ENTRYPOINT ["uv", "run", "python", "pipeline.py"]