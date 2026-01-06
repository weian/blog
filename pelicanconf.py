#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

AUTHOR = '彼岸西飘'
SITENAME = '硅基余温'
SITEURL = ''

PATH = 'content'

TIMEZONE = 'UTC'

DEFAULT_LANG = 'en'

# GitHub URL (optional)
GITHUB_URL = 'https://github.com/yourusername/blog/'

# Favicon
# FAVICON_URL = 'static/images/favicon.ico'

# Theme configuration
THEME = './themes/gum'
DIRECT_TEMPLATES = ('index', 'tags', 'categories', 'archives')

# Sidebar configuration
SHOW_PAGES_IN_SIDEBAR = False

# Feed generation is usually not desired when developing
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None

# Blogroll (commented out for clean design)
# LINKS = (
#     ('Pelican', 'https://getpelican.com/'),
#     ('Python.org', 'https://www.python.org/'),
# )

# Social widget (commented out for clean design)
# SOCIAL = (
#     ('GitHub', 'https://github.com/yourusername'),
#     ('Twitter', 'https://twitter.com/yourusername'),
# )

# Static paths
STATIC_PATHS = ['extra/robots.txt', 'images']
EXTRA_PATH_METADATA = {
    'extra/robots.txt': {'path': 'robots.txt'},
}

# Menu items
MENUITEMS = (
    ('Archives', '/archives.html'),
    ('About', '/pages/about.html'),
    ('Subscribe', '/pages/feed.html'),
    # Add more menu items as needed
)

# Plugins
PLUGIN_PATHS = ['./pelican-plugins']
PLUGINS = ['render_math', 'sitemap', 'gravatar']

# Sitemap configuration
SITEMAP = {
    'format': 'xml',
    'priorities': {
        'articles': 0.5,
        'indexes': 0.5,
        'pages': 0.5
    },
    'changefreqs': {
        'articles': 'monthly',
        'indexes': 'daily',
        'pages': 'monthly'
    }
}

# LaTeX support
LATEX = 'article'

DEFAULT_PAGINATION = 5

# Uncomment following line if you want document-relative URLs when developing
RELATIVE_URLS = True
