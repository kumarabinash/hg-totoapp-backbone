class Todo.Views.Task extends Backbone.View

  # template: JST['todo/tasks/task']
  template: _.template 
  tagName: 'li'

  initialize: ->
    @model.on('change', @saveModel, @)

  events:
    'click #task': 'markCompleted'

  render: ->
    # console.log @model.toJSON()
    $(@el).html(@template({ task: @model.toJSON() }))
    @

  markCompleted: (e) ->
    @model.set('completed', true)
    @model.save()

  saveModel: ->
    @model.sync()
