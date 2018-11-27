# fontawesome_svg_ruby 

Embed fontawesome icons as SVGs directly in your views.

Save 

## Installation

Add this line to your application's Gemfile:

    gem 'fontawesome_svg', git: "https://github.com/cowholio4/fontawesome_svg_ruby.git" 

And then execute:

    $ bundle install

Add this line to your application.css file

    //= require fa-svg


## Usage

To embed an icon you can use the included view helpers.

    = fa_inline_svg('brands', 'facebook')
    = fa_inline_svg('solid', 'question')
    = fa_inline_svg('solid', 'question', class: 'fa-4x')


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
