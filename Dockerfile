# Use an official lightweight Alpine image with Hugo installed
FROM klakegg/hugo:0.85.0-alpine

# Define working directory
WORKDIR /usr/share/blog

# Copy the entire current directory to the working dir
COPY . .

# Serve the site on the standard HTTP port
EXPOSE 1313

# Automatically build and serve the site
CMD hugo server --bind=0.0.0.0

