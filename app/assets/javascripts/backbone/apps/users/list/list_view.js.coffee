@Demo.module "UsersApp.List", (List, App, Backbone, Marionette, $, _) ->

	class List.Layout extends App.Views.Layout
		template: "users/list/templates/list_layout"