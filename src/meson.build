sources = [
  'main.vala',
  'app.vala',
  'window.vala',
]

deps = [
  dependency ('gtk4'),
  dependency ('libadwaita-1'),
]

blueprints = custom_target ('blueprints',
  input: files (
    'ui/window.blp',
  ),
  output: '.',
  command: [ find_program ('blueprint-compiler'), 'batch-compile', '@OUTPUT@', '@CURRENT_SOURCE_DIR@', '@INPUT@' ],
)

sources += gnome.compile_resources ('vala-gtk-template-resources',
  'vala-gtk-template.gresource.xml',
  c_name: 'vala_gtk_template',
  dependencies: blueprints,
)

executable ('vala-gtk-template', sources,
  dependencies: deps,
     vala_args: [ '--gresourcesdir=src/' ],
       install: true,
)
