# {{cookiecutter.app_name}}

Supports: iOS 10.x and above

## Branches:

* master - stable app releases
* develop - development branch, merge your feature branches here

## Dependencies:

The project is using cocoapods for managing external libraries and a Gemfile for managing the cocoapods version.

Get Bundler

```
sudo gem install bundler
```

To install the specific cocoapods version run

```
bundle install
```

Then install the pods

```
bundle exec pod install
```

### Core Dependencies

* Swiftlint - A tool to enforce Swift style and conventions.
* R.swift - Get strong typed, autocompleted resources like images, fonts and segues in Swift projects

## Structure:

* Resources - base constants, fonts, strings, images, generated files etc.
* SupportingFiles - configurations, plist files
* Models - model objects
* Modules - contains app modules (Controllers, Views, ViewModels)
* Helpers - extension and utility classes
* Components - contains the generic reusable classes
* Networking - the API 
* * Services - all of the app services - a service is a layer between the Networking layer and the app modules, handling caches as well.
* Coordinators - a coordinator is an object that handle coordination between modules (screen)

## Configurations:

The project has 2 schemes; 
* One for development
* One for production

 
