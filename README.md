# Cachr Plugin for [DocPad](https://docpad.org)

<!-- BADGES/ -->

[![Build Status](http://img.shields.io/travis-ci/docpad/docpad-plugin-cachr.png?branch=master)](http://travis-ci.org/docpad/docpad-plugin-cachr "Check this project's build status on TravisCI")
[![NPM version](http://badge.fury.io/js/docpad-plugin-cachr.png)](https://npmjs.org/package/docpad-plugin-cachr "View this project on NPM")
[![Dependency Status](https://david-dm.org/docpad/docpad-plugin-cachr.png?theme=shields.io)](https://david-dm.org/docpad/docpad-plugin-cachr)
[![Development Dependency Status](https://david-dm.org/docpad/docpad-plugin-cachr/dev-status.png?theme=shields.io)](https://david-dm.org/docpad/docpad-plugin-cachr#info=devDependencies)<br/>
[![Gittip donate button](http://img.shields.io/gittip/docpad.png)](https://www.gittip.com/docpad/ "Donate weekly to this project using Gittip")
[![Flattr donate button](http://img.shields.io/flattr/donate.png?color=yellow)](http://flattr.com/thing/344188/balupton-on-Flattr "Donate monthly to this project using Flattr")
[![PayPayl donate button](http://img.shields.io/paypal/donate.png?color=yellow)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=QB8GQPZAH84N6 "Donate once-off to this project using Paypal")
[![BitCoin donate button](http://img.shields.io/bitcoin/donate.png?color=yellow)](https://coinbase.com/checkouts/9ef59f5479eec1d97d63382c9ebcb93a "Donate once-off to this project using BitCoin")
[![Wishlist browse button](http://img.shields.io/wishlist/browse.png?color=yellow)](http://amzn.com/w/2F8TXKSNAFG4V "Buy an item on our wishlist for us")

<!-- /BADGES -->


This [DocPad](https://docpad.org) plugin provides a template helper that will take in a remote URL, download it, and provide the local URL for you.


## Install

```
docpad install cachr
```


## Usage

To use, simply wrap any url you want to cache locally within the exposed `@cachr(url)` function inside your templates.

- [Eco](https://github.com/sstephenson/eco) example:

	``` coffeescript
	<img src="http://somewebsite.com/someimage.gif"/>
	```

	would become:

	``` coffeescript
	<img src="<%=@cachr('http://somewebsite.com/someimage.gif')%>"/>
	```

- [CoffeeKup](http://coffeekup.org/) example:

	``` coffeescript
	img src:'http://somewebsite.com/someimage.gif'
	```

	would become:

	``` coffeescript
	img src:@cachr('http://somewebsite.com/someimage.gif')
	```

<!-- HISTORY/ -->

## History
[Discover the change history by heading on over to the `HISTORY.md` file.](https://github.com/docpad/docpad-plugin-cachr/blob/master/HISTORY.md#files)

<!-- /HISTORY -->


<!-- CONTRIBUTE/ -->

## Contribute

[Discover how you can contribute by heading on over to the `CONTRIBUTING.md` file.](https://github.com/docpad/docpad-plugin-cachr/blob/master/CONTRIBUTING.md#files)

<!-- /CONTRIBUTE -->


<!-- BACKERS/ -->

## Backers

### Maintainers

These amazing people are maintaining this project:

- Benjamin Lupton <b@lupton.cc> (https://github.com/balupton)

### Sponsors

No sponsors yet! Will you be the first?

[![Gittip donate button](http://img.shields.io/gittip/docpad.png)](https://www.gittip.com/docpad/ "Donate weekly to this project using Gittip")
[![Flattr donate button](http://img.shields.io/flattr/donate.png?color=yellow)](http://flattr.com/thing/344188/balupton-on-Flattr "Donate monthly to this project using Flattr")
[![PayPayl donate button](http://img.shields.io/paypal/donate.png?color=yellow)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=QB8GQPZAH84N6 "Donate once-off to this project using Paypal")
[![BitCoin donate button](http://img.shields.io/bitcoin/donate.png?color=yellow)](https://coinbase.com/checkouts/9ef59f5479eec1d97d63382c9ebcb93a "Donate once-off to this project using BitCoin")
[![Wishlist browse button](http://img.shields.io/wishlist/browse.png?color=yellow)](http://amzn.com/w/2F8TXKSNAFG4V "Buy an item on our wishlist for us")

### Contributors

These amazing people have contributed code to this project:

- [Benjamin Lupton](https://github.com/balupton) <b@lupton.cc> — [view contributions](https://github.com/docpad/docpad-plugin-cachr/commits?author=balupton)
- [Zearin](https://github.com/Zearin) — [view contributions](https://github.com/docpad/docpad-plugin-cachr/commits?author=Zearin)

[Become a contributor!](https://github.com/docpad/docpad-plugin-cachr/blob/master/CONTRIBUTING.md#files)

<!-- /BACKERS -->


<!-- LICENSE/ -->

## License

Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT license](http://creativecommons.org/licenses/MIT/)

Copyright &copy; Bevry Pty Ltd <us@bevry.me> (http://bevry.me)

<!-- /LICENSE -->


