theme_sources = files([
  'gnome-shell-light.scss',
  'gnome-shell.scss',
  'src/_colors.scss',
  'src/_common.scss',
  'src/_drawing.scss',
])

theme_deps = []

if sassc.found()
  parse_sass = files('parse-sass.sh')

  theme_deps += custom_target('update-theme',
    output: 'theme-update.stamp',
    depend_files: theme_sources,
    command: [parse_sass, '@OUTPUT@'],
    build_by_default: true
  )
endif
