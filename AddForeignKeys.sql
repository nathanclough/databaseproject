/* Create foreign key relationships 
	Run this after creating all of the tables 
*/

use [BSLDB]
alter table dbo.coach 
Add TeamName varchar(100) Foreign key References dbo.team(TeamName)


