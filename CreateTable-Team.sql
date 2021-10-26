use [BSLDB]
CREATE TABLE Team(
TeamName varchar(100) Primary Key,
NumberOfPlayers int,
YearFounded int,
CoachId int Foreign key references Coach(CoachId)
)