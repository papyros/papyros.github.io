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

To run the shell as a window on your desktop, you need to create a fake screen configuration similar to this one for a MacBook Pro:

    {
        "outputs": [
            {
                "mode": {
                    "refreshRate": 60000,
                    "size": {
                        "height": 736,
                        "width": 1285
                    }
                },
                "name": "Fake1",
                "orientation": 2,
                "position": {
                    "x": 0,
                    "y": 0
                }
            }
        ]
    }

You will need to tweak the width and height to match your screen, taking into account the window decoration of the shell window and any system panels in your desktop environment. Save this file somewhere, for example, `~/.config/fake-screen.json`

You can then test the shell by running it in a new window on top of your desktop:

    greenisland --fake-screen ~/.config/fake-screen.json --shell io.papyros.shell

It's still very much in early development, though; the network indicator doesn't work, you can't lock the screen or logout, and there are other missing features. Those features will land over coming weeks.

Happy testing!

