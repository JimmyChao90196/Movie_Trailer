//
//  MovieModel.swift
//  Movie_Trailer
//
//  Created by JimmyChao on 2023/8/10.
//

import Foundation
import UIKit

// MARK: -Protocols
protocol film{
    var name:String {get }
    var years:Int {get}
    var image:UIImage { get  }
    var cast: [String] { get }
    var description:String { get  }
    var webURL:URL { get }
    var stars:String { get }
}








// MARK: -MarvelFilmInfo

struct MarvelFilmInfo:film {
    let name: String
    let years: Int
    let image: UIImage
    let cast: [String]
    let description: String
    let webURL:URL
    let stars:String
    
    static let movies: [MarvelFilmInfo] = [
        MarvelFilmInfo(name: "Iron Man", years: 2008,
                       image: (UIImage(named: "iron_man") ?? UIImage(systemName: "photo"))!,
                       cast: ["Robert Downey Jr.", "Gwyneth Paltrow", "Jeff Bridges"],
                       description: "Tony Stark becomes Iron Man after a life-changing event. A new era of tech-based heroes begins.",
                       webURL: URL(string: "https://trailers.apple.com/movies/paramount/iron_man/iron_man-30sec_sb_h480p.mov")!,
                       stars: "⭐️⭐️⭐️⭐️⭐️"),
                       
        MarvelFilmInfo(name: "The Incredible Hulk", years: 2008,
                       image: (UIImage(named: "hulk") ?? UIImage(systemName: "photo"))!,
                       cast: ["Edward Norton", "Liv Tyler", "Tim Roth"],
                       description: "Dr. Bruce Banner becomes the Hulk. While pursued by the military, he seeks a cure for his condition.",
                       webURL: URL(string: "http://trailers.apple.com/movies/universal/the_incredible_hulk/the_incredible_hulk-tlr1_h480p.mov")!,
                       stars: "⭐️⭐️⭐️⭐️"),
                       
        MarvelFilmInfo(name: "Iron Man 2", years: 2010,
                       image: (UIImage(named: "iron_man_2") ?? UIImage(systemName: "photo"))!,
                       cast: ["Robert Downey Jr.", "Scarlett Johansson", "Mickey Rourke"],
                       description: "Tony Stark faces threats from new adversaries, revealing the pressures of being Iron Man.",
                       webURL: URL(string: "http://trailers.apple.com/movies/paramount/ironman2/ironman2-34rgrwt9-tlr2_h480p.mov")!,
                       stars: "⭐️⭐️⭐️"),
                       
        MarvelFilmInfo(name: "Thor", years: 2011,
                       image: (UIImage(named: "thor") ?? UIImage(systemName: "photo"))!,
                       cast: ["Chris Hemsworth", "Natalie Portman", "Tom Hiddleston"],
                       description: "The Norse god Thor is exiled to Earth, where he learns humility and what it means to be a hero.",
                       webURL: URL(string: "http://trailers.apple.com/movies/paramount/thor/thor-tvspot_h480p.mov")!,
                       stars: "⭐️⭐️⭐️⭐️⭐️"),
                       
        MarvelFilmInfo(name: "Captain America The First Avenger", years: 2011,
                       image: (UIImage(named: "captain_america") ?? UIImage(systemName: "photo"))!,
                       cast: ["Chris Evans", "Hayley Atwell", "Sebastian Stan"],
                       description: "Steve Rogers becomes Captain America during WWII and battles the Red Skull.",
                       webURL: URL(string: "http://movietrailers.apple.com/movies/paramount/captainamerica/captainamerica-tlr1_h480p.mov")!,
                       stars: "⭐️⭐️⭐️⭐️⭐️"),
                       
        MarvelFilmInfo(name: "The Avengers", years: 2012,
                       image: (UIImage(named: "avengers") ?? UIImage(systemName: "photo"))!,
                       cast: ["Robert Downey Jr.", "Chris Evans", "Scarlett Johansson", "Mark Ruffalo"],
                       description: "Earth's mightiest heroes unite to face the threat of Loki and an alien invasion.",
                       webURL: URL(string: "http://trailers.apple.com/movies/marvel/theavengers/avengers-tlr1_h480p.mov")!,
                       stars: "⭐️⭐️⭐️"),
                       
        MarvelFilmInfo(name: "Iron Man 3", years: 2013,
                       image: (UIImage(named: "iron_man_3") ?? UIImage(systemName: "photo"))!,
                       cast: ["Robert Downey Jr.", "Gwyneth Paltrow", "Ben Kingsley"],
                       description: "Tony Stark confronts the demons of his past and faces off against the Mandarin.",
                       webURL: URL(string: "http://trailers.apple.com/movies/marvel/ironman3/ironman3-tlr2_h480p.mov")!,
                       stars: "⭐️⭐️⭐️⭐️⭐️"),
                       
        MarvelFilmInfo(name: "Thor The Dark World", years: 2013,
                       image: (UIImage(named: "thor_dark_world") ?? UIImage(systemName: "photo"))!,
                       cast: ["Chris Hemsworth", "Natalie Portman", "Tom Hiddleston"],
                       description: "Thor battles to save the Nine Realms from an ancient enemy, but a betrayal from within his family threatens to consume all.",
                       webURL: URL(string: "http://movietrailers.apple.com/movies/marvel/thorthedarkworld/thorthedarkworld-tlr1_h480p.mov")!,
                       stars: "⭐️⭐️⭐️⭐️"),
                       
        MarvelFilmInfo(name: "Captain America The Winter Soldier", years: 2014,
                       image: (UIImage(named: "winter_soldier") ?? UIImage(systemName: "photo"))!,
                       cast: ["Chris Evans", "Scarlett Johansson", "Anthony Mackie"],
                       description: "Steve Rogers uncovers dark secrets within S.H.I.E.L.D. and confronts an old friend turned enemy.",
                       webURL: URL(string: "http://movietrailers.apple.com/movies/marvel/captainamericathewintersoldier/captainamerica2-tlr2_h480p.mov")!,
                       stars: "⭐️⭐️⭐️"),
                       
        MarvelFilmInfo(name: "Guardians of the Galaxy", years: 2014,
                       image: (UIImage(named: "guardians") ?? UIImage(systemName: "photo"))!,
                       cast: ["Chris Pratt", "Zoe Saldana", "Dave Bautista"],
                       description: "A group of intergalactic misfits forms an unlikely team to save the galaxy from a powerful enemy.",
                       webURL: URL(string: "http://movietrailers.apple.com/movies/marvel/guardiansofthegalaxy/guardiansofthegalaxy-tlr4_h480p.mov")!,
                       stars: "⭐️⭐️⭐️⭐️⭐️")
    ]
}



// MARK: - DCFilmInfo



struct DCFilmInfo:film {
    let name: String
    let years: Int
    let image: UIImage
    let cast: [String]
    let description: String
    let webURL: URL
    let stars:String
    
    static let movies: [DCFilmInfo] = [

        DCFilmInfo(name: "The Dark Knight", years: 2008,
                   image: UIImage(named: "theDarkKnight") ?? UIImage(systemName: "photo")!,
                   cast: ["Christian Bale", "Heath Ledger", "Aaron Eckhart", "Maggie Gyllenhaal", "Gary Oldman"],
                   description: "With the help of allies Lt. Jim Gordon and DA Harvey Dent, Batman sets out to dismantle the remaining criminal organizations that plague Gotham. However, they soon find themselves prey to a rising criminal mastermind known as The Joker.",
                   webURL: URL(string: "http://trailers.apple.com/movies/wb/the_dark_knight/the_dark_knight-tlr1_h480p.mov")!,
                   stars: "⭐️⭐️⭐️⭐️⭐️"),
    
        DCFilmInfo(name: "Watchmen", years: 2009,
                   image: UIImage(named: "watchMen") ?? UIImage(systemName: "photo")!,
                   cast: ["Jackie Earle Haley", "Patrick Wilson", "Malin Åkerman", "Billy Crudup"],
                   description: "In an alternate 1985 America, costumed superheroes are part of everyday life. When one of their number, The Comedian, is murdered, Rorschach investigates a possible conspiracy.",
                   webURL: URL(string: "http://trailers.apple.com/movies/wb/watchmen/watchmen-tlr1_h480p.mov")!,
                   stars: "⭐️⭐️⭐️"),
    
        DCFilmInfo(name: "Jonah Hex", years: 2010,
                   image: UIImage(named: "jonahHex") ?? UIImage(systemName: "photo")!,
                   cast: ["Josh Brolin", "Megan Fox", "John Malkovich"],
                   description: "The U.S. military makes a scarred bounty hunter with warrants on his own head an offer he cannot refuse: in exchange for his freedom, he must stop a terrorist who is ready to unleash Hell on Earth.",
                   webURL: URL(string: "http://trailers.apple.com/movies/weinstein/jonahhex/jonahhex-tlr1_h480p.mov")!,
                   stars: "⭐️⭐️"),
    
        DCFilmInfo(name: "Green Lantern", years: 2011,
                   image: UIImage(named: "greenLantern") ?? UIImage(systemName: "photo")!,
                   cast: ["Ryan Reynolds", "Blake Lively", "Peter Sarsgaard"],
                   description: "Reckless test pilot Hal Jordan acquires superhuman powers when he is chosen by the Ring, the willpower-fed source of power. However, with the presence of a new enemy called Parallax, Hal must quickly master his new powers to save Earth.",
                   webURL: URL(string: "http://trailers.apple.com/movies/wb/greenlantern/greenlantern-tlr3_h480p.mov")!,
                   stars: "⭐️"),
    
        DCFilmInfo(name: "Man of Steel", years: 2013,
                   image: UIImage(named: "manOfSteel") ?? UIImage(systemName: "photo")!,
                   cast: ["Henry Cavill", "Amy Adams", "Michael Shannon"],
                   description: "Clark Kent, one of the last of an extinguished race disguised as an unremarkable human, is forced to reveal his identity when Earth is invaded by an army of survivors who threaten to bring the planet to the brink of destruction.",
                   webURL: URL(string: "http://trailers.apple.com/movies/wb/manofsteel/manofsteel-tlr4_h480p.mov")!,
                   stars: "⭐️⭐️⭐️⭐️⭐️"),
    
        DCFilmInfo(name: "Wonder Women", years: 2017,
                   image: UIImage(named: "wonderWoman") ?? UIImage(systemName: "photo")!,
                   cast: ["Gal Gadot", "Chris Pine", "Robin Wright"],
                   description: "Diana, an Amazonian princess, leaves her island home to explore the world and, in doing so, becomes one of the world's greatest heroes.",
                   webURL: URL(string: "http://movietrailers.apple.com/movies/wb/wonderwoman/wonder-woman-trailer-5_h480p.mov")!,
                   stars: "⭐️⭐️⭐️⭐️⭐️"),
    
        DCFilmInfo(name: "Aquaman", years: 2018,
                   image: UIImage(named: "aquaman") ?? UIImage(systemName: "photo")!,
                   cast: ["Jason Momoa", "Amber Heard", "Willem Dafoe"],
                   description: "Arthur Curry, the human-born heir to the underwater kingdom of Atlantis, goes on a quest to prevent a war between the worlds of ocean and land.",
                   webURL: URL(string: "http://movietrailers.apple.com/movies/wb/aquaman/aquaman-trailer-3_h480p.mov")!,
                   stars: "⭐️⭐️⭐️⭐️"),
    
        DCFilmInfo(name: "Birds of Prey", years: 2020,
                   image: UIImage(named: "birdsOfPrey") ?? UIImage(systemName: "photo")!,
                   cast: ["Margot Robbie", "Rosie Perez", "Mary Elizabeth Winstead"],
                   description: "After splitting with the Joker, Harley Quinn joins superheroes Black Canary, Huntress and Renee Montoya to save a young girl from an evil crime lord.",
                   webURL: URL(string: "https://movietrailers.apple.com/movies/wb/birds-of-prey/birds-of-prey-trailer-1_h480p.mov")!,
                   stars: "⭐️⭐️⭐️"),
    
        DCFilmInfo(name: "The Suicide Squad", years: 2021,
                   image: UIImage(named: "theSuicideSquad") ?? UIImage(systemName: "photo")!,
                   cast: ["Margot Robbie", "Idris Elba", "John Cena"],
                   description: "Supervillains Harley Quinn, Bloodsport, Peacemaker, and a collection of cons at Belle Reve prison join the super-secret, super-shady Task Force X where they are heavily armed and dropped off at the remote, enemy-infused island of Corto Maltese.",
                   webURL: URL(string: "http://movietrailers.apple.com/movies/wb/suicidesquad/suicide-squad-comic-con-trailer_h480p.mov")!,
                   stars: "⭐️⭐️⭐️"),
        DCFilmInfo(name: "Justice League", years: 2021,
                   image: UIImage(named: "justiceLeague") ?? UIImage(systemName: "photo")!,
                   cast: ["Ben Affleck, Gal Gadot, Jason Momoa, Ezra Miller"],
                   description: "In ZACK SNYDER'S JUSTICE LEAGUE, determined to ensure Superman's (Henry Cavill) ultimate sacrifice was not in vain, Bruce Wayne (Ben Affleck) aligns forces with Diana Prince (Gal Gadot) with plans to recruit a team of metahumans to protect the world from an approaching threat of catastrophic proportions.",
                   webURL: URL(string: "http://movietrailers.apple.com/movies/wb/justiceleague/justice-league-trailer-3_h480p.mov")!,
                   stars: "⭐️⭐️⭐️⭐️⭐️")
        
    
    ]
}



