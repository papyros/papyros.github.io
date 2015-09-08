---
layout: page
title: "Download"
order: 4
---

The operating system, desktop shell, and material design framework is still in active development and is in a pre-alpha state. We don't have any installer ISOs or stable repositories. However, we now have an initial package repository for users to try out the Papyros shell on ArchLinux! These packages are automatically built each night by a Buildbot instance running on the Papyros servers.

<i><b>DISCLAIMER</b>: Keep in mind this is very much in a pre-alpha state, and many things are not implemented yet. The packages themselves should work though, as I've tested them locally. No guarantees though!</i>

First, add the following lines to your `/etc/pacman.conf` file, above the default repositories:

    [papyros]
    SigLevel = Never
    Server = http://dash.papyros.io/repos/$repo/$arch

Then, run

    pacman -Syu
    pacman -S papyros-shell

You can  test the shell by running it in a new window on top of your desktop:

    papyros-session

We're getting closer to our first release, but there are still some missing features and many bugs. Stay tuned for more updates!

Happy testing!
