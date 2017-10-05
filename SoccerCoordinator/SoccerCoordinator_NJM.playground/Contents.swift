

/*
 
 PROJECT NAME: SOCCER LEAGUE COORDINATOR IN SWIFT
 
 PROJECT OBJECTIVE: Create three evenly matched teams where each team has amount of experienced soccer players. Use only skills taught from Treehouse lessons to date. Write a personalized letter to each player's guardian after stating what team their child was selected to and the date of the practice. No magic numbers. Clear code documentation. Logic must work if 24 players signed up instead of 18.
 
 PROJECT START: 10/1/17
 PROJECT FINISH: 10/5/17
 ESTIMATED TIME: 10 - 15 hours
 
 */

// Created a dictionary of all players and their respective skill level from excel document provided

let playerInfo: [String: Bool] =
    ["Joe Smith": true,
     "Jill Tanner": true,
     "Bill Bon": true,
     "Eva Gordon": false,
     "Matt Gill": false,
     "Kimmy Stein": false,
     "Sammy Adams": false,
     "Karl Saygan": true,
     "Suzane Greenberg": true,
     "Sal Dali": false,
     "Joe Kavalier": false,
     "Ben Finkelstein":false,
     "Diego Soto":true,
     "Chloe Alaska":false,
     "Arnold Willis":false,
     "Phillip Helm": true,
     "Les Clay": true,
     "Herschel Krustofski": true]

// Calculated experienced players per team and inexperienced players per team

var experiencedPlayers = 0
var inexperiencedPlayers = 0

for (_, playerExperience) in playerInfo {
    if playerExperience == true {
        experiencedPlayers = 1 + experiencedPlayers }
    else {
        inexperiencedPlayers = 1 + inexperiencedPlayers
    }
}

let totalTeams = 3

let experiencedPlayersPerTeam = experiencedPlayers / totalTeams
let inexperiencedPlayersPerTeam = inexperiencedPlayers / totalTeams



// Declared three teeams by making empty dictionaries to store players assigned to respective team
var teamRaptors = [String: Bool] ()
var teamDragons = [String: Bool] ()
var teamSharks = [String: Bool] ()

// Created dictionaries to count number of experienced players on each team
var teamRaptorsExperienced = [String: Bool] ()
var teamDragonsExperienced = [String: Bool] ()
var teamSharksExperienced = [String: Bool] ()

// Created dictionaries to count newbie players on each team (newbie = inexperienced player)
var teamRaptorsNewbies = [String: Bool] ()
var teamDragonsNewbies = [String: Bool] ()
var teamSharksNewbies = [String: Bool] ()


// Created logic to allocate players onto three evenly matched teams based on prior experience with same number of players on each team

for (playerName, playerExperience) in playerInfo {
    if (teamRaptorsExperienced.count < experiencedPlayersPerTeam && playerExperience == true) || (teamRaptorsNewbies.count < inexperiencedPlayersPerTeam && playerExperience == false) {
        
        if playerExperience == true {
            teamRaptorsExperienced[playerName] = playerExperience
            teamRaptors[playerName] = playerExperience
        } else {
            teamRaptorsNewbies[playerName] = playerExperience
            teamRaptors[playerName] = playerExperience
        }
    }
    else if
        (teamDragonsExperienced.count < experiencedPlayersPerTeam && playerExperience == true) || (teamDragonsNewbies.count < inexperiencedPlayersPerTeam && playerExperience == false) {
        
        if playerExperience == true {
            teamDragonsExperienced[playerName] = playerExperience
            teamDragons[playerName] = playerExperience
        } else {
            teamDragonsNewbies[playerName] = playerExperience
            teamDragons[playerName] = playerExperience
        }
    }
    else if (teamSharksExperienced.count < experiencedPlayersPerTeam && playerExperience == true) || (teamSharksNewbies.count < inexperiencedPlayersPerTeam && playerExperience == false) {
        
        if playerExperience == true {
            teamSharksExperienced[playerName] = playerExperience
            teamSharks[playerName] = playerExperience
        } else {
            teamSharksNewbies[playerName] = playerExperience
            teamSharks[playerName] = playerExperience
        }
    }
}





//Created dictionary comprised of playerName and guardianName to cross with playerInfo dictionary (playerGuardian and playerInfo have identical key)

let playerGuardian: [String: String] =
    ["Joe Smith": "Jim and Jan Smith",
     "Jill Tanner": "Clara Tanner",
     "Bill Bon": "Sara and Jenny Bon",
     "Eva Gordon": "Wendy and Mike Gordon",
     "Matt Gill": "Charles and Sylvia Gill",
     "Kimmy Stein": "Bill and Hillary Stein",
     "Sammy Adams": "Jeff Adams",
     "Karl Saygan": "Heather Bledsoe",
     "Suzane Greenberg": "Henrietta Dumas",
     "Sal Dali": "Gala Dali",
     "Joe Kavalier": "Sam and Elaine Kavalier",
     "Ben Finkelstein": "Aaron and Jill Finkelstein",
     "Diego Soto": "Robin and Sarika Soto",
     "Chloe Alaska": "David and Jamie Alaska",
     "Arnold Willis": "Claire Willis",
     "Phillip Helm": "Thomas Helm and Eva Jones",
     "Les Clay": "Wynonna Brown",
     "Herschel Krustofski": "Hyman and Rachel Krustofski"]



/*
 
 ****Documenting practice schedule for three different teams
 
 Dragons:   March 17, 1pm
 Sharks:    March 17, 3pm
 Raptors":  March 18, 1pm
 
 */




//Created three separate functions to draft letters to player's guardians --> ***NOTE: ATTEMPTED MULTIPLE TIMES TO APPLY DRY PROCESS (DON'T REPEAT YOURSELF), HOWEVER I REPEATED MYSELF WHEN CREATING THE LETTERS, WHICH I'M PISSED ABOUT...


//Created function that compares playerName in teamName dictionary to playerName1 in playerGuardian dictionary so as to only write letters to players on RAPTORS

var teamName0 = "Raptors"
var practiceTime0 = "March 18, 1pm"

func writeLetter(theTeamName: Dictionary<String, Bool>) {
    for (playerName, _) in theTeamName {
        for (playerName1, _) in playerGuardian {
            if (playerName == playerName1) {
                let Guardian = playerGuardian[playerName1]!
                
                let personalizedLetter = ("Dear \(Guardian), I'm pleased to share that \(playerName) has been selected onto Team \(teamName0)! The \(teamName0) will have their first practice on \(practiceTime0). Sincerely, Coach")
                
                var letter = [String:String] ()
                letter[playerName1] = personalizedLetter
                
                for (_, personalLetter) in letter {
                    print(personalLetter)
                }
            } else {
            }
        }
    }
}

// Function to writeLetter to the guardian's of teamRaptor
writeLetter(theTeamName: teamRaptors)




// Created function that compares playerName in teamName dictionary to playerName1 in playerGuardian dictionary so as to only write letters to players on SHARKS


var teamName1 = "Sharks"
var practiceTime1 = "March 17, 3pm"

func writeLetter1(theTeamName: Dictionary<String, Bool>) {
    for (playerName, _) in theTeamName {
        for (playerName1, _) in playerGuardian {
            if (playerName == playerName1) {
                let Guardian = playerGuardian[playerName1]!
                
                
                let personalizedLetter = ("Dear \(Guardian), I'm pleased to share that \(playerName) has been selected onto Team \(teamName1)! The \(teamName1) will have their first practice on \(practiceTime1). Sincerely, Coach")
                
                var letter = [String:String] ()
                letter[playerName1] = personalizedLetter
                
                for (_, personalLetter) in letter {
                    print(personalLetter)
                }
            } else {
            }
        }
    }
}

// Function to writeLetter to the guardian's of teamSharks
writeLetter1(theTeamName: teamSharks)




//Created function that compares playerName in teamName dictionary to playerName1 in playerGuardian dictionary so as to only write letters to players on DRAGONS

var teamName2 = "Dragons"
var practiceTime2 = "March 17, 1pm"

func writeLetter2(theTeamName: Dictionary<String, Bool>) {
    for (playerName, _) in theTeamName {
        for (playerName1, _) in playerGuardian {
            if (playerName == playerName1) {
                let Guardian = playerGuardian[playerName1]!
                
                
                let personalizedLetter = ("Dear \(Guardian), I'm pleased to share that \(playerName) has been selected onto Team \(teamName2)! The \(teamName2) will have their first practice on \(practiceTime2). Sincerely, Coach")
                
                var letter = [String:String] ()
                letter[playerName1] = personalizedLetter
                
                for (_, personalLetter) in letter {
                    print(personalLetter)
                }
            } else {
            }
        }
    }
}

// Function to writeLetter to the guardian's of teamDragons
writeLetter2(theTeamName: teamDragons)


//Final check to confirm all teams have same amount of players

teamRaptors.count
teamDragons.count
teamSharks.count



/*
 
 ************
 EXTRA COMMENTS: When creating the personalized letters I tried about 3 different systematic methods to prevent repetitive coding, but in the end I was unsuccessful. I attempted ann if, else if, else but couldn't figure it out. I attempted a switch iteration but couldn't figure it out, and attempted a few other random things that didn't work. I'm sure there is an easy solution to this, but at this point, I probably have spent over four hours on the letter alone, so I figured it was time to move on and retroactively figure out what I did wrong.
 
 */
