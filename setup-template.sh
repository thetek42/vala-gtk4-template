#!/usr/bin/env bash
set -xe

# ----------------- variables ------------------

PROJECT_NAME="my-project"
PROJECT_ID="foo.bar.$PROJECT_NAME"
RESOURCE_PATH="/foo/bar/$PROJECT_NAME"
NAMESPACE="MyProject"
CNAME="my_project"
AUTHOR="author"

# -------------------- code --------------------

# remove files that might conflict
rm -rf build/ subprojects/blueprint-compiler/

# rename files
mv ./data/{de.thetek.vala-gtk-template,$PROJECT_ID}.appdata.xml.in
mv ./data/{de.thetek.vala-gtk-template,$PROJECT_ID}.desktop.in
mv ./data/{de.thetek.vala-gtk-template,$PROJECT_ID}.gschema.xml
mv ./data/icons/hicolor/scalable/apps/{de.thetek.vala-gtk-template,$PROJECT_ID}.svg
mv ./data/icons/hicolor/symbolic/apps/{de.thetek.vala-gtk-template,$PROJECT_ID}-symbolic.svg
mv ./src/{vala-gtk-template,$PROJECT_NAME}.gresource.xml

# replace text in files
find . -type f -name '*' -not -path './.git/*' -exec sed -i -e "s=/de/thetek/vala-gtk-template=$RESOURCE_PATH=g" {} \;
find . -type f -name '*' -not -path './.git/*' -exec sed -i -e "s=de.thetek.vala-gtk-template=$PROJECT_ID=g" {} \;
find . -type f -name '*' -not -path './.git/*' -exec sed -i -e "s=vala-gtk-template=$PROJECT_NAME=g" {} \;
find . -type f -name '*' -not -path './.git/*' -exec sed -i -e "s=vala_gtk_template=$CNAME=g" {} \;
find . -type f -name '*' -not -path './.git/*' -exec sed -i -e "s=ValaGtkTemplate=$NAMESPACE=g" {} \;
find . -type f -name '*' -not -path './.git/*' -exec sed -i -e "s=thetek=$AUTHOR=g" {} \;
