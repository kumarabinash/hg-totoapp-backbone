class Todo.Views.TasksIndex extends Backbone.View

  template: JST['todo/tasks/index']

  initialize: ->
    @collection.on('reset', @render, @)


  render: ->
    $(this.el).html(this.template)
    @collection.each(@appendTasks, @)
    this


  appendTasks: (model) ->
    task_view = new Todo.Views.Task({ model: model})
    $(@el).find("#all_tasks").append(task_view.render().el)
