# Dynamodb::Local

This is a simple helper gem that automaticall installs the [DynamoDB local tool](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tools.DynamoDBLocal.html) and provides a simple ruby wrapper binar that allows you start and stop the local DynamoDB server from the command line.

*IMPORTANT:* DynamoDB Local supports the Java Runtime Engine (JRE)
version 6.x or newer; it will not run on older JRE versions.

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

## Contributing

1. Fork it ( https://github.com/[my-github-username]/dynamodb-local/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
