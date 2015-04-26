---
layout: page
title: "Support"
---

You can contact us and get help and support from a variety of resources:

* File bugs or feature requests at <https://github.com/papyros>
* Join our [Google+ community](https://plus.google.com/communities/109966288908859324845)
* Join our [mailing list on Google Groups](https://groups.google.com/forum/#!forum/papyros)
* Chat with us on [IRC at #papyros](http://webchat.freenode.net/?channels=papyros)
* If you're a developer, you might want to check out one of the following Gitter channels:
  * [papyros/papyros](https://gitter.im/papyros/papyros) for general development and discussion
  * [papyros/qml-material](https://gitter.im/papyros/qml-material) for development and discussion of our Material Design toolkit for QtQuick
* You can also contact the Papyros founder and lead developer, Michael Spencer, personally at [mspencer@sonrisesoftware.com](mailto:mspencer@sonrisesoftware.com)

#### Frequently Asked Questions

##### Is this only just a bunch of mockups or is it a real working OS?

Yes, we do have real working code and lots of progress is going on. Check out our repositories on GitHub
at <https://github.com/papyros>.

##### You're building yet another desktop shell! Why not just theme KDE?

We're not building an entire desktop shell and window manager from scratch -- we're building a Wayland compositor using [Green Island](https://github.com/greenisland/greenisland) and the QtCompositor APIs, which takes care of most of the work for window management and compositing. It's so easy that a working compositor can be built in 9 files or less. We'll still have to implement the standard indicators and app launching, but we believe that by focusing just on wayland and not offering a ton of theming and configuration options, we can build a very small desktop shell that works well and has very clean code.

##### Why build an entirely new OS?

First of all, we aren't. We will be building on top of an existing Linux distro, Arch Linux.

However, to work well for the typical computer user, we'll be focusing on an easy-to-use system, with stable, reproducable system installs and atomic upgrades. This will most likely be done using [OSTree](https://wiki.gnome.org/action/show/Projects/OSTree), which is like Git for operating systems.

While this will at least initially limit what you'll be able to install on the system, our desktop shell and other software should work well on any Linux distro that offers the latest packages. Our plan is to eventually support all or many of the packages from the Arch repository and the AUR via either composing the custom packages on top OSTree repository locally, or via a writable overlay on top of the read-only root filesystem.

##### When is it going to be released?

We'll release it when it's ready, whenever that will be. As of right now, you can install packages on Arch of our current pre-alpha work.

Soon, we hope to release an alpha of the Material Design framework and then the desktop shell.

Then, finally, we'll release ISOs to install the operating system in a VM or on an actual computer, once we have our installer finished.

##### Is it going to be a GNU free distro?

Our goal is not to be a pure free-software distro; if you want that, install our apps, shell, and
login screen on another distro. Our goal is to be the best possible operating system for the typical
computing user. So, if that means supporting proprietary software such as firmware and drivers, than
we will support non-free software. And that includes supporting an appstore that supports selling
proprietary software (if we ever get to that point).

My goal for the OS itself is to focus on an elegant user experience for the typical computing user.
This may limit its use for certain use cases (for example, if we use OSTree), or may require that
we support non-free software. It certainly won't please everyone. If you don't like the OS itself,
go find your own distro and install our packages on top of it.﻿

I'm not developing this operating system to please everyone. I'm developing it as a hobby project
to fulfill a list of requirements that I've put forth, and being an ideal distro that doesn't
work for users is not one of them.﻿

##### So you're selling your operating system?

No, we are a completely open-source project, with the code available on GitHub at <https://github.com/papyros>, and the operating system will be available at no cost. Our main software is licensed under the GPL, while our application framework implementing Material Design is LGPL. By not following GNU free distro guidelines, that simply means that we will support the user using firmware and drivers that do not have source code and are released under a proprietary license. That does not mean that we will be charging for our work.

Instead, once we have more work to show, we will be accepting direct donations and donations via bug bounties to pay developers for their time and work. We may also use crowdfunding to cover the costs of major new features.

##### So, you're just another person/project crazy about all things Google and Material Design in particular.

No. I (Michael Spencer, the project's founder and lead developer) have been planning on developing an operating system for several years now, and have been working on ideas for the OS and reading up about people's thoughts about Linux Desktops in general. I actually had started to develop my own UI style somewhat similar to the Bootstrap web framework, but then Google announced Material Design and I decided just to use that as Material Design looked really nice and it obviously would get a lot of support and interest since it came from a big company like Google.

##### You really plan to build all the apps yourself?

We'll work with other projects to support existing Gtk/Qt apps using a Material Design theme, but, as with any design guidelines, the best apps will be those built to follow the guidelines. So, we will build a few core apps ourselves and promote our Material Design framework for building native apps, along with supporting web apps via Google's Polymer web framework.
