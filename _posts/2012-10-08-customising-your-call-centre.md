---
layout: post
title: "Customising Your Call Centre"
description: ""
category:
tags: ["Call Centre", "Introduction"]
---

{% include JB/setup %}

# Customising Your Call Centre #

A number of people have said to me that they want to get on and customise the call centre but are a bit feart of breaking it - so here is a quick guide - in 5 simple steps.

The basic call centre only has 42 functions in cells - but it packs a hell of a lot of power into such a little package. So hold onto your hat!

### Step 1 Move Fast And Break Things ###

One of Facebook's internal mottoes is _Move Fast And Break Things_ - lets smash something up.

You're on the call centre, you've had a good shufti around, lets find something to break.

Use the settings tab to crack open the site and go to the spreadsheet view:

![Settings Tab](/images/settings.png)

This is the structure of the site:

![Site Structure](/images/page-structure.png)

See that page _static-data_? Some things appear in lots of different places (like the front page logo and the menus - so what we do is create them on one page and _include_ them everywhere else (using the function `=include(...)` described in detail [here](http://documentation.vixo.com/contents/vixo-functions/layout-and-display/include.html, "Include Function")).

What you should see is the static data - the site log and the main menu:

![Static Data](/images/static-data.png)

Trash any of them and the whole site is toast. **Get yer hammers out!**.

Pick a cell, click on it, and then just type over it. Advanced internet users will want to _seal type_. (This is where you pretend you are a circus seal balancing a ball on your head when your keeper throws you a fish. Bark and hit the keyboard with your pretend flippers).

So you have three levels of defense - if the edit hasn't _taken_ yet, you are still in edit mode just is `[ESC]` (just like you would in escape). Oops, mebbie it has.

Ok, level two of defence. Select the cell you changed and *right-click* on it - then select the `View Cell's History` menu item:

![View Cell's History](/images/right-click-menu.png)

That will give you a complete audit log of all changes to that cell (and you can revert to any of them).

The third level of defence (as long as you are still learning) is to go back to the main [vixo](http://vixo.com/in/contact-centres/#signup "Vixo Website") site and get another one.

In case you are wondering how to get back to the webpage view you can use the `Views` menu at the extreme right of the menu bar:

![View's Menu](/images/views-menu).

You might want to [read up](http://documentation.vixo.com/contents/vixo-overview/web-and-wikipages.html "web and wiki pages") in the documentation at this stage.

**Happier now?**

### Step 2 - Figure Out How The Site Works ###

To understand how the site works you need to see how the various pages fit together.

Basically the page structure we looked at earlier tells you how the site works. All the 'admin' stuff comes from the page `/admin/`.

We can create _statuses_ and _users_ and on an individual user page those values appear in drop down boxes.

The key part of the structure is that new contacts are created in a structured pattern (eg `/contacts/0000001/`, `/contacts/000002/`) etc.

The new contacts are created by the _New Contact_ button. We will see how that works a bit later on.

Poke about a bit and see how the various things fit together.

### Step 3 - Changing Something On A Contact Page ###

A new contact page is created from a _template_. These work just like Excel tempalates - you make them by saving spreadsheet pages as templates.

What we will do now is crack open one of the templates.

Get to a spreadsheet page and select the menu `Site -> New Page...`. When the dialog box opens create the page `/templates/contact/` from the template `contact`.

Muck about with this page an save it using `Site -> Save As Template...` and then every **new** page created will have the new structure.

So go ahead, type something in a blank cell, save the template and then go back to the front page and create new one.

The contact page has a lot of functionality packed into is:

![Contact Page](/images/contact-page.png)

Lets understand how it works.

#### Area 1 Layout ####

This is the common formatting stuff - menus and logos brought through from the page `/static-data/`. Typically you seet these up first. This uses the function `=include(...)` described in detail [here](http://documentation.vixo.com/contents/vixo-functions/layout-and-display/include.html, "Include Function")

#### Area 2 Wiki ####

`Wiki` views are used for data entry - you mark some cells editable. But it is a bit more complex than that. A wiki cell is editable in the _wiki_ view but read-only in the _web_ view. You can [read](http://documentation.vixo.com/contents/vixo-overview/web-and-wikipages.html "web and wiki pages") about them in the documentation.

The basic wiki controls are buttons on the toolbar:

![Wiki Buttons](/images/wiki-buttons.png)

#### Area 3 Phone ####

This is the phone function - not [much](http://documentation.vixo.com/contents/vixo-functions/phone-and-email/phone-out.html "Phone Function") to say.

#### Area 4 Form ####

Forms allow you to collect some data on a page _and stash it on another_. It is often used with the `Table` view.

You need to understand the difference between forms and wikis - [read up](http://documentation.vixo.com/contents/vixo-overview/making-forms.html "Difference Between Forms And Wikis") on it and [read more](http://documentation.vixo.com/contents/indepth/making-forms.html "More Details Of The Difference Between Forms And Wikis").

The [reference](http://documentation.vixo.com/contents/vixo-functions/web-forms/introduction-to-form-functions.html "Web Form References") documentation for forms is worth a read.

#### Area 5 Dropdowns ####

Dropdowns are a type of wiki cell. They are cool - they can refer to a single range of cells - or use [z-queries](http://documentation.vixo.com/contents/indepth/database-queries.html "Z-Queries")

#### Area 6 Table ####

The [table function](http://documentation.vixo.com/contents/vixo-functions/layout-and-display/table.html "Table Function"), [ztable function](http://documentation.vixo.com/contents/vixo-functions/database/ztable.html "ZTable Function") and [link.box function](http://documentation.vixo.com/contents/vixo-functions/database/link.box.html "Link.Box Function") can pull back data from many pages. Here it is used with the form described Area 4. The data from the form is pushed into a series of rows in a spreadsheet and pulled back to this page.

The other cool thing that will help you here is _ghosting_ done with the `ghost button`. Try and work out what it does.

![Ghost Button](/images/ghost-button.png)

### Step 4 Fun With Menus ###

The menus are all set up on the `/static-data/` page.

You have various [menu](http://documentation.vixo.com/contents/vixo-functions/navigation/html-menu.html "Menu Function"), [submenu](http://documentation.vixo.com/contents/vixo-functions/navigation/html-submenu.html "Submenu Function") and [zsubmenu](http://documentation.vixo.com/contents/vixo-functions/navigation/html-zsubmenu.html "ZSubmenu Function") functions to play with.

### Step 5 Actually Do It ###

So you have had some fun reading about this, but have you actually done it? No? Well, what are you waiting for?