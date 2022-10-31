---
layout: post
title:  "BindWinEvent"
date:   2022-10-31 16:00:00 -0500
categories: vfpx update
---

[BindWinEvent](https://github.com/JoelLeach/BindWinEvent) is a small framework that allows multiple bindings to Windows message events. From the VFP Help file in the BindEvent() topic:

*When binding to Windows message (Win Msg) events, only one hWnd to Windows message pairing can exist.*

This can cause conflicts when multiple VFP programs are trying to bind to the same Windows message event. This framework works around the issue by effectively translating the Win Msg events to standard Fox events and tracking them accordingly.
