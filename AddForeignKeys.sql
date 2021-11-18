/* Create foreign key relationships 
	Run this after creating all of the tables 
*/

use [BSLDB]
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

