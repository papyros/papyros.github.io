---
layout: post
title: "Weekly Status Update"
date: 2014-12-19 19:55:59 -0600
comments: true
categories: weekly-status
---

We'lll be starting weekly status updates to share progress on the various components of Quantum OS.

### QML Material

21 commits where made to our Material Design framework during the past week. The following features
were implemented:

* Implement the Switch control and update the design to match Material Design [[@boghison](https://github.com/boghison),[@iBeliever](https://github.com/iBeliever)]
* Switch to GitFlow, and set up a CONTRIBUTING.md document [[@iBeliever](https://github.com/iBeliever)]
* Load more of the Roboto fonts [[@glenfordwilliams](https://github.com/glenfordwilliams)]
* Initial work on a component demo app [[@iBeliever](https://github.com/iBeliever)]
  * Initial demos cover the Button, Switch, Icon, and Progress Bar components
* Improvements to the Snackbar component [[@boghison](https://github.com/boghison)]

Ongoing work includes:

* Migrating to QtQuick.Controls
* Rewriting the PageStack code to use QtQuick.Controls and sort out the way transitions, etc are handled [[#36](https://github.com/quantum-os/qml-material/issues/36), [#37](https://github.com/quantum-os/qml-material/issues/37)]
* Investigating how to handle the various styles of the Robot font [[#46](https://github.com/quantum-os/qml-material/issues/46)]

Thanks to all the developers who have contributed code to the project this week and in past weeks!
I'd like to especially mention [@geiseri](https://github.com/geiseri)  who has been helping us migrate to QtQuick.Controls along
with contributing other great feedback and discussion about how we're implementing various features.

### Quantum Shell

No commits landed in the main branch for Quantum Shell, as discussion was ongoing and any work was made
to separate repositories or branches. The following items were discussed or worked on:

* Implementing the Music indicator [[#14](https://github.com/quantum-os/quantum-shell/issues/14), [#16](https://github.com/quantum-os/quantum-shell/issues/16)]
* Implementing the Network indicator [[#17](https://github.com/quantum-os/quantum-shell/issues/17)]

Planning also continues on different designs and layouts and deciding what features to implement.

### SDDM Theme

Not much happening here, as the focus during the past week has been on other comments. However, [@boghison](https://github.com/boghison) did turn the initial prototype into a working SDDM theme, which is awesome.

### General OS progress

A large part of my time this week was spent on the following items:

* Trying to get QtCompositor compiled and working on Arch Linux, which will be the base for our OS
* Studying and learning how to use OSTree, which will be the distribution/release technology used in Quantum OS

Other ongoing issues include:

* Picking a new name. With the majority of my time spent on other tasks, I have not spent much time on this. I have several names to research in the US trademark databases and perform general internet seaches on. Currently, my favorite candidate is Papyros, as a modified version of papyrus, an anchient form of paper, which fits with Material Design and the concept of paper used.
* Getting a list of packages we will need to ship together
* Designing various aspects of the desktop shell, applications, and OS in general

In closing, we're making good progress towards building an awesome OS! Thanks to everyone interested in the project and who have offered support, ideas and suggestions, design feedback, or code contributions. That's the power of open source!

Christmas is coming up next week, so I may not do a progress report next Friday and will probably not make a whole lot of progress on Quantum OS work as well. I'll be back in full force the next week, though!

Have a blessed Christmas and a happy New Year!
