Hereiam.Views.Projects ||= {}

class Hereiam.Views.Projects.IndexView extends Backbone.View
  template: JST["backbone/templates/projects/index"]
    
  initialize: () ->
    _.bindAll(this, 'addOne', 'addAll', 'render')
    
    @options.projects.bind('reset', @addAll)
   
  addAll: () ->
    @options.projects.each(@addOne)
  
  addOne: (project) ->
    view = new Hereiam.Views.Projects.ProjectView({model : project})
    @$("tbody").append(view.render().el)
       
  render: ->
    $(@el).html(@template(projects: @options.projects.toJSON() ))
    @addAll()
    
    return this