---
layout: page
title: The Vixo Blog
tagline: tips and tricks for using vixo
---
Welcome to the Vixo blog - home of the latest tips and tricks for building your own systems in Vixo.

## Latest Tips and Tricks ##
<ul>
{% for post in site.posts limit: 5 %}
    <li>
            <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
    </br> <em>{{ post.excerpt }} </em>
{% endfor %}
</ul>

