
# coding-assignment11

# Coding Assignment 11: Docker Setup

## Overview
This project sets up a React development environment using **Docker Containers**. The goal is to create a simple React app that displays an `<h1>` tag with the text **"Codin 1"** and runs on `localhost:7775`.


## Project Setup
### 1. Clone the Repository
If you are using Git, run:
```sh
git clone <your-github-repo-link>
cd coding1
```


### 2. Create the React App (If Not Already Done)
If you haven’t already created the React app, use:
```sh
npx create-react-app coding1
cd coding1
```

### 3. Modify the `App.js` File
Edit the `App.js` file in the `src` folder to display the required text:
```jsx
function App() {
  return (
    <div>
      <h1>Codin 1</h1>
    </div>
  );
}
export default App;
```

### 4. Create the `Dockerfile`
Create a file named **Dockerfile** in the root directory and add the following content:
```dockerfile
# Use the official Node.js image
FROM node:18

# Set the working directory inside the container
WORKDIR /Kaur_Ravneet_site

# Copy package.json and install dependencies
COPY package.json .
RUN npm install

# Copy the project files
COPY . .

# Expose port 7775 and start the app
EXPOSE 7775
CMD ["npm", "start"]
```

### 5. Build and Run the Docker Container
#### **Build the Docker Image**
Run the following command inside the project folder:
```sh
docker build -t ravneet_kaur_coding_assignment11 .
```

#### **Run the Docker Container**
```sh
docker run -p 7775:3000 --name ravneet_kaur_coding_assignment11 ravneet_kaur_coding_assignment11
```

### 6. Open the Web App
Once the container is running, open your browser and go to:
```
http://localhost:7775
```
You should see **"Codin 1"** displayed on the page.

---

## Stopping and Removing the Container
If you need to stop the running container, use:
```sh
docker stop ravneet_kaur_coding_assignment11
```
To remove the container after stopping it:
```sh
docker rm ravneet_kaur_coding_assignment11
```

---

## Notes
- Ensure Docker is running before executing the commands.
- If you face issues, try running `docker system prune -a` to clear unused images.
- If the port is already in use, change `7775` to another available port in the `docker run` command.

---

