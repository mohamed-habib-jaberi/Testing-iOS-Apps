# Testing-iOS-Apps

Learn Unit Testing, Test Driven Development and Behavior Driven Development in iOS Using Swift Language

#the contents of the course:

- Understanding Test Driven Development

- Types of Testing

- Test Driven Development Life Cycle

- Test Expectations

- Dependency Injection and Mocks

- Understanding Behavior Driven Development

- Cucumberish Framework

- Building Credit Card APR Calculation Features



# 🚀 Flask Deployment — Full Setup Guide  
This section explains how Flask is used in this project to deploy the **MobileNetV3 breast cancer classifier**.  
Everything below describes the steps from installation to production deployment with Gunicorn.

---

## 🟦 1. Installing Flask

Install the necessary packages to run a Flask application.

```bash
pip install Flask
```

Verify the installation:

```bash
python3 -m flask --version
```

Example output:

```
Python 3.12.3
Flask 3.1.2
Werkzeug 3.1.3
```

---

## 🟩 2. Creating a Flask Application (app.py)

Navigate to the `~/breast_cancer_classifier` directory and complete the `app.py` file.

Your Flask application must:

### 🔹 Initialize a Flask application  
### 🔹 Load the pre-trained **MobileNetV3** model  
### 🔹 Modify the last layer for **2 output classes**  
### 🔹 Load checkpoint from:  
```
model/mobilenet_checkpoint.tar
```  
### 🔹 Load parameters from the checkpoint  
### 🔹 Set model to evaluation mode (`model.eval()`)  
### 🔹 Implement `/health` endpoint  
Returns:

```json
{"status": "healthy"}
```
with HTTP **200**

### 🔹 Implement `/predict` endpoint (image classification)

Return:

- `{"error": "No image provided"}`, HTTP **400** → if image missing  
- `{"prediction": "..."}`, HTTP **200** → if OK  
- `{"error": "<exception>"}`, HTTP **500** → if unexpected error  

---

### ⚠️ Important  
To run `app.py`, you **must open the terminal inside the folder containing this file**, for example:

```bash
cd ~/task
python3 app.py
```

---

## 🟧 3. Testing the Prediction Endpoint (test_endpoint.py)

The script must:

- Load a sample image  
- Convert it to base64  
- Send it to the `/predict` endpoint  
- Print the response  

Run the test:

```bash
cd ~/task
python3 test_endpoint.py
```

---

## 🟥 4. Installing Gunicorn (Production Server)

Install Gunicorn:

```bash
pip install gunicorn
```

Verify:

```bash
gunicorn --version
```

---

## 🟪 5. Running Flask in Production Using Gunicorn

Use Gunicorn with:

- **2 workers**  
- Bind to port **8090**  
- Launch the application `app:app`  

Run:

```bash
cd ../040-050-deploying-model-with-flask
gunicorn -w 2 -b 0.0.0.0:8090 app:app
```

Test the deployment:

```bash
curl --silent http://0.0.0.0:8090/health
```

---

## 🟫 6. Testing the Production Endpoint

Update the URL in `~/task/test_endpoint.py`:

```
http://localhost:5000/predict  →  http://localhost:8090/predict
```

Then run:

```bash
cd ~/task
python3 test_endpoint.py
```

---

## 🟨 7. Correct Way to Launch Gunicorn Inside Project

To avoid “connection refused" errors, follow **exactly** these steps:

### 🔹 1. Go to the correct folder  
```bash
cd /Users/JABERI/Downloads/PyTorch-main/section_4/labs/040-050-deploying-model-with-flask/breast_cancer_classifier
```

### 🔹 2. Activate the correct virtual environment (`.venv311`)  
```bash
source ../../../../.venv311/bin/activate
```

### 🔹 3. Start Gunicorn from this folder  
```bash
gunicorn -w 2 -b 0.0.0.0:8090 app:app
```

### ⚠️ VERY IMPORTANT  
👉 **Keep this terminal open.**  
If Gunicorn crashes here, `/health` and `/predict` will stop working.

---

## 🟦 8. Verify the `/health` endpoint in a second terminal

Open a new terminal:

```bash
cd /Users/JABERI/Downloads/PyTorch-main/section_4/labs/040-050-deploying-model-with-flask/breast_cancer_classifier
source ../../../../.venv311/bin/activate
```

Test:

```bash
curl -v http://127.0.0.1:8090/health
```

Expected output:

```
{"status": "healthy"}
```

---

## ✔️ Summary of All Commands

```bash
pip install Flask
pip install gunicorn

cd ~/task
python3 test_endpoint.py

cd ../040-050-deploying-model-with-flask
gunicorn -w 2 -b 0.0.0.0:8090 app:app

curl -v http://127.0.0.1:8090/health

# Correct folder to run Gunicorn
cd /Users/JABERI/Downloads/PyTorch-main/section_4/labs/040-050-deploying-model-with-flask/breast_cancer_classifier
source ../../../../.venv311/bin/activate
gunicorn -w 2 -b 0.0.0.0:8090 app:app
```

---

🎉 **Flask + Gunicorn deployment is now fully configured!**  
This document covers installation, testing, production server setup, and troubleshooting — all in one place.

     
