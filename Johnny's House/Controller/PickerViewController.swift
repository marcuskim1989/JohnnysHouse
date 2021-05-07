//
//  ViewController.swift
//  Johnny's House
//
//  Created by Marcus Y. Kim on 5/5/21.
//

import UIKit

class PickerViewController: UIViewController {
    
    @IBOutlet weak var numPlayersPicker: UIPickerView!
    @IBOutlet weak var deckSizePicker: UIPickerView!
    @IBOutlet weak var numEachCardPicker: UIPickerView!
    @IBOutlet weak var numColorsPicker: UIPickerView!
    @IBOutlet weak var allowedRarityPicker: UIPickerView!
    @IBOutlet weak var formatPicker: UIPickerView!
    @IBOutlet weak var tournamentTypePicker: UIPickerView!
    @IBOutlet weak var specialRulesPicker: UIPickerView!
    
    private let numPlayersData = PickerData.NumPLayersData()
    private let deckSizeData = PickerData.DeckSizeData()
    private let numEachCardData = PickerData.NumEachCardData()
    private let numColorsData = PickerData.NumColorsData()
    private let allowedRarityData = PickerData.AllowedRarityData()
    private let formatData = PickerData.FormatData()
    private let tournamentTypeData = PickerData.TournamentTypeData()
    private let specialRulesData = PickerData.SpecialRulesData()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.numPlayersPicker.delegate = self
        self.numPlayersPicker.dataSource = self
        
        self.deckSizePicker.delegate = self
        self.deckSizePicker.dataSource = self
        
        self.numEachCardPicker.delegate = self
        self.numEachCardPicker.dataSource = self
        
        self.numColorsPicker.delegate = self
        self.numColorsPicker.dataSource = self
        
        self.allowedRarityPicker.delegate = self
        self.allowedRarityPicker.dataSource = self
        
        self.formatPicker.delegate = self
        self.formatPicker.dataSource = self
        
        self.tournamentTypePicker.delegate = self
        self.tournamentTypePicker.dataSource = self
        
        self.specialRulesPicker.delegate = self
        self.specialRulesPicker.dataSource = self
        
        
    }

}

extension PickerViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    
    //number of columns in the picker
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return  1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        switch pickerView {
        
        case numPlayersPicker:
            return numPlayersData.getNumPlayersData().count
        case deckSizePicker:
            return deckSizeData.getDeckSizePickerData().count
        case numEachCardPicker:
            return numEachCardData.getNumEachCardPickerData().count
        case numColorsPicker:
            return numColorsData.getNumColorsPickerData().count
        case allowedRarityPicker:
            return allowedRarityData.getAllowedRarityPickerData().count
        case formatPicker:
            return formatData.getFormatPickerData().count
        case tournamentTypePicker:
            return tournamentTypeData.getTournamentTypePickerData().count
        case specialRulesPicker:
            return specialRulesData.getSpecialRulesPickerData().count
        default:
            return 0
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        switch pickerView {
        
        case numPlayersPicker:
            return String(numPlayersData.getNumPlayersData()[row])
        case deckSizePicker:
            return String(deckSizeData.getDeckSizePickerData()[row])
        case numEachCardPicker:
            return numEachCardData.getNumEachCardPickerData()[row]
        case numColorsPicker:
            return String(numColorsData.getNumColorsPickerData()[row])
        case allowedRarityPicker:
            return allowedRarityData.getAllowedRarityPickerData()[row]
        case formatPicker:
            return formatData.getFormatPickerData()[row]
        case tournamentTypePicker:
            return tournamentTypeData.getTournamentTypePickerData()[row]
        case specialRulesPicker:
            return specialRulesData.getSpecialRulesPickerData()[row]
        default:
            return "Error, title did not load"
        }
        
    }
}


/*
 
 numPlayersPicker: UIPickerView!
 @IBOutlet weak var deckSizePicker: UIPickerView!
 @IBOutlet weak var numEachCardPicker: UIPickerView!
 @IBOutlet weak var numColorsPicker: UIPickerView!
 @IBOutlet weak var allowedRarityPicker: UIPickerView!
 @IBOutlet weak var formatPicker: UIPickerView!
 @IBOutlet weak var tournamentTypePicker: UIPickerView!
 @IBOutlet weak var specialRulesPicker: UIPickerView!
 */
