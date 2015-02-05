---
layout: post
title: "Monthly Status Update 1/15"
date: 2015-02-04T23:06:12-06:00
---

I had originally planned to do weekly status updates, but I've been busy focusing on actual development and normal life, so I've only had time to do one update so far. So, we'll turn the updates into monthly updates instead. I'll start off by calling this the January update so as to get another one in at the end of February.

The biggest news since our first update is that we've settled on a new name - Papyros! (The old name, Quantum OS, was trademarked by an existing company). Our website is now [papyros.io](http://papyros.io), and you can follow us on [Google+](https://plus.google.com/113262712329378697012) or join our [Google+ community](https://plus.google.com/u/0/communities/109966288908859324845).

### New Team Members

I'd like to welcome several new designers and developers to our team who have shown continued great contributions in code and designs.

Our design team consists of:

 * Myself, Michael Spencer (well, I'm a developer, not a professional designer, but I care a lot about design)
 * Josh Gray
 * Christopher Spencer
 * Andrea Del Sarto
 * Christoph Laier

And our development team consists of:

 * Michael Spencer (that's me again)
 * Bogdan Cuza
 * Ricardo Vieira

Thanks to this awesome team and to everyone else who has show interest, given support, or contributed to the project.

### Overall OS progress

Work on the overall OS is progressing nicely. Our design team has done some great mockups for the installer and some of the core apps, including the web browser and calculator. We also have our first packages available in the AUR, which you can install as [papyros-shell](https://aur.archlinux.org/packages/papyros-shell/).

Work is also starting on a build server to host packages so users don't have to compile everything from scratch, which takes a very long time, especially in VirtualBox. Unfortunately, there are some issues with the build tooling on the server, but hopefully that can be worked on soon.

### Material Design framework

Lots of work has gone into polishing the Material Design framework. Some of the features that have been implemented include:

 * An improved dialog component
 * A FAB/action button
 * Dropdown and navbar overflow menu
 * Slider component
 * Improved textfield
 * Switch to QtQuick Controls for the PageStack
 * Improved ink animations

### Desktop shell

Lots of work has gone into Papyros shell, and it's getting closer and closer to at least being semi-usable as a full desktop session. We also reached a significant milestone by being able to run it as a Wayland session from GDM using Qt 5.5's eglfs bindings.

Some of the features that have been implemented in the past two months include:

 * A music control widget in the widgets/notification drawer
 * The sound indicator
 * The power indicator
 * A classic layout, similar to Chrome OS

Current in-development features include:

 * The network indicator
 * App launcher
 * App icons in the panel
 * The modern layout, similar to GNOME/Ubuntu/OS X

 Here's a nice screenshot of our work so far, highlighting the classic layout and our fancy calendar indicator:

 {% img /images/monthly_update_1_15/screenshot_1.png %}

### OSTree and App Bundles

We've successfully set up building OSTree images from Arch packages, and have tested a GNOME OSTree image in VirtualBox. We've built a Papyros image too, but it's having Wayland issues.

This is huge step forward, as we now have the foundation for a fully atomic, stable, and read-only base OS using OSTree and Arch Linux. Awesome stuff! If you want try it out, check out the [Powerpack](https://github.com/papyros/powerpack) repository, and follow the instructions in the README. The plan is to eventually start building the OSTree repository and VirtualBox images (plus eventually installable ISOs) on our build server, but for you now must compile it from scratch.

In addition OSTree providing the base operating system, we are also looking to using a new GNOME project called [xdg-app](https://github.com/alexlarsson/xdg-app), which implements [App Bundles and sandboxing](https://wiki.gnome.org/Projects/SandboxedApps). This will support the concept of runtimes, such as GNOME 3.16, Papyros 0.1, KDE 5.2, etc., which allow multiple versions installed side-by-side without breaking apps. This will allow applications to be upgraded independent of each other and the base OS.

### Core Apps

Some work has started on the [Settings app](https://github.com/papyros/settings-app), but most of it is in the planning phase still.

The great news is an app developer has started on what will probably be the default Calculator app! Check out his code on [GitHub](https://github.com/PierreJacquier/papyros-calculator) or view his post on [Google+](https://plus.google.com/117435800250066519130/posts/da2JuC1gkbN). Here's a screenshot of the Calendar app:

{% img /images/monthly_update_1_15/papyros-calculator.png %}

### The Website

In case you're new to the project, or didn't happen to notice, we have a new website! It's built with the all-new Octopress 3, which is a static website generator built on top of Jekyll. We're also slowly beginning to implement a Material Design theme using Polymer.

If you're a web developer and interested in contributing, feel free to check out the [GitHub Issues](https://github.com/papyros/papyros.github.io/issues) or [submit a pull request](https://github.com/papyros/papyros.github.io/pulls).

### Getting Involved

Interested in contributing to the project? We have a page for that! Check out our [Get Involved](/get_involved) page. Here you can find ways to contribute, regardless of whether you are a developer, designer, translator, tester, or just plain user.

We also have a Donate button that page, which allows you to donate via Paypal. All donations will go to web hosting and server costs and (once we set them up) bug bounties.

Thanks for everyone's support and interest in our project! Here's to another exciting month of development!

<br/>

-- Michael Spencer, Papyros founder and lead developer
