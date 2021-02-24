//
//  MovieDetailsViewController.swift
//  Flix
//
//  Created by Ryan McKenzie on 2/24/21.
//

import UIKit

class MovieDetailsViewController: UIViewController {
    var movie: [String:Any]!
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var foregroundPosterView: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var synopsis: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieTitle.text = movie["title"] as? String
        synopsis.text = movie["overview"] as? String
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)!
        
        foregroundPosterView.af_setImage(withURL: posterUrl)

        let baseUrl2 = "https://image.tmdb.org/t/p/w780"
        let backPath = movie["backdrop_path"] as! String
        let posterUrl2 = URL(string: baseUrl2 + backPath)!
        
        backdropView.af_setImage(withURL: posterUrl2)
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
