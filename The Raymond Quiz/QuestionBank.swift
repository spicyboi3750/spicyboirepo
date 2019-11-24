//
//  QuestionBank.swift
//  The Raymond Quiz
//
//  Created by Raymond Lopez on 11/20/19.
//  Copyright © 2019 Raymond Lopez. All rights reserved.
//

import Foundation

class QuestionBank {
    var list = [Question]()
    
    init() {
        
        list.shuffle()
        
        list.append(Question(questionText: "What is his middle name?", choiceA: "E***k", choiceB: "E******o", choiceC: "G******s", choiceD: "He doesn't have a middle name", answer: 2))
    
        list.append(Question(questionText: "What is the name of his first dog?", choiceA: "Neka", choiceB: "Sadie", choiceC: "Bear", choiceD: "Jeffery", answer: 3))
        
        list.append(Question(questionText: "If he's eating a very delicious meal and somebody offers him a single beer to go with his meal, which brand of beer would he say no to?", choiceA: "Modelo", choiceB: "Coors Light", choiceC: "Heineken", choiceD: "All of the above", answer: 4))
        
        list.append(Question(questionText: "What is his energy drink of choice?", choiceA: "Monster", choiceB: "Reign", choiceC: "Rockstar", choiceD: "Bang", answer: 2))
        
        list.append(Question(questionText: "What is the name of the cultural fraternity he is a member of?", choiceA: "Zeta Phi Rho", choiceB: "Delta Sigma Pi", choiceC: "Tau Kappa Epsilon", choiceD: "Chi Rho Omicron", answer: 4))
        
        list.append(Question(questionText: "What is the name of the business fraternity he is a member of?", choiceA: "Zeta Phi Rho", choiceB: "Delta Sigma Pi", choiceC: "Tau Kappa Epsilon", choiceD: "Chi Rho Omicron", answer: 2))
        
        list.append(Question(questionText: "Which of these fraternities did he not pledge for?", choiceA: "Zeta Phi Rho", choiceB: "Delta Sigma Pi", choiceC: "Tau Kappa Epsilon", choiceD: "Chi Rho Omicron", answer: 3))
        
        list.append(Question(questionText: "What is Raymond's favorite Seth Rogan movie?", choiceA: "Knocked Up", choiceB: "Pineapple Express", choiceC: "The Interview", choiceD: "This Is The End", answer: 4))
        
        list.append(Question(questionText: "What high school did he go to?", choiceA: "Glendora High School", choiceB: "Charter Oak High School", choiceC: "West Covina High School", choiceD: "South Hills High School", answer: 1))
        
        list.append(Question(questionText: "What was the name of his pet fish?", choiceA: "Raymond Jr.", choiceB: "Mr. Gills", choiceC: "Joe Stevenson", choiceD: "Jeffrey", answer: 4))
        
        list.append(Question(questionText: "What gym does he currently have a membership with?", choiceA: "24 Hour Fitness", choiceB: "Planet Fitness", choiceC: "LA Fitness", choiceD: "His fat ass doesn't workout", answer: 2))
        
        list.append(Question(questionText: "What is the name of his favorite taco place?\n \nHint: It's located in San Diego", choiceA: "Tacos el Pecas", choiceB: "Tacos el Gavilan", choiceC: "Tacos el Gordo", choiceD: "Tacos de tu Madre", answer: 3))
        
        list.append(Question(questionText: "How many siblings does he have?", choiceA: "1", choiceB: "2", choiceC: "3", choiceD: "None", answer: 3))
        
        list.append(Question(questionText: "What is his bachelor's degree in?", choiceA: "Computer Information Systems", choiceB: "Computer Science", choiceC: "Computer Engineering", choiceD: "Cyber Security", answer: 1))
        
        list.append(Question(questionText: "Badda bing...", choiceA: "...badda bam", choiceB: "...badda swoosh", choiceC: "...badda boom", choiceD: "...badda bha", answer: 3))
        
        list.append(Question(questionText: "Where was he born?", choiceA: "El Monte, California", choiceB: "Boise, Idaho", choiceC: "Glendora, California", choiceD: "West Covina, California", answer: 4))
        
        list.append(Question(questionText: "Who is his favorite actor?", choiceA: "The homie Will Smith", choiceB: "Seth Rogen", choiceC: "Will Ferrell", choiceD: "J. Cole", answer: 3))
        
        list.append(Question(questionText: "What religion is he?", choiceA: "Christian", choiceB: "Catholic", choiceC: "Scientologist", choiceD: "Atheist", answer: 1))
        
        list.append(Question(questionText: "What is the primary reason he doesn't enjoy Cinnamon Toast Crunch?", choiceA: "It gets soggy too fast", choiceB: "The sugar makes the milk too sweet", choiceC: "It leaves a film in his mouth", choiceD: "He loves Cinnamon Toast Crunch", answer: 2))
        
        list.append(Question(questionText: "How saucy is Raymond?", choiceA: "No sauce", choiceB: "Super saucy", choiceC: "Dangerously saucy", choiceD: "Oh he got the sauce ( ͡° ͜ʖ ͡°)", answer: 4))
        
        list.append(Question(questionText: "What are his parents' names?", choiceA: "Raymond & Nicole", choiceB: "Raymond & Lynette", choiceC: "Raymond & Linda", choiceD: "Raymond & Lydia", answer: 3))
        
        list.append(Question(questionText: "What is his favorite animal?", choiceA: "Spider Monkey", choiceB: "Sloth", choiceC: "Dog", choiceD: "Snake", answer: 3))
        
        list.append(Question(questionText: "What is his primary goal when playing a new video game?", choiceA: "Beating the story in its entirety", choiceB: "Ranking up as much as he can online", choiceC: "To be better than his friends", choiceD: "Getting the platinum trophy", answer: 4))
        
        list.append(Question(questionText: "How many linebros did he cross with within his chapter?", choiceA: "2", choiceB: "3", choiceC: "4", choiceD: "5", answer: 1))
        
        list.append(Question(questionText: "What is his favorite cheeseburger establishment?", choiceA: "Wendy's", choiceB: "In-N-Out", choiceC: "Five Guys", choiceD: "The Habit", answer: 2))
        
        list.append(Question(questionText: "Which of these words is officially and EXCLUSIVELY trademarked by him?", choiceA: "Bamboozle", choiceB: "Boi", choiceC: "Shtonk", choiceD: "Boof", answer: 3))
        
        list.append(Question(questionText: "Raymond is a very strong believer in _____.", choiceA: "Scientology", choiceB: "leaving a note when hitting a parked car", choiceC: "high quality audio/video", choiceD: "moisturizing and deep conditioning", answer: 3))
        
        list.append(Question(questionText: "What is the name of his favorite band?", choiceA: "Atreyu", choiceB: "Avenged Sevenfold", choiceC: "Bring Me the Horizon", choiceD: "Attack Attack!", answer: 3))
        
        list.append(Question(questionText: "Finish the following phrase: 'Gucci in the ____.'", choiceA: "coochi", choiceB: "hoochi", choiceC: "shloochi", choiceD: "bamboochi", answer: 3))
        
        list.append(Question(questionText: "What is his astrology sign?", choiceA: "Cancer", choiceB: "Gemini", choiceC: "Pisces", choiceD: "Virgo", answer: 3))
        
        list.append(Question(questionText: "What is his favorite genre of film?", choiceA: "Thriller", choiceB: "Comedy", choiceC: "Horror", choiceD: "Action", answer: 2))
        
        list.append(Question(questionText: "What is the main component in the foods he enjoys eating?", choiceA: "The texture", choiceB: "The protein", choiceC: "The sauce", choiceD: "The temperature", answer: 3))
      
        list.append(Question(questionText: "When is his birthday?", choiceA: "March 12th, 1995", choiceB: "March 14th, 1995", choiceC: "March 13th, 1995", choiceD: "March 15th, 1995", answer: 2))
        
        list.append(Question(questionText: "He busted his left eye 3 times in his life. Which of the following is NOT one of the ways it happened?", choiceA: "He was dropped as a baby and hit a couch", choiceB: "Sister swung a baseball bat on him", choiceC: "Bike accident involving a sprinkler", choiceD: "Skateboard fall involving a pole", answer: 4))
        
        list.append(Question(questionText: "If he's going out to see a movie at the theaters, what would he rather get drunk off of?", choiceA: "Beer", choiceB: "Strong canned drink", choiceC: "Liquor", choiceD: "Buzzballs", answer: 3))
        
        list.append(Question(questionText: "What is his stance on cooked/baked fruit?", choiceA: "He'll eat it occasionally", choiceB: "Fuck that gross ass shit", choiceC: "He enjoys most baked/cooked fruity goods", choiceD: "He's half and half", answer: 2))
        
        list.append(Question(questionText: "Who is currently his favorite music artist even though their latest music has been sucking ass?", choiceA: "Travis Scott", choiceB: "Bring Me the Horizon", choiceC: "blackbear", choiceD: "The Weeknd", answer: 3))
        
        list.append(Question(questionText: "Which family member does he share the same birthday with?", choiceA: "His nephew", choiceB: "His cousin", choiceC: "His uncle", choiceD: "His grandma", answer: 4))
        
        list.append(Question(questionText: "What card game tournament at Toys R Us did he compete (and win) in when he was younger?", choiceA: "Yu-Gi-Oh", choiceB: "Magic: The Gathering", choiceC: "Pokemon", choiceD: "This never happened", answer: 1))
        
        list.append(Question(questionText: "What was his prize for winning the card game tournament that he participated in at Toys R Us when he was younger?", choiceA: "A millenium puzzle necklace", choiceB: "A wizard collectible figure", choiceC: "A pokeball replica toy", choiceD: "This never happened", answer: 1))
        
        list.append(Question(questionText: "Who is his favorite superhero?", choiceA: "Iron Man", choiceB: "Spiderman", choiceC: "Nighthawk", choiceD: "Batman", answer: 2))
        
        list.append(Question(questionText: "During his foodie phase, which of these foods was the biggest 'subphase'?\n \n", choiceA: "Ramen phase", choiceB: "KBBQ phase", choiceC: "Fries phase", choiceD: "All of the above", answer: 3))
        
        list.append(Question(questionText: "Which of these beverages is he least likely to drink?", choiceA: "Lemon water", choiceB: "Tea", choiceC: "Molly water", choiceD: "Coffee", answer: 4))
        
        list.append(Question(questionText: "What is his favorite pizza establishment?", choiceA: "Costco pizza", choiceB: "Hungry Howie's", choiceC: "Roundtable", choiceD: "Lamppost Pizza", answer: 2))
        
        list.append(Question(questionText: "Which of these foods does he hate the most?", choiceA: "Mushrooms", choiceB: "Green peppers", choiceC: "Onions", choiceD: "Limes", answer: 1))
        
        list.append(Question(questionText: "What does he enjoy the flavor of, but not the actual thing?\n \nFor example, some people like the flavor of apple but not actual apples", choiceA: "Grapes", choiceB: "Watermelon", choiceC: "Banana", choiceD: "Raspberry", answer: 2))
        
        list.append(Question(questionText: "Which does he enjoy more: Hot weather or cold weather?", choiceA: "Hot weather", choiceB: "Cold Weather", choiceC: "All of the above", choiceD: "None of the above", answer: 2))
        
        list.append(Question(questionText: "What was the very first gaming console he has ever owned?", choiceA: "Saga Genesis", choiceB: "Xbox", choiceC: "Nintendo 64", choiceD: "PS1", answer: 3))
        
        list.append(Question(questionText: "What are the actual first initials of his 2 (very cute and amazing) labradors?", choiceA: "B & M", choiceB: "S & A", choiceC: "B & S", choiceD: "D & Z", answer: 2))
        
        list.append(Question(questionText: "Which of these is he most likely to do?", choiceA: "Visit a library", choiceB: "Go to a museum", choiceC: "Visit a botanical garden", choiceD: "Do an escape room", answer: 3))
        
        list.shuffle()
        
    }
}
