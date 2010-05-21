run "echo TODO > README"

generate :nifty_layout

git :init

file ".gitignore", <<-END
.DS_Store
log/*.log
tmp/**/*
db/schema.rb
db/*.sqlite3
.idea
vendor/gems
vendor/bundler_gems
vendor/plugins
END

run "touch tmp/.gitignore log/.gitignore vendor/.gitignore"

git :add => "."
git :commit => "-m 'initial commit'"