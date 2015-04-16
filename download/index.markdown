---
layout: page
title: "Download"
---

The operating system, desktop shell, and material design framework is still in active development and is in a pre-alpha state. We don't have any installer ISOs or stable repositories. However, we now have an initial package repository for users to try out the Papyros shell on ArchLinux!

<i><b>DISCLAIMER</b>: Currently, there are packages for x86_64 architecture only, as the qt5 packages are big and will take time to compile again for i686. Keep in mind this is very much in a pre-alpha state, and many things are not implemented yet. The packages themselves should work though, as I've tested them locally. No guarantees though!</i>

First, add the following lines to your `/etc/pacman.conf` file, above the default repositories:

    [papyros]
    SigLevel = Never
    Server = http://dash.papyros.io/repos/$repo/$arch

Then, run

    pacman -Syu
    pacman -S papyros-shell

You can then test the shell by running it in a new window on top of your desktop:

    papyros-shell

It's still very much in early development, though; the network indicator doesn't work, and you can't even start apps in the shell yet. Those features will land over coming weeks.

Happy testing!

