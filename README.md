# Pepipost

Ruby gem for Pepipost service, wrapper of pepipost sdk:
https://github.com/pepipost/pepipost-sdk-ruby

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pepipost'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pepipost

## Usage

    require 'pepipost'

    data = {
        "api_key"=>"yoursecretapikey",
        "recipients"=> ["recipient1@example.com","recipient2@example.com"],
        "email_details" => {
            "fromname" => "sender name",
            "subject" => "This is a test email sent usig Pepipost SDK for Ruby",
            "from" => "from@example.com",
            "content" => "<p>This is a test email sent using Pepipost SDK for Ruby</p>",
        }
    }


    email = Pepipost::Email.new
    response = email.send data

    print response

## Contributing

1. Fork it ( https://github.com/[my-github-username]/pepipost/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
