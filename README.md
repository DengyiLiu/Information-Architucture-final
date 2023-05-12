# Information-Architucture-final
# Project: Fraud Detection using Neural Network and AWS Services

This repository contains the code and resources for an advanced fraud detection system that leverages a trained neural network model and a variety of AWS services. The system employs a data pipeline that collects data from a simulated website, processes it, and stores the processed data in an Amazon RDS database. The neural network model, which is stored in an Amazon S3 bucket, is then applied to this processed data to detect potential fraudulent activities.

## Detailed Overview

The fraud detection system consists of the following key steps:

1. **Neural Network Training:** A neural network model is trained using a comprehensive dataset of transactions, including both fraudulent and non-fraudulent activities. The training process involves using a suitable machine learning framework, such as TensorFlow or PyTorch, and optimizing the model for accuracy and efficiency. Once the model is trained and validated, it is saved and stored in an Amazon S3 bucket for easy access and future use.

2. **Data Collection:** To simulate real-world conditions, an AWS Lambda function is used to generate and collect transaction data from a fictitious website. This Lambda function is responsible for creating realistic transaction data, including transaction amounts, timestamps, and user information. The generated data is then stored in another Amazon S3 bucket for further processing.

3. **Data Processing and Storage:** AWS Glue, a serverless data integration service, is employed to extract, transform, and load (ETL) the collected transaction data from the S3 bucket. The processed data is then transferred to an Amazon RDS database, where it is securely stored and organized for efficient retrieval and analysis.
![Glue Job Diagram](https://github.com/DengyiLiu/Information-Architucture-final/blob/main/491683853079_.pic.jpg)


4. **Fraud Detection:** A second Lambda function is created to retrieve the processed data from the RDS database and the neural network model from the S3 bucket. This function is responsible for applying the neural network model to the transaction data to detect potential fraud cases. The Lambda function processes the data in real-time, identifying any suspicious activities and flagging them for further investigation.

5. **Results and Reporting:** The fraud detection system generates a comprehensive report that includes the results of the analysis, highlighting any potential fraudulent activities. This report can be used by stakeholders to take appropriate action and mitigate potential risks. Additionally, the system can be configured to send automated email notifications to customers who may be at risk of fraud, informing them of the potential issue and providing guidance on how to proceed.

## Prerequisites

To successfully set up and run this project, the following prerequisites are required:

1. An AWS account with access to services like Lambda, S3, Glue, and RDS.
2. Python 3.x installed on your local machine.
3. Familiarity with AWS services, neural network models, and data processing techniques.

## Usage

To set up the fraud detection system, follow these detailed steps:

1. **Clone the repository:** Clone this GitHub repository to your local machine to access the necessary code and resources.

2. **Set up AWS Services:** Configure the required AWS services, including Lambda, S3, Glue, and RDS, based on your specific needs. Ensure that appropriate access permissions and roles are assigned for each service to maintain security and prevent unauthorized access.

3. **Train the Neural Network:** Train the neural network model using a suitable machine learning framework, such as TensorFlow. Optimize the model for accuracy and efficiency during the training process. Once the model is trained, save it and store it in an S3 bucket.

4. **Data Collection Lambda Function:** Develop a Lambda function to simulate and collect transaction data from the website. Ensure that the generated data is realistic and includes relevant transaction information. Store the collected data in an S3 bucket for subsequent processing.

5. **Set up AWS Glue:** Configure AWS Glue
