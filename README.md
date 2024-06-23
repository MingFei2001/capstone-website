# Capstone Website
This repository showcases a sample implementation for a core section of the EcoTravel website. It leverages the power of Python Flask to create a dynamic web application that promotes eco-conscious travel experiences.

## Introduction: Embrace Eco-conscious Travel
> EcoTravel is a passionate advocate for responsible tourism practices. We believe in exploring the world's wonders while minimizing our impact on the environment and supporting local communities. This website is a core component of our online presence, allowing users to discover breathtaking eco-destinations and plan their dream sustainable adventures.

Above is the business case for the project. The main goal here is to create a website simulating the situation EcoTravel is in.

Their setup have several issues including:
- Low Availability: Users may encounter downtime or slow performance due to limited resources
- Not Scalable: The website struggles to handle spikes in user traffic, hindering our reach.
- Not Secure: Existing security measures might not be robust enough to protect user data effectively.
- Not Redundant: A single point of failure could potentially take the entire website offline.
- Manual Troubleshooting: Resolving issues often requires manual intervention, leading to delays and inefficiencies.

Migration to AWS will be the key to overcome these limitation and build a robust online platfrom.

## Getting Started

1. Clone the Repository:
```bash
# do a git clone
git clone https://github.com/MingFei2001/capstone-website.git

# or with wget
wget https://github.com/MingFei2001/capstone-website/main/archive/capstone-website.zip
```

2. Install Dependencies:
```bash
cd capstone-website

# On Windows
pip install flask flask-mysqldb # install the dependencies system-wide
# Make sure you have setup a MySQL server

# On Debian or its derivatives (ubuntu)
sudo apt install python3-virtualenv # install virtual environment package
sudo apt install python-dev default-libmysqlclient-dev libssl-dev # install build dependencies
virtualenv pyenv # create a folder to store the env package
source pyenv/bin/activate
pip install flask flask_mysqldb MySQL # install the dependencies
# Make sure you have setup a MySQL server
```

3. Run the Application:
> please make sure you already have a MySQL server setup on your machine

```bash
# On Debian or its derivatives (ubuntu)
python3 app.py

# On Windows
python app.py
```

Open http://127.0.0.1:5000/ in your web browser to view the application.

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
├── LICENSE             # License file
```

---

## License
This project is licensed under the MIT License (see LICENSE file for details).
