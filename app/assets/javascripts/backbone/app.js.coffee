@Demo = do (Backbone, Marionette) ->

	App = new Marionette.Application

	App.on "initialize:before", (options) ->
		@currentUser = App.request "set:current:user", options.currentUser

	App.reqres.setHandler "get:current:user", ->
		App.currentUser

	App.addRegions
		headerRegion: "#header-region"
		mainRegion: "#main-region"
		footerRegion: "#footer-region"

	App.addInitializer ->
		App.module("HeaderApp").start()
		App.module("FooterApp").start()

		# Calling start lets us listen to a start event in the module_app.js.coffee

	App.on "initialize:after", ->
		if Backbone.history
			Backbone.history.start()

	App