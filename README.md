# turbolinks-animate

[![Gem Version](https://badge.fury.io/rb/turbolinks-animate.svg)](https://badge.fury.io/rb/turbolinks-animate) <img src="https://travis-ci.org/jonhue/turbolinks-animate.svg?branch=master" />

A dead simple & powerful way of adding rich & adaptive animations to your Rails app which is already using Turbolinks™.

This gem extends the [turbolinks-animate.js](https://github.com/jonhue/turbolinks-animate.js) library to work better within Rails apps.

[**Demo**](https://phylator.herokuapp.com)

---

## Table of Contents

* [Installation](#installation)
* [Usage](#usage)
* [To Do](#to-do)
* [Contributing](#contributing)
    * [Contributors](#contributors)
* [License](#license)

---

## Installation

`turbolinks-animate` works with Rails 4.0 onwards. You can add it to your `Gemfile` with:

```ruby
gem 'turbolinks-animate'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install turbolinks-animate

If you always want to be up to date fetch the latest from GitHub in your `Gemfile`:

```ruby
gem 'turbolinks-animate', github: 'jonhue/turbolinks-animate'
```

## Usage

The javascript and CSS files will be added to the asset pipeline and are available for you to use:

```js
//= require turbolinks-animate

$(document).on( 'turbolinks:load', function() {
    $('body').turbolinksAnimate();
    turbolinksAnimateAppear();
});
$(document).on( 'turbolinks:request-start', function() {
    turbolinksAnimateDisappear();
});
$(window).on( 'popstate beforeunload', function(event) {
    turbolinksAnimateDisappear();
});
```

```scss
/*
    *= require animate
*/
```

To use turbolinks-animate, replace the `body` tag in your layout with the `turbolinks_animate_body` view helper:

```ruby
= turbolinks_animate_body class: 'custom-class' do
    = yield
```

In your controller simply include the `TurbolinksAnimateHelper` module, and specify your animation.

```ruby
class WelcomeController < ApplicationController
    include TurbolinksAnimateHelper

    def index
        turbolinks_animate 'fadein'
    end

    def more
        turbolinks_animate({ desktop: 'fadein', mobile: 'fadeinright' })
    end
end
```

[Here](https://github.com/jonhue/turbolinks-animate.js) are more details about the usage of turbolinks-animate.js.

## To Do

[Here](https://github.com/jonhue/turbolinks-animate/projects/1) is the full list of current projects.
To propose your ideas, initiate the discussion by adding a [new issue](https://github.com/jonhue/turbolinks-animate/issues/new).

---

## Contributing

We hope that you will consider contributing to turbolinks-animate. Please read this short overview for some information about how to get started:

[Learn more about contributing to this repository](https://github.com/jonhue/turbolinks-animate/blob/master/CONTRIBUTING.md), [Code of Conduct](https://github.com/jonhue/turbolinks-animate/blob/master/CODE_OF_CONDUCT.md)

### Contributors

Give the people some :heart: who are working on this project. See them all at:

https://github.com/jonhue/turbolinks-animate/graphs/contributors

## License

MIT License

Copyright (c) 2017 Jonas Hübotter

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
