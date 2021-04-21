INSERT INTO patriots (team_name, nickname, hometown, team_owner)
VALUES ('Patriots', 'Pats', 'Boston', 'Robert Kraft');

INSERT INTO opponent (op_name, nickname, hometown, team_owner)
VALUES 
('Texans', NULL, 'Houston', 'Bob McNair'),
('Jaguars', 'Jags', 'Jacksonville', 'Shahid Khan'),
('Lions', 'Silver Crush', 'Detroit', 'Martha Ford'),
('Dolphins', 'The Phins', 'Miami', 'Stephen Ross'),
('Colts', 'Dolts', 'Indianapolis', 'Jim Irsay'),
('Chiefs', NULL, 'Kansas City', 'The Hunt family'),
('Bears', 'Monsters of the Midway', 'Chicago', 'Virginia Halas McCaskey'),
('Packers', 'The Green and Gold', 'Green Bay', 'Green Bay Packers, Inc.'),
('Titans', NULL, 'Tennessee', 'Amy Adams Strunk'),
('Jets', 'Gang Green', 'New York', 'Woody and Christopher Johnson'),
('Vikings', 'The Vikes', 'Minnesota', 'Zygi Wilf'),
('Steelers', 'Blitzburgh', 'Pittsburgh', 'The Rooney Family'),
('Bills', 'Bisons', 'Buffalo', 'Terry and Kim Pegula'),
('Chargers', 'Slayer', 'Los Angeles', 'Alex Spanos'),
('Rams', 'RUN DMC', 'Los Angeles', 'Stan Kroenke');

INSERT INTO games (game_date, winner, stadium, patriots_game, pats_score, op_score, game_location, op_team)
VALUES ("Sept 9", "Patriots", "Gillette Stadium", "Patriots", 27, 20, "Foxborough", "Texans"), 
("Sept 16", "Jaguars", "TIAA Bank Field", "Patriots", 20, 31, "Jacksonville", "Jaguars"), 
("Sept 23", "Lions", "Ford Field", "Patriots", 10, 26, "Detroit", "Lions"),
("Sept 30", "Patriots", "Gillette Stadium", "Patriots", 38, 7, "Foxborough", "Dolphins"),
("Oct 4", "Patriots", "Gillette Stadium", "Patriots", 38, 24, "Foxborough", "Colts"),
("Oct 14", "Patriots", "Gillette Stadium", "Patriots", 43, 40, "Foxborough", "Chiefs"),
("Oct 21", "Patriots", "Soldier Field", "Patriots", 38, 31, "Chicago", "Bears"),
("Oct 29", "Patriots", "New Era Field", "Patriots", 25, 6, "Orchard Park", "Bills"),
("Nov 4", "Patriots", "Gillette Stadium", "Patriots", 31, 17, "Foxborough", "Packers"),
("Nov 11", "Titans", "Nissan Stadium", "Patriots", 10, 34, "Foxborough", "Titans"),
("Nov 25", "Patriots", "MetLife Stadium", "Patriots", 27, 13, "East Rutherford, New Jersey", "Jets"),
("Dec 2", "Patriots", "Gillette Stadium", "Patriots", 24, 10, "Foxborough", "Vikings"),
("Dec 9", "Dolphins", "Hard Rock Stadium", "Patriots", 33, 34, "Miami", "Dolphins"),
("Dec 16", "Steelers", "Heinz Field", "Patriots", 10, 17, "Pittsburgh", "Steelers"),
("Dec 23", "Patriots", "Gillette Stadium", "Patriots", 24, 12, "Foxborough", "Bills"),
("Dec 30", "Patriots", "Gillette Stadium", "Patriots", 38, 3, "Foxborough", "Jets"),
("Jan 13", "Patriots", "Gillette Stadium", "Patriots", 41, 28, "Foxborough", "Chargers"),
("Jan 20", "Patriots", "Arrowhead Stadium", "Patriots", 37, 31, "Kansas City", "Chiefs"),
("Feb 3", "Patriots", "Mercedes-Benz Stadium", "Patriots", 13, 3, "Atlanta, Georgia", "Rams");

SELECT patriots_game, op_team, abs(pats_score - op_score) AS 'score difference' 
FROM games;

SELECT games.patriots_game, opponent.op_name, games.stadium, opponent.nickname, opponent.hometown, opponent.team_owner
FROM games 
INNER JOIN opponent ON games.winner=opponent.op_name
WHERE pats_score - op_score < 0;

SELECT game_date, op_team, CONCAT(pats_score, '-', op_score) score 
FROM games 
WHERE pats_score - op_score > 0 AND game_location = 'Foxborough';

SELECT * 
FROM games 
WHERE pats_score - op_score < -7;
