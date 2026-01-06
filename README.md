# My Personal Blog

A personal blog built with Python and Pelican static site generator.

## Features

- Static site generation with Pelican 4.11.0
- **Gum Theme**: Clean, responsive blog theme with Smashing Magazine-inspired black and red color scheme
- Markdown support for writing posts
- **Math Rendering**: LaTeX/MathJax support via pelican-render-math
- **SEO**: Automated sitemap generation
- **Gravatar Integration**: Author avatars from Gravatar
- RSS/Atom feeds for content syndication
- Dark mode support with matching color palette
- Clean and simple structure
- Easy to customize and extend

## Prerequisites

- Python 3.12 or higher
- pip (Python package installer)

## Setup

1. Create and activate the virtual environment:
```bash
python3 -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
```

2. Install dependencies:
```bash
pip install -r requirements.txt
```

## Usage

### Writing Content

- **Blog Posts**: Create markdown files in the `content/` directory
- **Static Pages**: Create markdown files in the `content/pages/` directory

Example post format:
```markdown
Title: My Post Title
Date: 2026-01-06 10:00
Category: General
Tags: tag1, tag2
Slug: my-post-slug
Authors: Your Name
Summary: Brief summary of the post

Your content here...
```

### Math Rendering

The blog supports LaTeX math rendering. To include math in your posts:

**Inline math**: Use `$...$` syntax
```markdown
The equation $E = mc^2$ is famous.
```

**Display math**: Use `$$...$$` syntax
```markdown
$$
\int_{-\infty}^{\infty} e^{-x^2} dx = \sqrt{\pi}
$$
```

### Building the Site

Build the site:
```bash
make html
```

Or using pelican directly:
```bash
source venv/bin/activate
pelican content -s pelicanconf.py -o output
```

### Preview the Site

Run a development server with auto-reload:
```bash
make devserver
```

Or serve the built site:
```bash
make serve
```

Then open your browser to `http://localhost:8000`

### Other Useful Commands

- `make clean` - Remove generated files
- `make regenerate` - Regenerate files upon modification
- `make publish` - Generate using production settings

## Configuration

- `pelicanconf.py` - Development settings
- `publishconf.py` - Production settings

Edit these files to customize:
- Site name and author
- Timezone and language
- Menu items
- Theme and plugins
- And more...

### Theme

This blog uses the **Gum theme**, a clean and responsive Pelican theme with a custom **Smashing Magazine-inspired color scheme** (black and red). The theme is located in `themes/gum/`.

#### Color Scheme

The blog features a professional black and red color palette inspired by [Smashing Magazine's classic design](https://www.smashingmagazine.com/2009/08/designing-a-html-5-layout-from-scratch/):

**Light Theme:**
- Background: `#F5F4EF` (warm beige)
- Text: `#000305` (near-black)
- Accent/Links: `#C74350` (red)
- Link Hover: `#a03540` (darker red)

**Dark Theme:**
- Background: `#0f0f0f` (near-black)
- Text: `#e8e7e0` (light beige)
- Accent/Links: `#e85d6a` (bright red)
- Link Hover: `#ff8090` (lighter red)

Colors can be customized by editing the CSS variables in `themes/gum/static/style.css`.

To use a different theme:
1. Download or clone the theme into the `themes/` directory
2. Update `THEME = './themes/your-theme-name'` in `pelicanconf.py`

### Plugins

The following plugins are enabled:

- **render_math**: Enables LaTeX/MathJax math rendering in posts
- **sitemap**: Automatically generates sitemap.xml for SEO
- **gravatar**: Displays author Gravatar images

Plugins are located in `pelican-plugins/` directory.

## Project Structure

```
.
├── content/              # Your blog posts and pages
│   ├── pages/           # Static pages (About, Feed, etc.)
│   ├── extra/           # Extra files (robots.txt, etc.)
│   ├── images/          # Blog images
│   └── *.md             # Blog posts
├── output/              # Generated HTML files
├── themes/              # Pelican themes
│   └── gum/            # Gum theme
├── pelican-plugins/     # Pelican plugins
├── venv/                # Virtual environment
├── pelicanconf.py       # Development configuration
├── publishconf.py       # Production configuration
├── Makefile             # Build automation
└── requirements.txt     # Python dependencies
```

## Deployment

After running `make publish`, upload the contents of the `output/` directory to your web server or hosting platform.

Popular options:
- GitHub Pages
- Netlify
- Vercel
- AWS S3
- Traditional web hosting

## Resources

- [Pelican Documentation](https://docs.getpelican.com/)
- [Pelican Themes](https://github.com/getpelican/pelican-themes)
- [Pelican Plugins](https://github.com/getpelican/pelican-plugins)

## License

Your license here
