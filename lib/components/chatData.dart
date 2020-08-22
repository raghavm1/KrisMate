List<String> initialQuestions = ["What time do I need to reach the gate", "What is my gate number","What facilities are available at the lounge?"];

Map chatData = {
  "What time do I need to reach the gate" : {
    "Answer" : "Please reach the gate one hour before boarding time",
    "Next Questions": ["Thank you", "What is my gate number"]
  },
  "Thank you" : {
    "Answer" : "You're welcome, have a nice day!",
    "Next Questions": initialQuestions
  },
  "What is my gate number" : {
    "Answer" : "Please reach the gate one hour before boarding time",
    "Next Questions": ["Thank you", "What time do I need to reach the gate"]
  },
  "What facilities are available at the lounge?": {
    "Answer" : "You can njennnnbyb",
    "Next Questions": ["Thank you"]
  }
};

