
# PHP Feedback App with Docker on AWS 🚀

Welcome! This is a **hands-on project** where I dockerized a PHP feedback application and deployed it on **AWS EC2**, connected to a **private RDS MySQL database**. This project demonstrates best practices in **containerization, cloud deployment, CI/CD, and security**.

---

## Table of Contents

* [Project Overview](#project-overview)
* [Features](#features)
* [Architecture](#architecture)
* [Technologies Used](#technologies-used)
* [Setup Instructions](#setup-instructions)
* [Docker Commands](#docker-commands)
* [CI/CD with GitHub Actions](#cicd-with-github-actions)
* [Security Best Practices](#security-best-practices)
* [Lessons Learned](#lessons-learned)
* [Contributing & Playing Around](#contributing--playing-around)
* [Connect with Me](#connect-with-me)

---

## Project Overview

The **PHP Feedback App** allows users to submit feedback, which is stored in a **MySQL database** hosted on **AWS RDS**. The application is fully containerized with **Docker**, making deployment and updates **reproducible, scalable, and efficient**.

**Why this project?**

* Learn containerization and Docker best practices
* Explore AWS cloud deployment (EC2, RDS)
* Implement CI/CD with GitHub Actions
* Understand security considerations in cloud applications

---

## Features

* Submit and view feedback through a web interface
* MySQL database connection using a secure private RDS instance
* Dockerized for easy deployment and reproducibility
* Automated CI/CD workflow with GitHub Actions
* Security best practices like avoiding hardcoded credentials

---

## Architecture

```
         ┌──────────────┐
         │   User       │
         │  Browser    │
         └─────┬────────┘
               │
               ▼
   ┌─────────────────────────┐
   │ EC2 Instance            │
   │ (Apache + PHP Docker)   │
   └─────┬───────────────────┘
         │
         ▼
   ┌─────────────────────────┐
   │ RDS MySQL Database      │
   │ (Private in VPC)        │
   └─────────────────────────┘

```

Key points:

* EC2 hosts the containerized PHP app
* RDS MySQL database is private (not publicly accessible)
* Elastic IP ensures a static endpoint
* CI/CD handles automatic container rebuilds and deployments

---

## Technologies Used

* **PHP 8.2 + Apache** (Debian-based Docker image)
* **Docker & Docker Compose**
* **AWS EC2 & RDS**
* **GitHub Actions** for CI/CD
* **MySQL 8.0**
* **Linux (CentOS 8)**

---

## Setup Instructions

1. **Clone the Repository**

```bash
git clone https://github.com/priyanshuprafful/php-rds.git
cd php-rds
```

2. **Build Docker Image**

```bash
docker build -t php-feedback-app .
```

3. **Run Docker Container**

```bash
docker run -d -p 80:80 --name php-feedback-app php-feedback-app
```

4. **Connect to MySQL Database**

* Update `.env` file or environment variables with DB credentials
* Use RDS endpoint to connect

---

## Docker Commands

* Stop all running containers:

```bash
docker stop $(docker ps -q)
```

* Remove all containers:

```bash
docker rm $(docker ps -a -q)
```

* Remove all unused images:

```bash
docker image prune -af
```

---

## CI/CD with GitHub Actions

Workflow implemented to:

1. Trigger on code push
2. Build new Docker image
3. Stop old container
4. Remove old images
5. Start new container

**Benefit:** Automation reduces errors and accelerates deployment. 🚀

---

## Security Best Practices

* Never hardcode database credentials → use environment variables or AWS Secrets Manager
* Keep RDS private → no public access
* Regularly prune unused Docker images and containers
* Use versioned images for long-term support

---

## Lessons Learned

* Alpine-based PHP images are lightweight but may not support the latest PHP + Apache
* Efficient container cleanup is essential for production
* CI/CD automation is a must for consistent deployments
* Security and maintainability are equally important

---

## Contributing & Playing Around

The code is **public** and ready for experimentation. Feel free to:

* Fork the repo
* Improve Dockerfile efficiency
* Experiment with CI/CD workflows
* Add new features or enhancements

---

## Connect with Me

I’m currently exploring **Cloud, DevOps, and Full-Stack opportunities** — both full-time and freelance.

💬 Let’s connect on **LinkedIn**: [https://linkedin.com/in/priyanshu8787](https://linkedin.com/in/priyanshu8787)

    Telegram: @priyanshuprafful(https://t.me/priyanshuprafful)
    
⭐ Follow me for updates and future projects!

If you’re in cloud, DevOps, or full-stack development, I’d love your **advice, collaboration, or referrals**.

---

## License

This project is **open source** and free to fork, use, and experiment with.

---

