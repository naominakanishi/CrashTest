//
//  OptionsViewController.swift
//  CrashCourse1
//
//  Created by Naomi Nakanishi on 20/07/21.
//

import UIKit

class OptionsViewController: UIViewController {

    let backgroundImageView = UIImageView()
    let optionsStackView = UIStackView()
    
//    func configureOptions(){
//
//    }
    func setupBackground(){
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.backgroundColor = .red
        view.addSubview(backgroundImageView)
        backgroundImageView.widthAnchor.constraint(
            equalTo: view.widthAnchor
        ).isActive = true
        backgroundImageView.centerXAnchor.constraint(
            equalTo: view.centerXAnchor
        ).isActive = true
        backgroundImageView.heightAnchor.constraint(
            equalTo: view.heightAnchor
        ).isActive = true
        backgroundImageView.centerYAnchor.constraint(
            equalTo: view.centerYAnchor
        ).isActive = true
    }
    
    func setupOptionsStackView(){
        optionsStackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(optionsStackView)
        optionsStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        optionsStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        //eixo, distribuição (alinhar onde, preencher etc), espaçamento entre os itens e
        optionsStackView.axis = .vertical
        optionsStackView.distribution = .equalCentering
        optionsStackView.spacing = 5.0
        
        createTesButton(id: 1)
        createTesButton(id: 2)
        createTesButton(id: 3)
        
    }
    
    func createTesButton(id: Int) {
        let button = UIButton()
        button.setTitle("salve", for: .normal)
        button.backgroundColor = .black
        button.addTarget(self, action: #selector(handleTap), for: .touchUpInside)
        optionsStackView.addArrangedSubview(button)
        button.tag = id
    }
    
    @objc
    func handleTap(sender: UIButton){
        let id = sender.tag
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupBackground()
        setupOptionsStackView()
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
