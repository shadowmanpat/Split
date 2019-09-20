//
//  DetailViewController.swift
//  Split
//
//  Created by Nikolaos Agas on 20/09/2019.
//  Copyright © 2019 Nikolaos Agas. All rights reserved.
//

import UIKit

class ImagePresentationVC: UIViewController {

   

    @IBOutlet weak var itemImageView: UIImageView!

    var image: UIImage?
    override func viewDidLoad() {
        super.viewDidLoad()
        itemImageView.image = image
    }

   

    
}

