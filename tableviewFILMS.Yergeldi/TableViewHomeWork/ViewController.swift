//
//  ViewController.swift
//  TableViewHomeWork
//
//  Created by Yergeldi
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelName: UILabel!
    
    @IBOutlet weak var labelGenre: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var descrip: UILabel!
    
    @IBOutlet weak var yearOfFilm: UILabel!
    
    @IBOutlet weak var directorOfFilm: UILabel!
    
    @IBOutlet weak var image2: UIImageView!
    
    @IBOutlet weak var image3: UIImageView!
    
    @IBOutlet weak var image4: UIImageView!
    
   
    var film = Film()
    override func viewDidLoad() {
        super.viewDidLoad()
       
        labelName.text = film.name
        labelGenre.text = film.genre
        imageView.image = UIImage(named: film.imagename)
        descrip.text = film.descrip
        yearOfFilm.text = film.year
        directorOfFilm.text = film.director
        image2.image = UIImage(named: film.image2)
        image3.image = UIImage(named: film.image3)
        image4.image = UIImage(named: film.image4)
        
    }


}

