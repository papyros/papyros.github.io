---
layout: page
title: "Frequently Asked Questions"
date: 2014-12-13 17:00
comments: true
sharing: true
footer: true
---

### Is this only just a bunch of mockups or is it a real working OS?

Yes, we do have real working code and lots of progress is going on. Check out our repositories on GitHub
at <https://github.com/papyros>.

### You're building yet another desktop shell! Why not just theme KDE?

We're not building an entire desktop shell from scratch - we're building a Wayland compositor
using the QtCompositor APIs, which takes care of most of the work for window management and
compositing. It's so easy that a working compositor can be built in 9 files or less. We'll still
have to implement the standard indicators and app launching, but we believe that by focusing just
on wayland and not offering a ton of theming and configuration options, we can build a very small
desktop shell that works well and has very clean code.

### Why build an entirely new OS?

First of all, we aren't. We will be building on top of an existing Linux distro, Arch Linux.

However, to work well for the typical computer user, we'll be focusing on an easy-to-use system,
with stable, reproducable system installs and atomic upgrades. This will most likely be done using
[OSTree](https://wiki.gnome.org/action/show/Projects/OSTree), which is like Git for operating
systems.

While this will at least initially limit what you'll be able to install on the system, our desktop
shell and other software should work well on any Linux distro that offers the latest packages.

### When is it going to be released?

February 30 :)

Seriously, though, we'll release it when it's ready, whenever that will be. As work progresses,
we'll release instructions for installing packages on top of Arch Linux and also instructions for
installing via OSTree on top of your current system so you can switch back and fourth without having
to make a full install to a separate partition.

Then, finally, we'll release ISOs to install the operating system in a VM or on an actual computer,
once we have our installer finished.

### Is it going to be a GNU free distro?

Our goal is not to be a pure free-software distro; if you want that, install our apps, shell, and
login screen on another distro. Our goal is to be the best possible operating system for the typical
computing user. So, if that means supporting proprietary software such as firmware and drivers, than
we will support non-free software. And that includes supporting an appstore that supports selling
proprietary software (if we ever get to that point).

My goal for the OS itself is to focus on an ellegent user experience for the typical computing user.
This may limit its use for certain use cases (for example, if we use OSTree), or may require that
we support non-free software. It certainly won't please everyone. If you don't like the OS itself,
go find your own distro and install our packages on top of it.﻿

I'm not developing this operating system to please everyone. I'm developing it as a hobby project
to fullfill a list of requirements that I've put forth, and being an ideal distro that doesn't
work for users is not one of them.﻿

### So you're selling your operating system?

No, we are a completely open-source project, with the code available on GitHub at
<https://github.com/papyros>, and the operating system will be available at no cost. Our main
software is licensed under the GPL, while our application framework implementing Material Design is
LGPL. By not following GNU free distro guidelines, that simply means that we will support the user
using firmware and drivers that do not have source code and are released under a proprietary license.
That does not mean that we will be charging for our work.

Instead, once we have more work to show, we will be accepting direct donations and donations via
bug bounties to pay developers for their time and work. We may also use crowdfunding to cover
the costs of major new features.

### Why don't you use a bottom bar, like Windows or Chrome OS?

There have been several mockups shared with our Google+ community which have a bottom bar, much
like Chrome OS, and these mockups have generated much interest. Unfortunately, we will not be
considering actually developing a layout with a Chrome OS-like bottom bar, simply because we are
already following a similar design language (Material Design), and we do not want Papyros to be
an exact clone of Chrome OS. In the future, it might be added as a secondary option, but it will
never become the default.

### So, you're just another person/project crazy about all things Google and Material Design in particular.

No. I (Michael Spencer, the project manager and lead dev) have been planning on developing an
operating system for several years now, and have been working on ideas for the OS and reading up
about people's thoughts about Linux Desktops in genernal. I actually had started to develop my own
UI style somewhat similar to the Bootstrap web framework, but then Google announced Material Design
and I decided just to use that as Material Design looked really nice and it obviously would get
a lot of support and interest since it came from a big company like Google.

### But you're using Google apps!

No. Those are just icons and examples used in the mockups and prototypes because we don't have our
own apps and icon theme yet. We won't be actually using Google's apps in the operating system,
though they will probably be supported via Chrome.

### You really plan to build all the apps yourself?

We'll work with other projects to support existing Gtk/Qt apps using a Material Design theme, but,
as with any design guidelines, the best apps will be those built to follow the guidelines. So, we
will build a few core apps ourselves and promote our Material Design framework for building native apps,
along with supporting web apps via Google's Polymer web framework.
