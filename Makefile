PY?=python3
PELICAN?=pelican
PELICANOPTS=

BASEDIR=$(CURDIR)
INPUTDIR=$(BASEDIR)/content
OUTPUTDIR=$(BASEDIR)/output
CONFFILE=$(BASEDIR)/pelicanconf.py
PUBLISHCONF=$(BASEDIR)/publishconf.py

VENV := $(BASEDIR)/venv
VENV_PYTHON := $(VENV)/bin/python3
VENV_PELICAN := $(VENV)/bin/pelican

help:
	@echo 'Makefile for a pelican Web site                                           '
	@echo '                                                                           '
	@echo 'Usage:                                                                     '
	@echo '   make html                           (re)generate the web site          '
	@echo '   make clean                          remove the generated files         '
	@echo '   make regenerate                     regenerate files upon modification '
	@echo '   make publish                        generate using production settings '
	@echo '   make serve [PORT=8000]              serve site at http://localhost:8000'
	@echo '   make devserver [PORT=8000]          serve and regenerate together      '
	@echo '                                                                           '

html:
	$(VENV_PELICAN) $(INPUTDIR) -o $(OUTPUTDIR) -s $(CONFFILE) $(PELICANOPTS)

clean:
	[ ! -d $(OUTPUTDIR) ] || rm -rf $(OUTPUTDIR)

regenerate:
	$(VENV_PELICAN) -r $(INPUTDIR) -o $(OUTPUTDIR) -s $(CONFFILE) $(PELICANOPTS)

serve:
ifdef PORT
	$(VENV_PELICAN) --listen --port $(PORT) --bind 0.0.0.0
else
	$(VENV_PELICAN) --listen --bind 0.0.0.0
endif

devserver:
ifdef PORT
	$(VENV_PELICAN) -lr $(INPUTDIR) -o $(OUTPUTDIR) -s $(CONFFILE) $(PELICANOPTS) --port $(PORT) --bind 0.0.0.0
else
	$(VENV_PELICAN) -lr $(INPUTDIR) -o $(OUTPUTDIR) -s $(CONFFILE) $(PELICANOPTS) --bind 0.0.0.0
endif

publish:
	$(VENV_PELICAN) $(INPUTDIR) -o $(OUTPUTDIR) -s $(PUBLISHCONF) $(PELICANOPTS)

.PHONY: html help clean regenerate serve devserver publish
