######################################################################
# @author      : Gavin Jaeger-Freeborn (gavinfreeborn@gmail.com)
# @file        : Makefile
# @created     : Tue 19 Nov 2019 01:25:55 AM MST
######################################################################
CC = xelatex
OBJECT = resume.tex
BINARY = resume.pdf
COACHOBJECT= coach_resume.tex 
COACHBINARY= coach_resume.pdf

fileIO: $(OBJECT)
	$(CC) $(OBJECT) -o $(BINARY)
	rm *.log
	rm *.aux
	rm *.out

coach: $(COACHOBJECT)
	$(CC) $(COACHOBJECT) -o $(COACHBINARY)
	rm *.log
	rm *.aux
	rm *.out

open:
	setsid xdg-open $(BINARY) &
