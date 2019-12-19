## Testing Lessee Self-Schedule with Python-Behave

Python-behave supports behavior-driven development (BDD). Gherkin feature files are implemented as step definitions,
then executed in the Chrome browser.

NOTE: these Python scripts are written for version 3.6.

### Project Setup

The project setup steps only need to be done once.

1. Clone the repository somewhere:

        git clone git@bitbucket.org:aiminspections/test-lss-behave.git

2. Change to that directory:

        cd test-lss-behave

3. Create the python virtual environment and install required packages using either `pipenv` or `python3 -m venv env`.

    If using `pipenv`, install required packages with:
    
            pipenv install
    
    Otherwise, install required packages with:
    
            python3 -m venv env
            pip install -r requirements.txt

4. Generate the configuration files:

            python create_config.py qa
            python create_config.py uat

    This submits inspection requests in the request processor for QA and UAT, and creates `qa.ini` and `uat.ini`
    with the associated information.

### Activating the Python Virtual Environment

This needs to be done each time the tests are run.

If using `pipenv`:

        pipenv shell

Otherwise:

        source env/bin/activate

### Running Tests

The default is to run the tests against the QA environment. Run one of the following to simulate a desktop,
tablet or mobile environment:using a full-size browser, by entering the command:

        ./desktop.sh
        
        ./tablet.sh
        
        ./mobile.sh

To specify the UAT environment, include `-D env=uat` on the command line. This can be added to any of the commands
listed above. For example:

        ./desktop.sh -D env=uat

To run a specific feature file, include the path to it on the command line. This can be added to any of the commands
listed above. For example:

        ./desktop.sh features/home-page.feature
