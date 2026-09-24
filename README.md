# CV

Welcome to the **CV** project. It is a web application that represents my CV in a form of a website.
You can access this by clicking on this [link](https://borokoro.github.io/marek-cichon-cv/)

## Table of Contents
- [Github Pages](#github-pages)
- [Features](#features)
- [Installation](#installation)
- [Packages](#packages)
- [Possible improvements](#possible-improvements)

## Github Pages
This application is hosted using the Github Pages. You can find its deployment [here](https://github.com/Borokoro/marek-cichon-cv). You can find the commands needed
for deployment in the [Makefile](https://github.com/Borokoro/cv/blob/main/Makefile). To use it simply execute the command below inside a project.  
```
 make deploy-web
```
This command will execute all of the commands inside the Makefile. If your command doesn't work I recommend checking if you have make command installed on your device.
If not you can install it by following the steps provided in the most voted answear on this [page](https://stackoverflow.com/questions/32127524/how-can-i-install-and-use-make-in-windows).

## Features

### CV page

CV page view based on the pdf file. The page itself is future proved. You can easily add new experience or modify the existing ones thanks to following the rules of clean architecture.
The view is also fully responsive.

### Projects page

This is an addition to my CV that is not present in pdf version. This view represents all of my projects that I created using Flutter framework (both the commercial ones and private ones).
This view is also fully responsive.

### Multiple languages

This projects uses localizations so the webiste is available in polish and english language. Initialy website takes language of your device and sets up the appropriate language. If its not polish
or english, the webiste will be displayed in english. User can simply change the language by pressing one of the buttons in appbar.

## Installation

You can access the website by clicking on this [link](https://borokoro.github.io/marek-cichon-cv/). Follow the steps below if you want to launch this project on your device.

### Project installation:
1. You have to install IDE. This project was created using Android Studio IDE and I highly recommend it. Go to the website [here](https://developer.android.com/studio) and follow their steps to install it.
2. After you install your IDE of choice you have to install Flutter framework.  Yo can do that by adding Flutter plugin in Android Studio. Alternatively you can go to the website [here](https://docs.flutter.dev/get-started/install) and follow their steps to install it.
3. Install git bash or github desktop. You can do this by going to this [website](https://git-scm.com/downloads) to download git bash or to this [website](https://desktop.github.com/download/) to download github desktop.
4. Clone the repository using the command:
    ```sh
    git clone https://github.com/Borokoro/ball_squad.git
    ```
   or clone this repository from your github desktop.
5. Open the project
6. Use these commands in your project file:
    ```
    flutter upgrade
    flutter pub get
    ```
7. Choose your web browser. You can also launch it on your mobile device but I recommend not doing this if you want the best effect.
8. Run application. I highly recommend to run application in release mode, for the best effect, using the command below:
    ```
    flutter run --release
    ```

## Packages

- [auto_route](https://pub.dev/packages/auto_route)
- [auto_route_generator](https://pub.dev/packages/auto_route_generator)
- [build_runner](https://pub.dev/packages/build_runner)
- [flutter_bloc](https://pub.dev/packages/flutter_bloc)
- [get_it](https://pub.dev/packages/get_it)
- [intl](https://pub.dev/packages/intl)
- [equatable](https://pub.dev/packages/equatable)
- [url_launcher](https://pub.dev/packages/url_launcher)
- [carousel_slider](https://pub.dev/packages/carousel_slider)

## Technicalities

###Fluter

- version: 3.47.5
- channel: stable

 ###IDE
- IDE: Android Studio Panda 2 | 2025.3.2

## Possible improvements

- Creating a BE for storing the projects and experiences. 
- Improving the view for projects page.

 
