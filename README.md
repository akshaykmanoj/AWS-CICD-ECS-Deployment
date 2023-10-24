# AWS CI/CD Pipeline for deploying Spring Boot application on ECS

### Project Overview:
- Demonstrates creation of an automated deployment pipeline for Dockerized Spring Boot app on AWS.
- Integrates AWS CodeBuild, CodeDeploy, and CodePipeline for CI/CD.
- Utilizes Amazon SNS and SQS for real-time deployment notifications.

### Prerequisite :
1. AWS acconunt.
2. Git and docker installed on the machine.
3. Docker should be started before building docker image.

### Components:
- AWS Services:
    - CodeBuild
    - CodeDeploy
    - CodePipeline
    - SNS
    - SQS

- Workflow:
    - Automates deployment process.
    - Ensures continuous integration and deployment.

- Containerization:
    - Utilizes Docker for containerizing Spring Boot application.

## Project Steps

### Step 1: Code Setup

In this initial step, we set up the foundation for the project:

- Create a GitHub repository to host the source code.
- Generated a Spring Boot project using Spring Initializer.
- Integrated a Dockerfile into the project for containerization.
- Pushed the entire source code to the GitHub repository.

### Step 2: Configuring Code Build and Deployment

This step focuses on configuring the CI/CD pipeline:

- Configured AWS CodeBuild to use the GitHub repository as the source (using GitHub Connection).
- Created an Amazon Elastic Container Registry (ECR) repository.
- Prepared the application code as a Docker container image.
- Employed a buildspec.yaml file in the repository to define the build process, including pushing the Docker image to Amazon ECR.
- Set up AWS CodeDeploy to use the Docker image from Amazon ECR for deploying the application into Amazon Elastic Container Service (ECS).
- Ensure that an IAM service role is created for CodeBuild to access ECR.

### Step 3: Setting Up ECS and Related Services

In this step, we configure Amazon ECS and its associated services:

- Created an Amazon ECS cluster to host the application.
- Defined an ECS task definition that specifies the application's requirements and resources.
- Created an ECS service using the task definition to manage the application's desired state.
- Configured the necessary security groups for access and communication.

### Step 4: Creating a Code Pipeline

This step involves creating an AWS CodePipeline to automate the deployment process whenever changes are pushed to the GitHub repository. A continuous delivery pipeline ensures that the application is deployed efficiently and reliably.

### Step 5: Configuring SNS & SQS for Notifications

Real-time notifications about deployment statuses are essential for monitoring and troubleshooting. In this step, we set up SNS and SQS for notifications:

- Created an Amazon SNS topic to handle notifications.
- Established an Amazon SQS queue to receive notifications.
- Subscribed the SQS queue to the SNS topic, allowing it to receive messages.
- Configured the CodePipeline to send SNS notifications on deployment status changes, ensuring that you are promptly informed of any updates or issues in the pipeline.

This project provides a comprehensive example of setting up a robust CI/CD pipeline for a Spring Boot application on AWS. For a more detailed guide and visual walkthrough, refer to the video tutorial I have referred.

Feel free to clone this repository as a foundation for your own projects. Just make sure to update the AWS repository name and account ID to match your AWS environment. For any queries related to project reach me on akshaymanoj.dev@gmail.com.


4. And your favourite code editor 

