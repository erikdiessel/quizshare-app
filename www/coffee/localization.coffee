getLocalized = ->
   locale = (navigator.language || navigator.userLanguage).substring(0,2)
   localization[locale]

localization = {
   en: {
      wrong_answer: "Wrong Answer",
      wrong_answers: "Wrong Answers",
      correct_answer: "Correct Answer",
      add_wrong_answer: "Add wrong Answer",
      question_text: "Question Text"
      type: "Type",
      numeric: "Numeric",
      multiple_choice: "Multiple-Choice",
      play: "Play",
      share: "Share",
      create: "Create",
      delete_question: "Delete Question",
      menu: "Menu",
      play: "Play",
      share: "Share",
      create: "Create"
   },
   
   de: {
      wrong_answer: "Falsche Antwort",
      wrong_answers: "Falsche Antworten",
      correct_answer: "Richtige Antwort",
      add_wrong_answer: "Falsche Antwort hinzufügen",
      question_text: "Frage",
      type: "Typ",
      numeric: "Zahlen",
      multiple_choice: "Multiple-Choice",
      play: "Spielen",
      share: "Teilen",
      create: "Kreieren",
      delete_question: "Frage löschen",
      menu: "Menü",
      play: "Spielen",
      share: "Teilen",
      create: "Kreieren"
   }
}