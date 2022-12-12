# Use the Microsoft .NET 7 container
FROM mcr.microsoft.com/dotnet/aspnet:7.0
# Copy our published code from the “/app” folder to the “/app” folder in our container
WORKDIR /app
COPY /www /app
# Expose port 5000 for the Web API traffic
EXPOSE 5000
# Restore the necessary packages
# Build and run the dotnet application from within the container
ENTRYPOINT dotnet project1.dll