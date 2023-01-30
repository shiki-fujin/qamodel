## Question-Answering model
This is a Question-Answering app using a pre-trained transformer model form HuggingFace which is implemented using FastAPI and deployed through Docker

Run `$ ./bin/install.sh` to install docker and docker-compose on a linux machine

### **File descriptions**
* `app/main.py`: Main app file and docker entrypoint. This defines the FastAPI logic.
* `app/utils.py`: Utility file that defines the model's logic.
* `bin/install.sh`: For docker and docker-compose installation.
* `Dockerfile`: Defines the steps needed to install all required libraries, download the pre-trained model (`download_model.sh`) and run the FastAPI app (`/app`).
* `download_model.sh`: Defines the model to be download and required steps.
