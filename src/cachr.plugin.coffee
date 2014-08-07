# Export Plugin
module.exports = (BasePlugin) ->
	# Requires
	Feedr = require('feedr')
	{TaskGroup} = require('taskgroup')
	extendr = require('extendr')
	pathUtil = require('path')

	# Define Plugin
	class CachrPlugin extends BasePlugin
		# Plugin Name
		name: 'cachr'

		# Default Configuration
		config:
			refreshCache: false
			urlPrefix: '/_docpad/plugins/cachr'
			pathPrefix: pathUtil.join('_docpad', 'plugins', 'cachr')
			feedrOptions: null
			feedOptions: null

		# Tasks
		runner: null


		# -----------------------------
		# Helpers

		# Queue Remote Url Sync
		# Mapped to templateData.cachr
		# Takes a remote url and queues it for caching
		queueRemoteUrlSync: (sourceUrl) ->
			# Prepare
			cachr = @
			docpad = @docpad
			docpadConfig = docpad.getConfig()
			config = @getConfig()

			# Parse user feed options
			feedOptions = 
				if typeof sourceUrl is 'object'
					sourceUrl
				else
					{url: sourceUrl}
			feedOptions = extendr.extend({parse:false}, config.feedOptions, feedOptions)
			
			# Prepare feed
			feed = @feedr.prepareFeed(feedOptions)
			feed.pathUrl = "#{config.urlPrefix}/#{feed.name}"
			feed.path = pathUtil.resolve(docpadConfig.outPath, config.pathPrefix, feed.name)

			# Start the read and queue
			@runner.addTask (complete) ->
				cachr.feedr.readFeed(feed, complete)

			# Return the cached url
			return feed.pathUrl


		# -----------------------------
		# Events

		# Render Before
		# Map the templateData functions
		renderBefore: (opts) ->
			# Prepare
			cachr = @
			docpad = @docpad
			config = @getConfig()

			# Prepare runner
			@runner ?= TaskGroup.create(concurrency:0)

			# Prepare feedr
			unless @feedr?
				feedrOptions = extendr.extend({
					log: docpad.log
				}, config.feedrOptions)
				@feedr = Feedr.create(feedrOptions)

			# Apply
			opts.templateData.cachr = @queueRemoteUrlSync.bind(@)

			# Chain
			@


		# Write After
		# Store all our files to be cached
		writeAfter: (opts, next) ->
			# Ensure that all files are written before we continue
			@runner.run().done(next)

			# Chain
			@