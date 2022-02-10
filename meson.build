project ('de.thetek.vala-gtk-template', 'vala', 'c' )

sources = files (
  'src/main.vala',
  'src/window.vala',
)

blueprints = custom_target (
  'blueprints',
  input: files (
    'data/resources/window.blp',
  ),
  output: '.',
  command: [ find_program ('blueprint-compiler'), 'batch-compile', '@OUTPUT@', '@CURRENT_SOURCE_DIR@', '@INPUT@' ]
)

resources = import ('gnome').compile_resources (
  'vala-gtk-template-resources',
  'data/resources/de.thetek.vala-gtk-template.gresource.xml',
  source_dir: 'data/resources',
  c_name: 'appres',
  dependencies: blueprints,
)

schemas = import ('gnome').compile_schemas (
  depend_files: 'data/de.thetek.vala-gtk-template.gschema.xml',
)

dependencies = [
  dependency ('gtk4'),
  dependency ('libadwaita-1'),
]

executable (
  meson.project_name (),
  resources,
  schemas,
  sources: sources,
  dependencies: dependencies,
  install: true,
)

subdir ('data')

meson.add_install_script ('meson/post_install.py')
