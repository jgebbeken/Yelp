//
//  DetailsViewController.swift
//  Yelp
//
//  Created by Josh Gebbeken on 2/13/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var categoriesLabel: UILabel!
    @IBOutlet weak var ratingsImageView: UIImageView!
    @IBOutlet weak var reviewsLabel: UILabel!
    var business: Business!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = business.name
        categoriesLabel.text = business.categories
        addressLabel.text = business.address
        reviewsLabel.text = "\(business.reviewCount!) Reviews"
        ratingsImageView.setImageWithURL(business.ratingImageURL!)
        distanceLabel.text = business.distance
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
