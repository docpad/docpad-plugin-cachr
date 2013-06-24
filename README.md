# Cachr Plugin for [DocPad](https://docpad.org)

[![Build Status](https://secure.travis-ci.org/docpad/docpad-plugin-cachr.png?branch=master)](http://travis-ci.org/docpad/docpad-plugin-cachr "Check this project's build status on TravisCI")
[![NPM version](https://badge.fury.io/js/docpad-plugin-cachr.png)](https://npmjs.org/package/docpad-plugin-cachr "View this project on NPM")
[![Flattr donate button](https://raw.github.com/balupton/flattr-buttons/master/badge-89x18.gif)](http://flattr.com/thing/344188/balupton-on-Flattr "Donate monthly to this project using Flattr")
[![PayPayl donate button](https://www.paypalobjects.com/en_AU/i/btn/btn_donate_SM.gif)](https://www.paypal.com/au/cgi-bin/webscr?cmd=_flow&SESSION=IHj3DG3oy_N9A9ZDIUnPksOi59v0i-EWDTunfmDrmU38Tuohg_xQTx0xcjq&dispatch=5885d80a13c0db1f8e263663d3faee8d14f86393d55a810282b64afed84968ec "Donate once-off to this project using Paypal")

This [DocPad](https://docpad.org) plugin provides a template helper that will take in a remote URL, download it, and provide the local URL for you.


## Install

```
npm install --save docpad-plugin-cachr
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



## History
[You can discover the history inside the `History.md` file](https://github.com/bevry/docpad-plugin-cachr/blob/master/History.md#files)


## Contributing
[You can discover the contributing instructions inside the `Contributing.md` file](https://github.com/bevry/docpad-plugin-cachr/blob/master/Contributing.md#files)


## License
Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT License](http://creativecommons.org/licenses/MIT/)
<br/>Copyright &copy; 2012+ [Bevry Pty Ltd](http://bevry.me) <us@bevry.me>
