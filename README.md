# Capstone Website
This repository showcases a sample implementation for a core section of the EcoTravel website. It leverages the power of Flask to create a dynamic web application that promotes eco-conscious travel experiences.

## Introduction: Embrace Eco-conscious Travel
EcoTravel is a passionate advocate for responsible tourism practices. We believe in exploring the world's wonders while minimizing our impact on the environment and supporting local communities. This website is a core component of our online presence, allowing users to discover breathtaking eco-destinations and plan their dream sustainable adventures.

above is the business case for the project

## Getting Started

1. Clone the Repository:
```bash
git clone https://github.com/MingFei2001/capstone-website.git
```

2. Install Dependencies:

This project relies on several Python libraries to function. You can install them using the provided `requirements.txt` file:
```bash
cd capstone-website
pip install -r requirements.txt
```

3. Run the Application:
```bash
python3 app.py
# python app.py on windows
```

Open http://127.0.0.1:5000/ in your web browser to view the application.

## Project Structure

```
capstone-website/
├── app.py              # main Flask application
├── schema.sql          # schema file for database definition
├── database.db          # SQLite database file
├── static/             # Folder for static assets
    └── images
    └── bootstrap
        └── css
        └── js
├── templates           # HTML templates
    └── index.html
    └── template.html
├── requirements.txt    # File listing project dependencies
```

## Future of this project
The EcoTravel codebase is a springboard for a robust web application. To reach a wider audience and ensure a seamless user experience, migrating to the cloud with Amazon Web Services (AWS) is the next step.

AWS empowers EcoTravel with:
- Scalability: Seamlessly handle surges in user traffic with AWS's on-demand resources.
- Reliability: Minimize downtime and ensure consistent service with AWS's robust infrastructure.
- Cost-Effectiveness: Pay only for the services you use with AWS's pay-as-you-go model.
- Security: Benefit from AWS's comprehensive security features to safeguard user data.