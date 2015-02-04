---
layout: post
title: "Introduction and Initial Plans"
date: 2014-11-19 18:48:41 -0600
comments: true
categories:
---

Welcome to Papyros! We are working on developing an operating system based upon Linux which conforms to Google's [Material Design guidelines](http://google.com/design/). The focus will be on creating a stable and easy-to-use operating system with a heavy emphasis on well-thought-out design.

**UPDATE:** Quantum OS has been renamed to Papyros to avoid trademark issues.

### The Desktop Shell

We plan to develop the desktop shell and applications primarily using Qt 5 and QML, which will allow us to build highly polished and dynamic user interfaces and will work well for implementing Material Design. If possible, we will build the desktop shell in as much QML as possible built on top of the QtCompositor API, which provides a Qt framework for building a Wayland compositor.

We already have some working code with an experimental desktop layout:

{% img /images/desktop_layout_1.png %}

### Applications

Our application framework will be based upon a QML UI toolkit implementing Material Design. It is written completely from scratch, and does not use QtQuick Controls, and is not a fork or theme for the Ubuntu UI toolkit. The reason for this is that we want to be able to focus specifically on implementing Material Design, which has several unique features, such as the concept of elevation. We will most likely have a Qt/Gtk theme for existing apps, but the official recommendation will be writing new applications or porting existing applications to the Material Design framework. The API will be similar to that of other QML frameworks such as the Ubuntu UI toolkit, so it will not be too difficult porting existing apps.

The UI framework itself will be cross-platform, just as Qt itself is, so apps written with it will run on OS X, Windows, or other Linux distributions. This plays well with the concept of Material Design, which aims to be a cross-platform design framework.

We also plan to support web apps and treat them as nicely as possible. This will probably involve a simple wrapper that allows web apps to have their own icon and window with no browser chrome.

The Material Design QML framework is well underway, as can be seen from this sample application:

{% img /images/blueprint_1.png %}

### The Base Operating System

We plan to initially leverage an existing operating system, most likely Arch or Ubuntu. Arch is a strong possibility because of the simple packaging manager, lightweight base system, and the rolling release concept. Our goal is to base our work on the latest upstream versions available, with no patches or modifications, so our work will run on any base Linux distro that supports Wayland.

We will also need to build a login manager and installer. Our plan is to write a theme for SDDM, which supports themes written in QML. We don't have any plans for an installer yet, as that will need to wait until a base OS is chosen.


### The Development Team and Code

Currently the team consists of mainly just myself ([Michael Spencer](https://plus.google.com/u/0/+MichaelSpencer)/[@iBeliever](https://github.com/iBeliever)), though I am already getting some great design feedback and mockups from [Andrea Del Sarto](https://plus.google.com/u/0/+AndreaDelSarto88). Anyone who is interested in contributing code, design, feedback, or testing is welcome to contribute, though I plan to remain in control of project management to ensure that we stay focused on our goals. I am certainly open to suggestions and feedback, though!

We are hosting our code on GitHub at <https://github.com/papyros>, with the Material Design QML framework hosted at <https://github.com/papyros/qml-material>. You can also track our mockups [here](https://github.com/papyros/mockups), though because of the flexibility and power of QML, we often work directly in code versus designing mockups first.
