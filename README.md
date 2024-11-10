# Hello World Perl Language

## 📄 Project Description
This is a simple "Hello World" web application built using with Perl Language. The application listens on port `8080` and returns a "Hello World with Perl" message when accessed.

## 🗂 Project Structure
nodejs/ <br>
├── Dockerfile <br>
├── hello_world.pl <br>
└── README.md

## 🛠 Technologies Used
- Perl
- Docker

## 🚀 How to Run

### 1. Build the Docker Image
docker build -t hello_perl .<br>
docker run -p 8080:80 hello_perl<br>
Open your browser and navigate to: http://localhost:8080

## Creator
https://github.com/aalopezb