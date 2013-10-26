desc "Arrancar la aplicacion"
task :default => :server

desc "run server"
task :server do	
  sh "bundle exec rackup"
end
 

#Test unitarios
desc "run the unit tests"
task :test do
  sh "ruby -Ilib -Itest test/test.rb "
end


desc "run rspec test"
task :rspec do
  sh "rspec -Ilib -Itest --color --format documentation spec/RockPaperScissors/app_spec.rb"
end

desc "run rspec test show html"
task :rspech do
  sh "rspec --format html spec/RockPaperScissors/app_spec.rb"
end