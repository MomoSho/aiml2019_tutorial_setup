# Welcome to the OU's AI/ML Tutorial Series!

[See the offical site for the program and general information](http://www.ou.edu/coe/ai-ml)

[First, access the tutorial server here](ai-ml.cs.ou.edu)  
Make up a username, and log in with the passcode: aiml2019


# [AI/ML Symposium Tutorials](https://github.com/MomoSho/aiml2019_tutorial_setup/blob/master/OPEN_ME.md)
* 9:00 - 10:00a Introduction to Python for Data Analysis
  + Location: Oklahoma Memorial Union Ballroom
  + Instructors: 
      - Aditya Narasimhan
      - Sudhindra Gopal Krishna
  + Get the [code here](http://bit.ly/aimlpython)
  + [Git Repo](https://github.com/sudhigopal/AI-ML-Symposium.git)
  
  
* 10:00a - 12:00p Introduction to Scikit-Learn and Pandas
  + Location: Oklahoma Memorial Union Ballroom
  + Instructors: 
      - Keerti Banweer
      - Monique Shotande
  + Get the [code here](http://35.202.19.212/hub/user-redirect/git-pull?repo=https%3A%2F%2Fgithub.com%2FMomoSho%2Faiml_tutorials_sklearn&urlpath=lab%2Ftree%2Faiml_tutorials_sklearn%2F)
  + [Git Repo](https://github.com/MomoSho/aiml_tutorials_sklearn)
  
  
* 12:30 - 3:30p Deep Learning and Convolutional Neural Networks
  + Location:
      - Rawl Engineering Practice Facility, Room 200 (primary)
      - Oklahoma Memorial Union Heritage Room (overflow)
  + Instructor: Ryan Lagerquist
  + Get the [code here](http://35.202.19.212/hub/user-redirect/git-pull?repo=https%3A%2F%2Fgithub.com%2Fthunderhoser%2Faiml_symposium&urlpath=lab%2Ftree%2Faiml_symposium%2Faiml_symposium%2Faiml_symposium.ipynb&branch=2019_branch)
  + [Git Repo](https://github.com/thunderhoser/aiml_symposium/blob/master/aiml_symposium/aiml_symposium.ipynb)
  
  + Download the data by opening the terminal in jupyter and running the following command:
    ```
    bash tutorials_setup/download_data.sh
    ```
    This will take some time. The end result will be 2 new folders named 'data' and 'output' appearing.  
    Within it, there should be 4 subfolders, pretrained_model, testing, validation, and training.  
    Then within the aiml_symposium.ipynb notebook file, under the section titled "Constants" in the
    early sections of the file, set the TOP_INPUT_DIR_NAME and OUTPUT_DIR_NAME variables to the following:
    ```
    TOP_INPUT_DIR_NAME = '/home/jovyan/data'
    OUTPUT_DIR_NAME = '/home/jovyan/output'
    ```


* 4:00 - 7:00p Dataiku for Solving Prediction Problems
  + Location: Rawl Engineering Practice Facility, Room 200
