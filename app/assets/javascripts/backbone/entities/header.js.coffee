@Demo.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->
	class Entities.Header extends Backbone.Model

	class Entities.HeaderCollection extends Backbone.Collection
		model: Entities.Header