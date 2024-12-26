### High Availability Server Setup with Docker

#### How to Set Up

1. Clone the Repository and Navigate:
````bash
git clone https://github.com/saidtaylan/konzek-task.git
cd konzek-task/docker
````
This command downloads the project files from GitHub to your local machine.

2. Run the following command to start everything in the background:
````bash
docker compose up -d
````
#### How It Works
- FastAPI Servers: The setup runs two instances of FastAPI servers as replicas. This means there are two copies of the application running for reliability.
- Nginx Load Balancers: There are also two Nginx servers that work together using a master-backup system (KeepAlived). This setup helps distribute incoming traffic and ensures that if one server fails, the other can take over.
- Dockerfiles: There are two Dockerfiles included:
The first one is for deploying the main FastAPI servers and Nginx. The second one combines Nginx and KeepAlived services, enhancing availability.