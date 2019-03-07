//
//  JobDescriptionViewController.swift
//  ProfessionalFutureLSG
//
//  Created by alumne on 07/03/2019.
//  Copyright © 2019 Dragomir La Salle Gracia. All rights reserved.
//

import UIKit

class JobDescriptionViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var professionalToDisplay:Professional?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let currentProfessional = professionalToDisplay {
            self.imageView.image = UIImage(named: currentProfessional.imageName)
        }
    }

}
