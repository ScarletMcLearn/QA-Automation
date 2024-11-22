# Use the official Playwright image as the base
FROM mcr.microsoft.com/playwright:v1.49.0

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json to install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy all remaining project files
COPY . .

# Install Playwright browsers with all required dependencies
RUN npx playwright install --with-deps

# Install x11-apps for testing X server connectivity (optional but useful)
RUN apt-get update && apt-get install -y x11-apps

# Set the DISPLAY environment variable
ENV DISPLAY=host.docker.internal:0

# Default command to run Playwright tests in headed mode
CMD ["npx", "playwright", "test", "--headed"]
