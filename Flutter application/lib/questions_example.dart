import 'question_model.dart';

List<QuestionModel> questions = [
  QuestionModel(
    "What are your main symptoms?",
    {
      "Rash":false,
      "Itching":true,
      "Burning":false,
      "Pain":false
    },
  ),
  QuestionModel("When Did the Symtoms start", {
    "weeks ago": true,
    "months ago": true,
    "days ago": true,
    "I can't remember": true,
  }),
  QuestionModel("Have you recently started using any new skin care products or medications?", {
    "Yes": true,
    "No": true,
    "I'm not sure": true
  }),
  QuestionModel("Have you been exposed to any irritants or allergens recently, such as chemicals, soaps, or cosmetics?", {
    "Yes": true,
    "No": true,
    "I'm not sure": true
  }),
  QuestionModel("Do you have any family history of skin conditions?", {
    "Yes": true,
    "No": true,
    "I'm not sure": true
  }),
  // QuestionModel("Have you had any skin conditions in the past?", {
  //   "Yes": true,
  //   "No": true,
  //   "I'm not sure": true
  // }),
  // QuestionModel(
  //     "Are you experiencing any other symptoms, such as fever, chills, or fatigue?", {
  //   "Yes": true,
  //   "No": true,
  //   "I'm not sure": true
  // }),
];
