@Demo.module "FooterApp", (FooterApp, App, Backbone, Marionette, $, _) ->
	@startWithParent = false
	# @ - references the current context of the FooterApp so we dont need to write the verbose syntax of FooterApp.method
	# FooterApp.startWithParent = false

	API =
		showFooter: ->
			FooterApp.Show.Controller.showFooter()

	FooterApp.on "start", ->
		API.showFooter()

	# App.addInitializer ->
	# 	API.showFooter()

	# App.commands.addHandler "footer:show", ->
	# 	API.showFooter()