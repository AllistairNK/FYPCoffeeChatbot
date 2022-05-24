from chatterbot import ChatBot
from chatterbot.trainers import ListTrainer
from chatterbot.trainers import ChatterBotCorpusTrainer

# Creating ChatBot Instance
chatbot = ChatBot(
    'CoffeeShopBot',
    storage_adapter='chatterbot.storage.SQLStorageAdapter',
    logic_adapters=[
         {
            'import_path': 'chatterbot.logic.BestMatch',
            'default_response': 'I am sorry, but I do not understand.',
            'maximum_similarity_threshold': 0.90
        }
    ],
    database_uri='sqlite:///database.sqlite3'
) 
 #training
training_data_coffee = open('D:/FYP/CoffeeChatbot/CoffeeChatbot/app/trainingData/coffee_ques_ans.txt').read().splitlines()

training_data = training_data_coffee

trainer = ListTrainer(chatbot)
trainer.train(training_data)  

