//
//  ViewController.swift
//  Constran
//
//  Created by bfpig on 11/2/1395 AP.
//  Copyright © 1395 bfpig. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let nameLabel:UILabel = {
        let label = UILabel()
        label.text = "settingfdggdfgdfhgjfhjfhjkfgjkfhjdfjfdjdfjdfjfgjdfjdfgjdfjdfgjdfjdfjh"
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 13)
        label.backgroundColor = UIColor.red
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    
    let idLabel:UILabel = {
        
        let label = UILabel()
        label.text = "kavos"
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 13)
        label.backgroundColor = UIColor.blue
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    let family:UILabel = {
        
        let label = UILabel()
        label.text = "ali"
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 13)
        label.backgroundColor = UIColor.blue
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let phan:UILabel = {
        
        let label = UILabel()
        label.text = "1235648888"
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 13)
        label.backgroundColor = UIColor.blue
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let padar:UILabel = {
        
        let label = UILabel()
        label.text = "ali"
        label.textColor = UIColor.brown
        label.font = UIFont.systemFont(ofSize: 13)
        label.backgroundColor = UIColor.blue
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setup()
        
        
    }
    
    func setup()  {
        
        view.addSubview(nameLabel)
        view.addSubview(idLabel)
        view.addSubview(family)
        view.addSubview(phan)
        view.addSubview(padar)
        
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0]-10-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":nameLabel]))
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v1(44)]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v1":idLabel]))
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v2(44)]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v2":family]))
        
        
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-50-[v0(100)]-8-[v1(44)]-8-[v2(44)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":nameLabel,"v1":idLabel,"v2":family]))
        
        
        //topcon
        view.addConstraint(NSLayoutConstraint(item: phan, attribute: .top, relatedBy: .equal, toItem: nameLabel, attribute: .bottom, multiplier: 1, constant: 8))
        
        //left
        view.addConstraint(NSLayoutConstraint(item: phan, attribute:.left, relatedBy: .equal, toItem: idLabel, attribute: .right, multiplier: 1, constant: 8))
        
        //right
        view.addConstraint(NSLayoutConstraint(item: phan, attribute:.right, relatedBy: .equal, toItem: nameLabel, attribute: .right, multiplier: 1, constant: 0))
        
        
        view.addConstraint(NSLayoutConstraint(item: phan, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 0, constant: 44))
        
        
        
        
        
        //topcon
        view.addConstraint(NSLayoutConstraint(item: padar, attribute: .top, relatedBy: .equal, toItem: phan, attribute: .bottom, multiplier: 1, constant: 8))
        
        //left
        view.addConstraint(NSLayoutConstraint(item: padar, attribute:.left, relatedBy: .equal, toItem: phan, attribute: .left, multiplier: 1, constant: 0))
        
        //right
        view.addConstraint(NSLayoutConstraint(item: padar, attribute:.right, relatedBy: .equal, toItem: phan, attribute: .right, multiplier: 1, constant: 0))
        
        
        view.addConstraint(NSLayoutConstraint(item: padar, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 0, constant: 44))
        
        
    }
    
    
}

