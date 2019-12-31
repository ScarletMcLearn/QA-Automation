Folder Structure:

Confluence Steps:
    - features (Features Folder)
        - steps (Steps Folder)
            - __pycache__
            - lss steps.py (LSS Steps)
            - lss_config.py (LSS Config Variables)
        - environment.py (LSS Behave Environment Variables)
        - lss.feature (LSS Feature File)
    - .json report (JSON Report of Test - To Generate HTML Report)
    - ReadMe.md   


Python Packages:
allure-behave         2.8.6               
allure-python-commons 2.8.6           
behave                1.2.6               
behave-py3            1.2.5.post2014122202
selenium              3.141.0 

HTML Report Generation Packages:
> Allure 2.6.0
> Java: 
        openjdk version "1.8.0_232"
        OpenJDK Runtime Environment (build 1.8.0_232-8u232-b09-0ubuntu1~16.04.1-b09)
        OpenJDK 64-Bit Server VM (build 25.232-b09, mixed mode)


LSS Config Variables:
Before running tests-
- Make sure variables in Config file are correct
- Update strings in steps with Config file variables

Test Scenarios


Generate Reports:
Use Allure Behave to generate Json report

Use Allure to convert Json report to HTML report