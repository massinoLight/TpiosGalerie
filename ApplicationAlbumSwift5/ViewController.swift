//
//  ViewController.swift
//  ApplicationAlbumSwift5
//
//  Created by Massino on 23/02/2020.
//  Copyright © 2020 Massino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let images = ["barca", "bayern", "inter", "liverpool", "psg", "om", "leverkusen", "leipzig"]
    var position :Int = 0
    var actuel:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var nom: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    @IBAction func suivant() {
        print("suivant")
        
        if (position < 7)  {
            position=position+1

        }
        else {
            position=0

        }
        actuel=images[position]

        nom.text=images[position]
        image.image = UIImage(named: actuel)
       
    }
    
    @IBAction func precedent() {
        print("precedent")
        if (position > 0)  {
            position=position-1

        }
        else {
            position=7

        }
        actuel=images[position]

        nom.text=images[position]

        image.image = UIImage(named: actuel)

    }
}

