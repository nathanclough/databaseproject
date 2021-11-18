
/* Create the base tables*/

create table Bio(
    id int primary key,
    height int,
    weight int,
    age int)

Create Table Coach (
	CoachId int PRIMARY KEY,
	CoachName varchar(100),
	StartYear int,
	)

Create Table Shot (
	PointsScored int,
	)

Create Table Game (
	GameId int PRIMARY KEY,
	Stadium varchar(100),
	Gamedate Date,
	HomeScore int,
	AwayScore int,
	)

Create Table Player (
	PlayerID int PRIMARY KEY,
	PlayerName varchar(100),
	StartYear int,
	Positions varchar(50),
	IsTeamCaptain bit,
	PlayerNumber int,
	BioId int,  
	)

Create Table Referee (
	RefereeId int PRIMARY KEY,
	RefereeName varchar(100),
	)

Create Table Shot (
	PointsScored int,
	)

CREATE TABLE Team(
    TeamName varchar(100) Primary Key,
    NumberOfPlayers int,
    YearFounded int,
    CoachId int Foreign key references Coach(CoachId)
)

/* Add foreign keys to the tables */
alter table dbo.coach 
Add TeamName varchar(100) Foreign key References dbo.team(TeamName)

alter table dbo.Player add foreign key (BioId) references dbo.bio(id)

alter table dbo.player add Team varchar(100) foreign key references 
dbo.team(TeamName)

alter table dbo.game add AwayTeam varchar(100) foreign key 
references dbo.team(TeamName)

alter table dbo.game add HomeTeam varchar(100) foreign key 
references dbo.team(TeamName)

alter table dbo.game add RefereeId int foreign key 
references dbo.referee(RefereeId)

alter table dbo.shot add GameId int foreign key references dbo.game(gameid)
alter table dbo.shot add PlayerId int foreign key references dbo.player(PlayerId)

