# Cucumber

The purpose of this repository is to store the automated tests written Cucumber
1. features folder contains all different projects and support folder for common support utilities
   Ex of one project DC-Trial-Download. This folder contains below
       (a) step-definitions folder which consits of all .rb files
       (b) support folder conatins env.rb file
       (c) all .feature files having gherkin steps
   All projects have same structure.
   
2. results for contains report.json file

3. support folder contains
        (a) common folder have step-definitions folder which contains all common .rb files used in all projects
        (b) common folder have xpath folder have .yml files having all xpaths related to project
        (c) config folder have all .yml files related to project having base url's
        (d) .rb common files

## Local setup on Windows
### Step 1 – Install Ruby
Download and install from https://www.ruby-lang.org/en/downloads/

### Step 2 – Extract DevKit
Download and extract DevKit-tdm-32-4.5.1-20101214-1400-sfx.exe to a folder you like.

Explanation/details:
Make sure you create a new folder, it extracts the lib and bin folders to that location, there is no root folder such as DevKit for example.

NOTE : DevKit is needed because Cucumber requires the json gem. Without installing DevKit you would get the error:
ERROR: Error installing cucumber:
The 'json' native gem requires installed build tools.


Please update your PATH to include build tools or download the DevKit from 'http://rubyinstaller.org/downloads' and follow the instructions at 'http://github.com/oneclick/rubyinstaller/wiki/Development-Kit'


### Step 3 – Install DevKit
Goto the root folder where you extracted DevKit and execute the commands:

### Step 4 – Install the required gems
Clone the Git repo and goto the test-automation folder.

```RUN bundle install```

NOTE: Make sure you have all the required gem files in local.

### Step 5 – Run the Cucumber test
Go to test-automation  folder
```cucumber features/GUAC/**.feature```


## Local setup on MAC
### Step 1 -  Install Homebrew
To install Homebrew, navigate to http://brew.sh/ in your browser. You’ll see that near the top there’s a curl command you need to copy to install it. Copy that into your clipboard and paste it into your terminal window then run it.You’ll need Xcode installed, but if you don’t have it you will see a pop up in the middle of the installation.

### Step 2 -  Install Ruby
To install RBENV, use the following command in your terminal:
```brew install rbenv ruby-build```

we need to add a line to your .bash_profile file, which is where the settings for your terminal are stored. You don’t need to find it, we can do it all with one command. Run the following command in your terminal window:
*echo 'eval "$(rbenv init -)"' &gt;&gt; ~/.bash_profile*

Then run this command to reload your .bash_profile file so your current terminal window is up to date: `source ~/.bash_profile`

NOTE: Make sure you have ruby installed in your system *ruby -v*

### Step 3 - Installing Bundler and other gems
To install bundler. use the following command in your terminal:
```gem install bundler```
Clone the project from GIT repo. Go to ‘Gemfile’ in your project directory.
To install prerequisite gems. use the following command in your terminal:
```bundle install .```

NOTE: You should have all the gems.

### Step 4 – Run the Cucumber test
Go to cucumber-test-automation  folder
```cucumber features/**.feature```

## Local browser settings
By Default web browser is chrome and trigger in your local system
We can change the browser by uncommenting below line in /support/env.rb file
    ```Capybara::Selenium::Driver.new(app, :browser => :firefox)```
and commenting below line
    ```Capybara::Selenium::Driver.new(app, :browser => :chrome)```

for e.g. Run GUAC project features file
```cucumber features/DC-Trial-Download/**.feature```

for e.g. Run xyz script based on Tag name abc
```cucumber --tags @abc```

for e.g. Run the scipt based on environment
```cucumber features/**.feature TEST_ENV=qa```

## Run the script in saucelabs
```cucumber —tags @SMOKE —tags @abc SAUCE_ENV=LOCALSAUCE```


## Connecting to SauceLabs Locally
https://wiki.autodesk.com/display/webteam/Connecting+to+SauceLabs+Locally
