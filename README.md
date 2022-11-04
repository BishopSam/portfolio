# My Portfolio

Table of contents
=================
<!--ts-->
   * [Project Description](#project-description)
   * [Project Structure](#project-structure)
   * [Design](#design)
   * [Libaries Used](#libaries-used)
   * [Coming Soon](#coming-soon)
   * [Challenges Faced](#challenges-faced)
   * [Gallery](#gallery)
   * [App Demo](#app-demo)
   
<!--te-->

Project Description
===================
This app displays my portfolio, it contains a responsive side menu that displays my bio data, major skills, languages, nontechnical skills and links to my media platforms. The main screen which is also responsive contains a toggle button for switching between dark and light modes. It also contains a header banner which displays an animated text. Information about me, my projects, and recommendations can also be found on the responsive main screen.

Project Structure
=================
Since this is essentially a one page UI based app that doesn't make any API calls, i decided to come up with a pretty straight forward code base structure. 👇

![Screenshot 2022-11-04 114146](https://user-images.githubusercontent.com/59648161/199953859-d008c21c-cce3-4ee5-a4ee-d34c99f86785.png)

This table tries to explain the purpose of each folder

| Folder | Description |
| ------- | ------- |
| `common_widgets` | All widgets used accross the app are contained here |
| `constants` | All app constant values go in here, like the `app_colors` and `app_sizes` |
| `home` | This is the main folder of the app, where the `side_menu` and `responsive_main_screen` are integrated to be displayed |
| `models` | This folder contains model classes used for the app ie `project` and `recommendation` |
| `theme` | The theme controller folder, this folder contains files that controll the theme of the app |

Design
======
This design was inspired by Abu Anwar of the flutter way on youtube, [Here](https://www.youtube.com/watch?v=G_ZIJseX6AU&list=WL&index=1&t=96s) is a link to the resource.

Libaries Used
=============
Below is in image of my `pubspec.yaml` file that contains the libaries used 👇

![image](https://user-images.githubusercontent.com/59648161/199956862-8b9efd23-abd4-4aad-bb35-577d15149741.png)

This table tries to explain the purpose of each library.

| Library | Purpose |
| ------- | ------- |
| `animated_text_kit` | This libary is responsible for the text animation seen on my header banner |
| `flutter_svg` | This library is responsible for loading svg files in the flutter app |
| `google_fonts` | This library is responsible for the fonts seen on the app|
| `toggle_switch` | This library is used to create the custom toggle switch used to change the apps theme |
| `url_launcher` | This library is used for launching the various links to my various platforms |

Coming Soon
===========
Due to time constraints, I have decided to slot these features for the v2 of this portfolio.

| Feature | Description |
| ------- | ------- |
| In-App Browser Launching | This feature will insure that all links launch in the app |
| Web hosting | I intend to host this on the web so it'd serve as my portfolio website |
| Download CV | This will activate the `download_cv` button and esnure my cv is downloaded|
| Localizations | This feature will ensure that my portfolio can be loaded in various locals, thus changing the language when necessary |
| State Management | Depending on how complex the above features might become, i might add riverpod to handle the app's state |

Challenges Faced
================
Below are some major challenges faced and their solutions

#### The App's Design:
Since we were not given any design to implement finding one was kind of tough, so i decided to visit youtube and use the one i came across.
 
#### The App's Theme:
There was a little problem on figuring out how to implement the apps theme functionality, especially the button for the toggling. After some deep thoughts, i decided !
to make it responsive in such a way that its on the app bar on normal screens and its a stack on the header banner on large screens. 

Gallery
=======
Here are some screen shots of the app

1. On a Large Screen

a. Landscape
![2022-11-04 10-18-43 High Res Screenshot](https://user-images.githubusercontent.com/59648161/199960402-e5b01c73-2dbe-4173-8049-c2683a8a5358.png)

b. Portrait
![2022-11-04 10-19-02 High Res Screenshot](https://user-images.githubusercontent.com/59648161/199960607-dd1a0c93-5ab8-4851-b224-10a5ee928dbe.png)


2. On a Mobile Screen

a. Landscape
![2022-11-04 10-26-36 High Res Screenshot](https://user-images.githubusercontent.com/59648161/199960684-83f971b9-c764-4da1-b785-2d858f869a6e.png)

b. Portrait
![2022-11-04 10-26-47 High Res Screenshot](https://user-images.githubusercontent.com/59648161/199960850-c70ca0ae-8e54-4a7f-a947-161046761365.png)

App Demo
========
[Here](https://appetize.io/app/vlirlox4w7nxynxlw43mddurbi?device=pixel4&osVersion=11.0&scale=75) is a link to the hosted app on appetize.io

[Here](https://drive.google.com/file/d/1fE5Pr3o0QhGTWWG8Zr4zRrnSuIDl0q6O/view?usp=drivesdk) is a link to the downloadable apk file

#### NB: The dark theme button may not work because the emulators on appetize.io have disabled dark theme forever, so kindly go to the phones settings, search dark theme and activate it, come back to the app and then the toggle switch would begin working 👍 
