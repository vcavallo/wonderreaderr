namespace :version_number do

  desc "Sets the version number from the last git tag"
  task set_from_git: :environment do
    version_number = `git rev-parse --abbrev-ref HEAD`.split('release-').last.strip
    File.open('config/version', 'w') do |file|
      file.write version_number
    end
  end

  desc "Outputs the content of the version file"
  task read: :environment do
    puts File.read('config/version')
  end

end
