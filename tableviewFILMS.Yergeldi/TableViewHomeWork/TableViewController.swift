//
//  TableViewController.swift
//  TableViewHomeWork
//
//  Created by Yergeldi
//

import UIKit

class TableViewController: UITableViewController {
  
    var arrayFilm = [Film(name: "malchik", genre: "camady / semya / xD", imagename: "malchik", descrip: "Мальчишник в вегасе было.", year: "0000", director: "Yergeldi", image2: "ergeldi", image3: "ergeldi3", image4: "ergeldi4"),
                     Film(name: "deadpool", genre: "комедия / fantasy / boevik / xD ", imagename: "deadpool", descrip: "Марвел фильм про дедпула.", year: "0000", director: "Yergeldi",image2: "ergeldi",image3: "ergeldi", image4: "ergeldi4"),
                     Film(name: "wakanda", genre: "marvel / boevik / fantasy", imagename: "wakanda", descrip: "Боевик в ваканде тоже марвел.", year: "0000", director: "Yergeldi", image2: "ergeldi", image3: "1ergeldi", image4: "ergeldi"),
                     Film(name: "galaxy", genre: "marvel / boevik / fantasy", imagename: "galaxy", descrip: "В космасе фоевик марвел.", year: "0000", director: "Yergeldi", image2: "ergeldi", image3: "ergeldi", image4: "ergeldi"),
                     Film(name: "strashno", genre: "strashno / triller / Фантастика", imagename: "strashno", descrip: "очень страшный филь паранормальное.", year: "0000",director: "Yergeldi", image2: "ergeldi", image3: "ergeldi",image4: "v")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

     
    }

    
    @IBAction func addPerson(_ sender: Any) {
    
        arrayFilm.append(Film(name: "new film",genre: "new genre",imagename: "avatar", year: "-", director: "-"))
        tableView.reloadData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
      
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayFilm.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

       
        let label = cell.viewWithTag(1000) as! UILabel
        label.text = arrayFilm[indexPath.row].name

        let labelGenre = cell.viewWithTag(1001) as! UILabel
        labelGenre.text = arrayFilm[indexPath.row].genre
        
        let imageview = cell.viewWithTag(1002) as! UIImageView
        imageview.image = UIImage(named: arrayFilm[indexPath.row ].imagename)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 89
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVc = storyboard?.instantiateViewController(withIdentifier: "detailViewController") as! ViewController
   
        detailVc.film = arrayFilm[indexPath.row ]
        
        navigationController?.show(detailVc, sender: self )
    }
    
 
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
        
            arrayFilm.remove(at: indexPath.row)
             
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
           
        }    
    }
    

}
