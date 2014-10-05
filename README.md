# Dynamodb::Local

This is a simple helper gem that automaticall installs the [DynamoDB local tool](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tools.DynamoDBLocal.html) and provides a simple ruby wrapper binar that allows you start and stop the local DynamoDB server from the command line.

*IMPORTANT:* You must have the Java Runtime Engine (JRI) version 6.x or newer installed for the local serverto work; it will not run on older JRE versions.

## Installation

Add this line to your application's Gemfile:

    gem 'dynamodb-local'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dynamodb-local

## Usage

Executing the `dynamodb-local` binary will start the DynamoDB local
server in the foreground. It currently passes all arguments through to
the underlying server. Those are:

<pre>
 -dbPath <path>     Specify the location of your database file. Default
                    is the current directory.
 -help              Display DynamoDB Local usage and options.
 -inMemory          When specified, DynamoDB Local will run in memory.
 -port <port-no.>   Specify a port number. Default is 8000
</pre>

## Integration with the AWS Ruby SDK v1

The v1 Ruby SDK ships with two versioned client classes, '2011-12-05'
and '2012-08-10'. DynamoDB local only works with the 2012 API version.
So you must specify the 2012 verion when creating a DynamoDB client.

<code>
# either of the following versions will create an appropriate client
# that will work with DynamoDB local
ddb = AWS::DynamoDB::Client.new(api_verison: '2012-08-10')
ddb = AWS::DynamoDB::Client::V20120810.new

# this defaults to older API version for backwards compatability
# and will not work with DyanmoDB local
ddb = AWS::DynamoDB::Client.new
</code>

If you're using the [v2 SDK](https://github.com/aws/aws-sdk-core-ruby), the 2012 API is the default version.

Additionally, you must turn SSL off when you using DynamoDB local.

<code>
# Full working configuration using AWS Ruby SDK v1
ddb = AWS::DynamoDB::Client.new(api_verison: '2012-08-10',
                                endpoint: 'localhost',
                                port: '8000',
                                use_ssl: false)
</code>

Alternatively, you can configure these as global defaults:

<code>
AWS.config(use_ssl: false,
           dynamo_db: { api_verison: '2012-08-10',
                        endpoint: 'localhost',
                        port: '8000' })
ddb = AWS::DynamoDB::Client.new
</code>

## Contributing

1. Fork it ( https://github.com/[my-github-username]/dynamodb-local/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
