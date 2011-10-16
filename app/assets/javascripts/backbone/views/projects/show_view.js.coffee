Hereiam.Views.Projects ||= {}

class Hereiam.Views.Projects.ShowView extends Backbone.View
  template: JST["backbone/templates/projects/show"]
   
  render: ->
    $(this.el).html(@template(@model.toJSON() ))
    return this