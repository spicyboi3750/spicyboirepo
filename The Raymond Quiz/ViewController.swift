//
//  ViewController.swift
//  The Raymond Quiz
//
//  Created by Raymond Lopez on 11/20/19.
//  Copyright © 2019 Raymond Lopez. All rights reserved.
//

import UIKit
import AVFoundation
import ImageIO

class ViewController: UIViewController {
    @IBOutlet weak var questionsView: UILabel!
    @IBOutlet weak var progressBar: UIView!
    @IBOutlet weak var scoreCounter: UILabel!
    @IBOutlet weak var questionCounter: UILabel!
    @IBOutlet weak var topDancer: UIImageView!
    @IBOutlet weak var bottomDancer: UIImageView!
    @IBOutlet weak var topFinalScore: UILabel!
    @IBOutlet weak var bottomFinalScore: UILabel!
    @IBOutlet weak var italianSpiderman: UIImageView!
    @IBOutlet weak var bottomItalian: UIImageView!
    
    
    //Outlet for buttons
    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC: UIButton!
    @IBOutlet weak var optionD: UIButton!
    
    var audioPlayer = AVAudioPlayer()
    let allQuestions = QuestionBank()
    var questionNumber: Int = 0
    var score: Int = 0
    var selectedAnswer: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
        updateUI()
        topDancer.loadGif(name: "ChickenDance")
        bottomDancer.loadGif(name: "ChickenDance")
        italianSpiderman.loadGif(name: "italian spiderman")
        bottomItalian.loadGif(name: "italian spiderman")
        italianSpiderman.isHidden = true
        bottomItalian.isHidden = true
        topDancer.isHidden = true
        bottomDancer.isHidden = true
        topFinalScore.isHidden = true
        bottomFinalScore.isHidden = true
        self.bottomDancer.transform = CGAffineTransform(scaleX: -1, y: 1);
        self.bottomItalian.transform = CGAffineTransform(scaleX: -1, y: -1);
        // Do any additional setup after loading the view.
    
        // Begin playing music
        let path = Bundle.main.path(forResource: "Chicken", ofType: "mp3")!
        let url = URL(fileURLWithPath: path)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer.play()
            audioPlayer.numberOfLoops = -1
        } catch {
            print(error)
        }
    }

    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.tag == selectedAnswer {
            print("correct")
            score += 1
        }else{
            print("wrong")
        }
        
        questionNumber += 1
        updateQuestion()
}
    
    func updateQuestion(){
            if questionNumber < allQuestions.list.count{
            questionsView.text = allQuestions.list[questionNumber].question
            optionA.setTitle(allQuestions.list[questionNumber].optionA, for: UIControl.State.normal)
            optionB.setTitle(allQuestions.list[questionNumber].optionB, for: UIControl.State.normal)
            optionC.setTitle(allQuestions.list[questionNumber].optionC, for: UIControl.State.normal)
            optionD.setTitle(allQuestions.list[questionNumber].optionD, for: UIControl.State.normal)
            selectedAnswer = allQuestions.list[questionNumber].correctAnswer
        }
        
        if questionNumber >= allQuestions.list.count && score < 38{
            topDancer.isHidden = false
            bottomDancer.isHidden = false
            topFinalScore.isHidden = false
            bottomFinalScore.isHidden = false
                               
            let alert = UIAlertController(title: "(∩ ͡° ͜ʖ ͡°)⊃━☆ﾟ. * ･ ｡ﾟ. * ", message: "The quiz is now over. If you are seeing this message then CONGRATULATIONS, YOU FAILED (37 or less). Press 'Restart' to try again or 'Quit' because you suck.", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {action in self.restartQuiz()})
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
                               
            let fartAction = UIAlertAction(title: "Quit", style: .default) { (_) in self.playFart()}
            alert.addAction(fartAction)
                }
         
        if questionNumber >= allQuestions.list.count && score >= 38{
           italianSpiderman.isHidden = false
           bottomItalian.isHidden = false
           topFinalScore.isHidden = false
           bottomFinalScore.isHidden = false
           let path = Bundle.main.path(forResource: "I'm on a boat", ofType: "mp3")!
           let boat = URL(fileURLWithPath: path)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: boat)
                audioPlayer.play()
            } catch {
                print(error)
            }
            
           let alert = UIAlertController(title: "(∩ ͡° ͜ʖ ͡°)⊃━☆ﾟ. * ･ ｡ﾟ. *", message: "Holy FUCKING SHIT YOU PASSED CONGRATULATIONS OMG YOU KNOW ME SO WELL! Press 'Restart' to take the quiz again or 'Quit' cause you already know me so well.", preferredStyle: .alert)
           let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {action in self.restartQuiz()})
           alert.addAction(restartAction)
           present(alert, animated: true, completion: nil)
           let fartAction = UIAlertAction(title: "Quit", style: .default) { (_) in self.playFart()}
           alert.addAction(fartAction)
           }
        
        updateUI()
    }

    func updateUI(){
        scoreCounter.text = "Score: \(score)"
        topFinalScore.text = "FINAL SCORE: \(score)"
        bottomFinalScore.text = "FINAL SCORE: \(score)"
        questionCounter.text = "\(questionNumber + 1)/\(allQuestions.list.count)"
        progressBar.frame.size.width = (view.frame.size.width / CGFloat(allQuestions.list.count)) * CGFloat(questionNumber + 1)
    }
    
    func restartQuiz(){
        score = 0
        questionNumber = 0
        updateQuestion()
        allQuestions.list.shuffle()
        topDancer.isHidden = true
        bottomDancer.isHidden = true
        topFinalScore.isHidden = true
        bottomFinalScore.isHidden = true
        italianSpiderman.isHidden = true
        bottomItalian.isHidden = true
    }
    
    func quitQuiz(){
    exit(-1)
        }
    
    func playFart(){
         let path = Bundle.main.path(forResource: "Fart sound effect", ofType: "mp3")!
         let fart = URL(fileURLWithPath: path)
         
         do {
             audioPlayer = try AVAudioPlayer(contentsOf: fart)
             audioPlayer.play()
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.6, execute: {
                 self.quitQuiz()})
        } catch {
            print(error)
                }
    }
        
    }
