FROM squidfunk/mkdocs-material:latest

# https://stackoverflow.com/questions/36075525/how-do-i-run-a-docker-instance-from-a-dockerfile

## install plugins
RUN pip install --no-cache-dir \
      mkdocs-awesome-pages-plugin \
      mkdocs-include-markdown-plugin \
      mkdocs-rss-plugin \
      markdown-include

# Set working directory
WORKDIR /docs

# Expose MkDocs development server port
EXPOSE 8000

# Start development server by default
ENTRYPOINT ["/sbin/tini", "--", "mkdocs"]
CMD ["serve", "--dev-addr=0.0.0.0:8000"]
