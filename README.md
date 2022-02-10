# Vala & GTK Template

This is a template that can be used for developing GTK applications. It uses Vala, GTK4, LibAdwaita and Blueprints.

## Usage

### Setting up & Running the Template

To use this template, you will need to change various pieces of the code and filenames. Just search for anything including `vala-gtk-template`, `ValaGtkTemplate` or similar.

A script that does all of this renaming automatically is currently being worked on.

In order to run the application, you can use the script `run.sh`. Currently, you'll need to run this script twice for the first time in order to get all of the blueprints to compile properly, and for the application to notice them. I will look into this issue some time soon.

### File Structure

- `/data/resources`:
  - `<name>.gresource.xml`: Here, all of the 'aliases' for the blueprint files are stored. For each blueprint that you create, you will have to add an entry.
  - `*.blp`: The blueprints that outline the UI structure.
- `/src`: The code of the application.
