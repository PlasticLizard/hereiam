Hereiam.Views.Projects ||= {}

class Hereiam.Views.Projects.ProjectView extends Backbone.View
  template: JST["backbone/templates/projects/project"]
  
  events:
    "click .destroy" : "destroy"
      
  tagName: "tr"
  
  destroy: () ->
    @model.destroy()
    this.remove()
    
    return false
    
  render: ->
    $(this.el).html(@template(@model.toJSON() ))    
    return this