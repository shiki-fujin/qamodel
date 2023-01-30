## Question-Answering model
This is a Question-Answering app using a pre-trained transformer model from HuggingFace which is implemented using FastAPI and deployed through Docker on an EC2 instance

### **File descriptions**
* `app/main.py`: Main app file and docker entrypoint. This defines the FastAPI logic.
* `app/utils.py`: Utility file that defines the model's logic.
* `test/testing_QA_model_app.ipynb`: Notebook contaning the tests done when the app is running on the EC2 instance
* `Dockerfile`: Defines the steps needed to install all required libraries, download the pre-trained model (`download_model.sh`) and run the FastAPI app (`/app`).
* `download_model.sh`: Defines the model to be download and required steps.

### **Steps done to host it in an EC2 instance** :
1. Create a key-pair for SSH connection

 ![image](https://user-images.githubusercontent.com/85923164/215509141-1281609d-0fbf-4be3-8228-84642eb91957.png)

2. Create a Security Group and configure inboud rules to accept SSH from my local machine and http requests from google collab

 ![image](https://user-images.githubusercontent.com/85923164/215510324-8c695a17-75a3-4413-be98-52d14af54680.png)

3. Create and Launch the instance

 ![image](https://user-images.githubusercontent.com/85923164/215510785-38a18210-d957-4d6f-81d7-4a9d04d1cbfb.png)

4. Convert the `.pem` private key to `.ppk` using PuTTyGen

5. Connect using PuTTy by setting the public Ipv4 DNS address as host name

 ![image](https://user-images.githubusercontent.com/85923164/215512614-d20034f3-cef3-4850-8550-70230092ef57.png)

6. Install docker and docker-compose

7. Cloned this repository using `git clone git@github.com:shiki-fujin/qamodel.git`

8. CD to the cloned path then Build the image using `docker build . -t qamodel`

 ![image](https://user-images.githubusercontent.com/85923164/215515156-a4a44b21-a582-45d4-99da-428725baf9fb.png)

9. Run the app using `docker run -p 8000:8000 qamodel`

 ![image](https://user-images.githubusercontent.com/85923164/215513280-995dfbee-d860-45e3-9e08-1a356afeecbf.png)

10. Preview of requests

* Terminal view

 ![image](https://user-images.githubusercontent.com/85923164/215513483-684bc8e7-719e-4310-bc4d-053425f44692.png)

* Notebook view

 ![image](https://user-images.githubusercontent.com/85923164/215513986-ccc9e3b7-f66d-488e-9532-02d84764da2d.png)

