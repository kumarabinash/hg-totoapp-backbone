class Todo.Views.Task extends Backbone.View

  template: JST['todo/tasks/task']
  # template: _.template 
  tagName: 'li'

  initialize: ->
    @model.on('change', @saveModel, @)

  events:
    'click #task': 'toggleCompletion'

  render: ->
    # console.log @model.toJSON()
    $(@el).html(@template({ task: @model.toJSON() }))
    @

  toggleCompletion: (e) ->
    @model.trigger('change')
  #   @model.set('completed', true)
  #   @model.save()

  saveModel: ->
    @model.save()
