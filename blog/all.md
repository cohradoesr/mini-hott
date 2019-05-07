---
layout: page
permalink: /all/
title: All
---

<div id="archives">
{% for category in site.categories %}
{% capture category_name %}{{ category | first }}{% endcapture %}
  <div id="#{{ category_name | slugize }}"> <h3>{{ category_name }}</h3></div>
  <div class="post-list">
    {% for post in site.categories[category_name] %}
    <div class="myentry">
      <div class="myentry-date">{{post.date  | date: '%d/%m/%Y'}} </div>
      <div class="myentry-title"><a href="{{ site.baseurl }}{{ post.url }}">{{post.title}}</a></div>
      <div class="myentry-message"><small> {{post.git.last_commit.message}}</small></div>
      <div class="myentry-modified"><a href="{{site.github.repository_url}}/commit/{{post.git.last_commit.long_sha}}">{{post.git.last_commit.commit_date | date: '%d/%m/%Y'}}</a></div>
    </div>
    {% endfor %}
  </div>

{% endfor %}
</div>
