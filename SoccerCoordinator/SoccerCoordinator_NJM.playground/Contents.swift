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

// creating empty dictionary to store all playernames with new team name

var playerWithTeamName = [String: String] ()

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
            playerWithTeamName[playerName] = "Raptors"
        } else {
            teamRaptorsNewbies[playerName] = playerExperience
            teamRaptors[playerName] = playerExperience
            playerWithTeamName[playerName] = "Raptors"
        }
    }
    else if
        (teamDragonsExperienced.count < experiencedPlayersPerTeam && playerExperience == true) || (teamDragonsNewbies.count < inexperiencedPlayersPerTeam && playerExperience == false) {
        
        if playerExperience == true {
            teamDragonsExperienced[playerName] = playerExperience
            teamDragons[playerName] = playerExperience
             playerWithTeamName[playerName] = "Dragons"
        } else {
            teamDragonsNewbies[playerName] = playerExperience
            teamDragons[playerName] = playerExperience
            playerWithTeamName[playerName] = "Dragons"
        }
    }
    else if (teamSharksExperienced.count < experiencedPlayersPerTeam && playerExperience == true) || (teamSharksNewbies.count < inexperiencedPlayersPerTeam && playerExperience == false) {
        
        if playerExperience == true {
            teamSharksExperienced[playerName] = playerExperience
            teamSharks[playerName] = playerExperience
            playerWithTeamName[playerName] = "Sharks"
        } else {
            teamSharksNewbies[playerName] = playerExperience
            teamSharks[playerName] = playerExperience
            playerWithTeamName[playerName] = "Sharks"
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



// Matched two seperate dictionaries with player-teamName and player-Guardian to write personalized letter to guardian

var practiceDate = ""
var letters = [String: String] ()
var letterContents = ""

for (playerName, guardian) in playerGuardian {
    for (playerName1, teamName) in playerWithTeamName {
        if (playerName == playerName1) {
            
            if teamName == "Raptors" {
                practiceDate = "March 18, at 1pm"
            } else if teamName == "Dragons" {
                practiceDate = "March 17, at 1pm"
            } else if teamName == "Sharks" {
                practiceDate = "March 17, at 3pm"
            }
            
            letterContents = "Dear \(guardian), I'm pleased to tell you that \(playerName) has been selected onto team \(teamName)! The team's first practice is on \(practiceDate). Sincerely, League Coordinator (aka BOMB DIGGITY)."
            print(letterContents)
            letters[playerName] = letterContents
            
        }}}








