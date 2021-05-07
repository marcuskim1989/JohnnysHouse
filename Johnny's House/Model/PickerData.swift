//
//  NumPlayersData.swift
//  Johnny's House
//
//  Created by Marcus Y. Kim on 5/5/21.
//

import Foundation

struct PickerData {
    
    struct NumPLayersData {
        private let numPlayersData: [Int] = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
        
        public func getNumPlayersData() -> [Int] {
            return numPlayersData
        }
    }
    
    struct DeckSizeData {
        private let deckSizePickerData: [Int] = [40, 60, 100, 200, 240]
        
        public func getDeckSizePickerData() -> [Int] {
            return deckSizePickerData
        }
    }
    
    struct NumEachCardData {
        private let numEachCardPickerData: [String] = ["1", "2", "3", "4", "5", "6", "7", "8","9", "10", "11", "12", "13", "14", "15", "16", "Unlimited"]
        
        public func getNumEachCardPickerData() -> [String] {
            return numEachCardPickerData
        }
    }
    
    struct NumColorsData {
        private let numColorsPickerData: [Int] = [1, 2, 3, 4, 5]
        
        public func getNumColorsPickerData() -> [Int] {
            return numColorsPickerData
        }
    }
    
    struct AllowedRarityData {
        private let allowedRarityPickerData: [String] = ["Commons Only", "Uncommons Only", "Rares Only", "Mythic Rares Only", "Commons + Uncommons", "Commons + Rares", "Commons + Mythic Rares", "Uncommons + Rares", "Uncommons + Mythic Rares", "Rares + Mythic Rares"]
        
        public func getAllowedRarityPickerData() -> [String] {
            return allowedRarityPickerData
        }
    }
    
    struct FormatData {
        private let formatPickerData: [String] = ["Penny Dreadful", "Pauper", "Artisan", "Standard", "Pioneer", "Modern", "Legacy", "Vintage", "Commander", "Brawl"]
        
        public func getFormatPickerData() -> [String] {
            return formatPickerData
        }
    }
    
    struct TournamentTypeData {
        private let tournamentTypePickerData: [String] = ["Single Elimination", "Double Elimination", "Triple Elimination", "Multilevel", "Straight Round Robin", "Round Robin Double Split", "Round Robin Triple Split", "Round Robin Quadruple Split", "Semi-Round Robin", "Swiss", "Extended", "3 Game Minimum Guarantee", "Consolation Bracket"]
        
        public func getTournamentTypePickerData() -> [String] {
            return tournamentTypePickerData
        }
    }
    
    struct SpecialRulesData {
        private let specialRulesPickerData: [String] = ["Roll for color-picking order", "Use only cards from new packs", "Proxies allowed", "Loser picks additional color for winner", "Start with 10 cards", "All a mana costs are zero", "Two free mulligans", "Two lands per turn", "Only creatures", "Only sorceries", "Only Enchantments", "Only Artifacts", "Only lands", "Only instants", "At least ten Auras and/or Equipment", "Only instans and sorceries", "Only permanents", "Must use companion", "Make a get, play with a random deck from someone else"]
        
        public func getSpecialRulesPickerData() -> [String] {
            return specialRulesPickerData
        }
    }
    
   
}
