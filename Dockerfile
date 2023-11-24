FROM docker-pam.pictet.com/andyrbell/mountebank:2.7.0

# Copy imposters
COPY ["imposters/", "/imposters/"]

# Define mountebank entrypoint
ENTRYPOINT ["mb"]

# Define command
CMD ["--configfile", "/imposters/imposters.json.ejs", "--allowInjection"]

# Expose ports
EXPOSE 8890 2525