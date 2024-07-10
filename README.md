# Capstone Website

This repository showcases a student project focused on migrating the EcoTravel web application from its current setup to Amazon Web Services (AWS). The original application, built with Flask and MySQL, faces limitations in terms of scalability, availability, and security. This project aims to address these challenges by leveraging the power and flexibility of AWS.

## Project Background
The EcoTravel web application is a core component of their online presence, allowing users to explore eco-friendly travel options. However, the current setup struggles with issues like:

- **Limited Availability**: Downtime during peak traffic periods disrupts user experience.
- **Scalability Issues**: The infrastructure can't easily adapt to increased user traffic.
- **Security Concerns**: Robust security measures are needed to protect user data.
- **Lack of Redundancy**: A single point of failure could lead to complete website outage.
- **Manual Troubleshooting**: The current setup requires significant manual intervention for technical issues.

## AWS Migration Goals
By migrating the EcoTravel web app to AWS, this project aims to achieve the following improvements:

- **Enhanced Availability**: Leverage AWS's reliable infrastructure to minimize downtime and ensure consistent service.
- **Improved Scalability**: Utilize on-demand resources to seamlessly handle surges in user traffic.
- **Robust Security**: Benefit from AWS's comprehensive security features to safeguard user data and website integrity.
- **Increased Fault Tolerance**: Implement redundancy to minimize the impact of potential failures.
- **Reduced Manual Intervention**: Automate tasks and leverage AWS's managed services for easier maintenance.

## Technical Implementation
The pre-migration web application is implemented with a classic tech stack, the LAMP stack. 

The **LAMP** stands for:
- **Linux**: Using linux as the base operating system + hosting media locally
- **Apache**: Apache web server to host the web application
- **MySQL**: Using MySQL (used to be open-sourced) as a database backend
- **PHP/Python**: Using programming languages to handle the web application's logic

Each component will be migrating to a corresponding AWS services, for example:

- **Server**        > **EC2:Ubuntu Server**
- **Media hosting** > **S3+CloudFront**
- **Database**      > **RDS:DMS**
- **Network**       > **AWS VPC**
- **Monitoring**    > **CloudWatch+SNS**

## Getting Started
### 1. Setting up a EC2 server
- Operating System: Ubuntu Server 24.04
- Storage: Anything bigger or equal to 8 GB

*p/s: remember to create a key pair for ssh connection to the EC2 server for the configuration*

### 2. Connecting to the EC2 server
Download the key pair files used in creation of EC2 server.

On MacOS/Linux systems:
```bash
ssh -i path/to/the/key ubuntu@<ec2-ip-address>
```
On Windows: `use putty, good luck.`

### 3. Setting up the base application
Once you have successfully establish an ssh connection to the EC2 server, enter the following command:

```bash
# retrieve the file for the application backend
git clone https://github.com/MingFei2001/capstone-website.git
cd capstone-website

# Setting up the web application with custom script
chmod +x ./init.sh
bash init.sh
```

### 4. Configuring Nginx for reverse proxying
The init script should helped you to install nginx and started the service for you. But there is a couple things you might have to configure yourself as the script does not have the permission to do so.

Edit `/etc/nginx/nginx.conf` using a text editor (nano/vim/emacs)
```bash
# Change the first line into the following
user ubuntu;
```

Edit `/etc/nginx/sites-available/default`
```bash
# add the following code to the file
upstream flaskapp {
    server 127.0.0.1:8000;
}

location / {
    proxy-pass http://flaskapp;
}
```
Do a `sudo systemctl restart nginx` to restart the server for the config to take effects.

## Project Structure

```
capstone-website/
├── app.py              # main Flask application
├── static/             # Folder for static assets
    └── images
    └── bootstrap
        └── css
        └── js
├── templates           # HTML templates
    └── index.html
    └── template.html
├── database.db         # backup sqlite database file
├── schema.sql          # database schema file
├── LICENSE             # License file
```

---

## License
This project is licensed under the MIT License (see LICENSE file for details).
