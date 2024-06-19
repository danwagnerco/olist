@echo off

REM build virtual environment in project root
cd c:\github\olist
python -m venv .

REM activate the virtual environment
call Scripts\activate.bat

REM install required packages (in the virtual environment)
pip install -r requirements.txt

REM add the virtual environment python to the list of jupyter kernels
python -m ipykernel install --user --name=olist

REM build and install (as editable) the project package
REM python setup.py develop
