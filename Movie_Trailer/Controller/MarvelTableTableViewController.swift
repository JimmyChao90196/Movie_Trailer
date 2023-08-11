//
//  MarvelTableTableViewController.swift
//  Movie_Trailer
//
//  Created by JimmyChao on 2023/8/10.
//

import UIKit

class MarvelTableTableViewController: UITableViewController{

    
    var genreIndex = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateAppearance()
       
    }
    
    
    

    // MARK: - Update appearance
    
    func updateAppearance(){
       
        self.clearsSelectionOnViewWillAppear = false

        tableView.backgroundView = UIImageView(image: UIImage(named: genreIndex == 0 ? "Poster":"Poster02"))
        tableView.backgroundView?.contentMode = .scaleAspectFill
        tableView.backgroundView?.alpha = 0.7
    }
    
    
    
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        let numRow:Int = genreIndex==0 ? MarvelFilmInfo.movies.count:DCFilmInfo.movies.count
        
        return numRow
    }

   
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MovieTableViewCell.reuseIdentifier , for: indexPath) as? MovieTableViewCell else {
            fatalError("Unable to dequeue MovieTableViewCell")
        }

        
        
        
        
        var movie:film
        
        if genreIndex == 0{
            movie = MarvelFilmInfo.movies[indexPath.row]
        }else{
            movie = DCFilmInfo.movies[indexPath.row]
        }
        
        
        
        //Assign movie information to cell properties
        cell.moviePoster.image = movie.image
        cell.movieTitle.text = movie.name + " " + String(movie.years)
        cell.movieDescription.text = movie.description
        cell.stars.text = movie.stars
        
        
        //Special property
        //Resetting the movie cast
        cell.movieCast.text = ""
        
        for cast in movie.cast {
            var castText = cell.movieCast.text ?? ""
            castText += "" + cast
            
            cell.movieCast.text = castText
        }
        
        
        //Cell background
        cell.cellBG.backgroundColor = .lightGray
        cell.cellBG.alpha = 0.9
        cell.cellBG.layer.cornerRadius = 15
        cell.cellBG.layer.borderWidth = 1.5
        cell.cellBG.layer.borderColor = .init(gray: 1, alpha: 0.85)

        return cell
    }

    

    @IBSegueAction func sendMovies(_ coder: NSCoder) -> MovieDetailViewController? {
        let controller = MovieDetailViewController(coder: coder)
        
        guard let row = tableView.indexPathForSelectedRow?.row else{
            return nil
        }
        
        if genreIndex == 0{
            controller?.moiveInfos = MarvelFilmInfo.movies[row]
        }else{
            controller?.moiveInfos = DCFilmInfo.movies[row]
        }
        
        return controller
    }
    
    
    
    @IBAction func segmentSwitch(_ sender: UISegmentedControl) {
        genreIndex = sender.selectedSegmentIndex
        updateAppearance()
        tableView.reloadData()

    }
    
    
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
