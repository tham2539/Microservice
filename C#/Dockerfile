FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
# b. Package Manager & c. Dependency File
COPY *.csproj ./
RUN dotnet restore
# a. Source Code
COPY . .
# d. App Package (OS Executable)
RUN dotnet publish -c Release -o /app

FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app
COPY --from=build /app ./
# d. App Runtime
CMD ["dotnet", "swp_project_cs.dll"]
