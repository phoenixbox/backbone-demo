@Demo.module "HeaderApp.List", (List, App, Backbone, Marionette, $, _) ->

	List.Controller =

		listHeader: ->
			console.log("Hey there header")