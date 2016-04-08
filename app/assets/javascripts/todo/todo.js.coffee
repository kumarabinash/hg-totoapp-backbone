window.Todo =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: -> 
    #alert 'Hello from Backbone!'
    tasks_collection = new Todo.Collections.Tasks()
    this.main_view = new Todo.Views.TasksIndex({collection: tasks_collection})
    tasks_collection.fetch({
      success: ->
        models = tasks_collection.models
        tasks_collection.reset(models)
    })

    $("#tasks").html(main_view.el)



$(document).ready ->
  Todo.initialize()
