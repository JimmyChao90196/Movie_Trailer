//
//  MovieTableViewCell.swift
//  Movie_Trailer
//
//  Created by JimmyChao on 2023/8/10.
//

import UIKit
import Foundation



class MovieTableViewCell: UITableViewCell {
    
    var toggle = true
   
    
    @IBOutlet var likeButtonView: UIButton!
    @IBOutlet var stars: UILabel!
    @IBOutlet var cellBG: UIView!
    @IBOutlet var moviePoster: UIImageView!
    @IBOutlet var movieTitle: UILabel!
    @IBOutlet var movieDescription: UITextView!
    @IBOutlet var movieCast: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func likeButton(_ sender: UIButton) {
        
        toggle.toggle()
        
        let heart = toggle ? UIImage(systemName: "heart"):UIImage(systemName: "heart.fill")
        
        sender.setImage(heart, for: .normal)
    }
}



extension UITableViewCell {
    static var reuseIdentifier: String { "\(Self.self)" }
}
