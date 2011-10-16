class Hereiam.Models.Project extends Backbone.Model
  paramRoot: 'project'

  defaults:
    title: null
    summary: null
  
class Hereiam.Collections.ProjectsCollection extends Backbone.Collection
  model: Hereiam.Models.Project
  url: '/projects'