@Demo.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->

	class Entities.Models extends Backbone.Model
		someProperty: true