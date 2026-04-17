FROM node:20-slim

# Install Python, Java (OpenJDK 17), and GCC for C++
RUN apt-get update && apt-get install -y \
    python3 \
    openjdk-17-jdk \
    g++ \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Create a non-root user for security
RUN useradd -m sandboxuser
USER sandboxuser

# Command will be overridden by the execution script
CMD ["bash"]
