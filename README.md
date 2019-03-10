# Soap Automation using cucumber and rspec.

The purpose of this project is to provide help for those who needs to do a automation of projects using cucumber, capybara, rspec and httparty to call rest API's or Soap API's, whithout install new gem's or uses another applications. I'm also using Scenario Outline on cucumber.


## What is Soap? 

SOAP (Simple Object Access Protocol) is the universal standard used for exchanging messages between applications and the Web Service.
The Web Service exposes its operations through an XML schema type called Web Service Description Language (WSDL). 

## Using a free WEB Service CEP Consultation

The CEP Consultation Service is free to use. Currently, it works with the post office postal base and contains more than 926,000 Brazilians sites corresponding to the base of October 2013 (Updated 06/11/2013). Find more of it [here](http://www.byjg.com.br/site/xmlnuke.php?xml=onlinecep).
Acccording to this site you will going to need a user and password to do an authentication, thats not our porpuse here, so you find only how to call a soap API. 

### Tools


This project was developed using cucumber to create executable specifications; Capybara, which is written in the Ruby programming language, to simulates scenarios for user stories; rspec, Dsl testing tool written in Ruby to test Ruby code and a gem set, to mange and suport all the developing.

WireCard Tests uses only open-source tools to atend your needs without any major effort. 

## Structure of the project

```
Project
├── config 
│   └── cucumber.yml
├── features
│   ├── functions
│   ├── specs
│   │   └── BDD
│   ├── step_definitions
│   │   └── Tests
│   ├──suport
│   │   └── env.rb
│   │   └── api.yml
│   └── reports
├── .gitignore
├── Gemfile
└── README.md
```

All the tests results are built inside the *report* folder.  
if when you download the **project**, the report folder does not exist, create it in the **features** folder.  

# Requirements

Before running the tests, please install:

[ruby](https://rvm.io/rvm/install)  
[bundle](https://bundler.io/)  
[ChromeDriver](https://tecadmin.net/setup-selenium-chromedriver-on-ubuntu/)

### Note on Settings

The main setting file it is at `config/cucumber.yml`.  
All the others settings can be found at `features/support`.  

# Installation  

To avoid all most future problems with bundle, please run:
 ```               
$ sudo apt-get install build-essential patch ruby-dev zlib1g-dev liblzma-dev                                           
```  

Install all of the required gems from your specified sources.  

```               
$ bundle                                             
```  
It is possible to find some problems installing the gem set, in this case, separately install the gem with trouble and back to bundle command.  

## Running tests

You can run the tests any time. All you need to do is:

```
$ cucumber                                           
```
The *cucumber* command perform every test in your project at once.

If you want to run a specific test, run: 

```
$ cucumber -t @createdtag                             
```
**Note:** *createdtag* is the given name to your test suite. Example: *@get or @xml*.

## Give me a feedback

If you know a faster or better way to call Soap API using cucumber, capybara and rspec, please let me know. Or even a new simple way, but totally different.