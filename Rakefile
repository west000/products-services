# frozen_string_literal: true

# FileList['./lib/tasks/**/*.rake'].each { |task| load task }
# task default: [:spec]

FileList['./lib/tasks/**/*.rake'].each{ |task| load task }
task default: [:quality, :spec]
