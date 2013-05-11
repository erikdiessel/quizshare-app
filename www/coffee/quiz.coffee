class Quiz
   constructor: ->
      @questions = ko.observableArray([])
      @current_question = new Question()
      @current_index = ko.observable(1)
      @current_index.subscribe(
         (old_index) =>
            @save(@current_question(), old_index)
         , window.model,
         'beforechange'
      )
      @current_index.subscribe(
         (new_index) =>
            console.log('index changed')
            @set_current(new_index)
      )
      
   save: (question, index) =>
      @questions[index] ||= new Question()
      @question[index].copy(question)
      
   set_current: (index) =>
      @questions[index] ||= new Question()
      @current_question.copy(@questions[index])
   
class Question
   constructor: ->
      @question_text = ko.observable('')
      @type = ko.observable('multiple-choice')
      @specific = ko.observable(new MultipleChoiceQuestion)
      @type.subscribe(
         (new_type) ->
            switch new_type
               when 'multiple-choice' then new MultipleChoiceQuestion
               when 'numeric' then new NumericQuestion
         , window.model
      )
      
   copy: (copying) =>
      @question_text(copying.question_text())
      @type(copying.type())
      @specific().copy(copying.specific())
   
class MultipleChoiceQuestion
   constructor: ->
      @correct_answer = ko.observable('')
      @wrong_answers = ko.observableArray()
      
   copy: (copying) =>
      @correct_answer(copying.correct_answer())
      @wrong_answers(copying.wrong_answers())
   
class NumericQuestion
   constructor: ->
      @correct_answer = ko.observable()
      @tolerance = ko.observable(0)
      
   copy: (copying) =>
      @correct_answer(copying.correct_answer())
      @tolerance(copying.tolerance())