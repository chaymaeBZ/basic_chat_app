CRIMINAL = `whoami`.chomp

Rake::Task["db:drop"].enhance do
  sh "echo #{CRIMINAL} >> criminal.txt"
end
