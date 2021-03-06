@Demo.module "Views", (Views, App, Backbone, Marionette, $, _) ->

	_.extend Marionette.View::,

		templateHelpers: ->
			# expose a currentUser helper
			# Thus available to all the currentUsers
			currentUser:
				App.request("get:current:user").toJSON()

			linkTo: (name, url, options={}) ->
				_.defaults options,
					external: false

				url = "#" + url unless options.external
				"<a href='#{url}'>#{@escape(name)}</a>"
