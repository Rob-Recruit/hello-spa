# HelloSpa

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 9.1.0.

## Development server

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.

## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

## Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory. Use the `--prod` flag for a production build.

## Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

## Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via [Protractor](http://www.protractortest.org/).

## Deploy on VirtualBox vm 

Prerequisite:

[Virtualbox](https://www.virtualbox.org/manual/UserManual.html#installation) installed and [Vagrant](https://www.vagrantup.com/docs/installation) installed

1. Clone od download the app repostory
2. Run `vagrant up`


> INFO: 
>
>	- IP of Virtualbox vm is assigned by DHCP
>	- app is accessible on 8060 port on host (app is served by dokcker on port 80 forwarded to 8080 on vm and forwarded again on 8060)
>	- to login to VB run `vagrant ssh`
>	- app folder is copied first to VirtualBox vm and next built into docker image
>	- VirtualBox vm name is: HellospaNP
>	- docker image name built in deployment process is: hello-spa (taged as latest)
>	- docker conatiner is named: hello-spa-container 





## Further help

To get more help on the Angular CLI use `ng help` or go check out the [Angular CLI README](https://github.com/angular/angular-cli/blob/master/README.md).
