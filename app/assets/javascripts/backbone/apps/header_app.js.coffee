@Demo.module "HeaderApp", (HeaderApp, App, Backbone, Marionette, $, _) ->
	@startWithHeader = false

	API =
		listHeader: ->
			HeaderApp.List.Controller.listHeader()

	HeaderApp.on "start", ->
		API.listHeader()