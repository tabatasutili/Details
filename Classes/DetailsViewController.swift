//
//  DetailsViewController.swift
//  Details
//
//  Created by Tabata Sabrina Sutili on 15/04/21.
//
import UIKit
import LucasCoinAPI

public class DetailsViewController: UIViewController {

    @IBOutlet weak var siglaLabel: UILabel!
    @IBOutlet weak var starImage: UIImageView!
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var prieceLabel: UILabel!
    @IBOutlet weak var favButton: UIButton!
    @IBOutlet weak var lastHour: UILabel!
    @IBOutlet weak var lastMonth: UILabel!
    @IBOutlet weak var lastYear: UILabel!
    
    
    //MARK: Vars
    
//
   
    
    
    //private var sigla: String assetID
   // private var icon: String idIcon
  //  private var star: String
    //private var price: String
//    private var favorite: String
//    private var volumeHour: String
//    private var volumeMoth: String
//    private var volumeYear: String
    
    var index: Int
    
    public init(index: Int){
        self.index = index
        
        super.init(nibName:"DetailsViewController", bundle: Bundle(for: DetailsViewController.self))
    }
   
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Functions
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        setTela()
        setBorderButton()
        //let elemento = coinID[id]
        let listFavorites = "AAA|BTC|HHH|KKK"
        setFavoritesButton(list: listFavorites)
        
        let coinsResult = API.requestCoinList()
        print(coinsResult[index])
        
    }
    
    func setTela(){
        
        
       // siglaLabel.text = sigla
        //iconImage.image =
        priceLabel.text = "$ \(index)"
        //lastHour.text = volumeHour
        //lastMonth.text = volumeMoth
        //lastYear.text = volumeYear
    }
    
    


}

extension DetailsViewController {
    
    func setBorderButton(){
        favButton.layer.cornerRadius = 8.0
        favButton.layer.borderWidth = 0.8
        favButton.layer.borderColor = (UIColor( red: 255, green: 255, blue:255, alpha: 255 )).cgColor
    }
    
    
    
    func setFavoritesButton(list: String){
        let sigla: Substring = "AAA"
        let favorite = list.split(separator: "|")
        if favorite.contains(sigla){
            favButton.setTitle("Remover", for: .normal)
        } else {
            favButton.setTitle("Adicionar", for: .normal)
        }
    }
}
