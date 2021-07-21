//
//  ViewController.swift
//  CrashCourse1
//
//  Created by Naomi Nakanishi on 20/07/21.
//

import UIKit

class ViewController: UIViewController {

    let label1 = UILabel()
    let label2 = UILabel()
    let imageView = UIImageView()
    
    func setupLabel1(){
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.text = "mamou"
        view.addSubview(label1)
        label1.leadingAnchor.constraint(
            equalTo: view.leadingAnchor
        ).isActive = true
        label1.topAnchor.constraint(
            equalTo: view.topAnchor
        ).isActive = true
    }
    
    func setupLabel2(){
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.text = "demais"
        view.addSubview(label2)
        label2.trailingAnchor.constraint(
            equalTo: view.trailingAnchor
        ).isActive = true
        label2.bottomAnchor.constraint(
            equalTo: view.bottomAnchor
        ).isActive = true
    }
    
    func setupImageView(){
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .red
        view.addSubview(imageView)
        imageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9).isActive = true
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 40).isActive = true
        imageView.bottomAnchor.constraint(equalTo: label2.topAnchor, constant: -40).isActive = true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabel1()
        setupLabel2()
        setupImageView()
        // Do any additional setup after loading the view.
    }


}

