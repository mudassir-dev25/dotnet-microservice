
# Use the official .NET SDK image
FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /app
COPY ./src ./src
WORKDIR /app/src
RUN dotnet restore
RUN dotnet publish -c Release -o out

# Use the ASP.NET runtime image
FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS runtime
WORKDIR /app
COPY --from=build /app/src/out .
ENTRYPOINT ["dotnet", "Microservice.dll"]
