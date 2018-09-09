## iOS Project Template

A template to jumpstart your next iOS project.

## Motivation

When working for early stage startups I frequently had to start new projects from scratch. While doing this I noticed that I am spending a lot of time doing basic project setup and reimplementing the same structure and base classes in every project from scratch.

This template should save project setup time and also provide a common foundation that each team member will be accustomed to so that you don't have to think and explore the project structure and foundations. They will always be the same.

## Prerequisites:
- [Cookiecutter](https://cookiecutter.readthedocs.io/en/latest/installation.html)

## Usage

The project uses Cookiecutter for project templating. To create a new project from this template just run:

```
cookiecutter https://github.com/pgorzelany/iOS-project-template.git
```

You will get a prompt to give a new app name. Thats it, you should have a new folder with your new app created based on this template!

## Additional configuration

You will have to manually configure the bundle id of the main target and test target.

## Contents

- Standard project structure
- Swiftlint integration
- R.swift integration
- Separate AppDelegate for testing
- MainNavigator - responsible for setting up the controller structure at app startup.
- DeeplinkManager - responsible for handling deeplinks
- NotificationsManager - responsible for handling notifications
