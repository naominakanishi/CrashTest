//
//  HomeViewController.swift
//  CrashCourse1
//
//  Created by Naomi Nakanishi on 20/07/21.
//

import UIKit

class HomeViewController: UIViewController {

    let homeImageView = UIImageView()
    let textLabel = UILabel()
    let textBackgroundView = UIView()
    let emojiImageView = UIImageView()
    
    func setupBackground(){
        homeImageView.translatesAutoresizingMaskIntoConstraints = false
        homeImageView.backgroundColor = .red
        view.addSubview(homeImageView)
        homeImageView.widthAnchor.constraint(
            equalTo: view.widthAnchor
        ).isActive = true
        homeImageView.centerXAnchor.constraint(
            equalTo: view.centerXAnchor
        ).isActive = true
        homeImageView.heightAnchor.constraint(
            equalTo: view.heightAnchor
        ).isActive = true
        homeImageView.centerYAnchor.constraint(
            equalTo: view.centerYAnchor
        ).isActive = true
    }
    
    func displayTextBackground(){
        textBackgroundView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(textBackgroundView)
        textBackgroundView.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        textBackgroundView.leadingAnchor.constraint(
            equalTo: view.leadingAnchor
        ).isActive = true
        textBackgroundView.bottomAnchor.constraint(
            equalTo: view.bottomAnchor, constant: -40
        ).isActive = true
        
    }
    
    func displayEmoji(){
        emojiImageView.translatesAutoresizingMaskIntoConstraints = false
        emojiImageView.backgroundColor = .blue
        view.addSubview(emojiImageView)
        view.bringSubviewToFront(emojiImageView)
        emojiImageView.centerYAnchor.constraint(
            equalTo: textBackgroundView.topAnchor
        ).isActive = true
        emojiImageView.centerXAnchor.constraint(
            equalTo: textBackgroundView.trailingAnchor
        ).isActive = true
        emojiImageView.widthAnchor.constraint(equalToConstant: 40).isActive = true
        emojiImageView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        emojiImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        
    }
    
    
    func displayText(){
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.text = "Era uma vez uma Naominha, no ápice de seus 16 anos, prestes a se formar no terceirão."
        textBackgroundView.addSubview(textLabel)
        textLabel.topAnchor.constraint(equalTo: textBackgroundView.topAnchor, constant: 20).isActive = true
        textLabel.bottomAnchor.constraint(equalTo: textBackgroundView.bottomAnchor, constant: -20).isActive = true
        textLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        textLabel.trailingAnchor.constraint(equalTo: emojiImageView.centerXAnchor, constant: -20).isActive = true
        textLabel.numberOfLines = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBackground()
        displayTextBackground()
        displayEmoji()
        displayText()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
