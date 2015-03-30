begin
  require 'bundler/gem_tasks'
rescue LoadError
  puts 'Cannot load bundler/gem_tasks'
end

task :default => :prepare

task :prepare do
  require 'open-uri'

  dynamodb_local_url  = 'http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_latest'
  ext_dir             = 'lib/dynamodb/local/ext'
  local_path          = "#{ext_dir}/dynamodb_local.tar.gz"
  jar_path            = "#{ext_dir}/DynamoDBLocal.jar"

  unless File.exists?(jar_path)
    mkdir_p ext_dir
    $stderr.print "Downloading DynamoDB local..."
    File.open(local_path, 'w') do |f|
      f.write(open(dynamodb_local_url).read)
    end
    `tar -xzf #{local_path} -C #{ext_dir}`
    rm local_path
    $stderr.puts 'done.'
  end

end

