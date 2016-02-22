namespace :version_number do
  desc "Sets the version number from the last git tag"

  task set_from_git: :environment do
    File.open('config/version', 'w') do |file|
      file.write `git describe --tags --always`.strip
    end
  end

end
