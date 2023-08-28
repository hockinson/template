# Hockinson $\LaTeX$ Template

This is a template $\LaTeX$ file with placeholder (`blindtext`) text.

## Features

- Title
- Table of contents
- Document structure
- ~~Bibliography~~

## Setup

Start by downloading or cloning the repository locally: 

```bash
# Clone via SSH
git clone git@github.com:hockinson/template.git

# Clone via HTTPS
https://github.com/hockinson/template.git
```

In order for the document to display correctly you'll need 
[IBM Plex Sans](https://www.ibm.com/plex/) to be installed
on your device and use `tectonic`, the `Makefile` also
assumes that you have `tectonic`.

If you'd rather use the default $\LaTeX$ font you can remove
the `%% Font` section:

```tex 
%% Font
\usepackage{fontspec}
\setmainfont{IBM Plex Sans}
```

Although, the `Makefile` will still not work.
