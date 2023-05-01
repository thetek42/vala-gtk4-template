# Vala + GTK4 Template

This is a simple template for creating GTK4 applications using Vala, LibAdwaita
and Blueprint.

## Usage

Edit the file `setup-template.sh` to include your name, project name and
project id. Then, run the script. This will rename everything within the
template to your desired values.

## Building, Running and Installing

Set up the project build folder (only required once):

```sh
$ meson setup build
```

Build the project:

```sh
$ ninja -C build
```

Run the program:

```sh
$ build/src/$PROJECT_NAME
```

Install the program and resources:

```sh
$ sudo ninja -C build install
```
