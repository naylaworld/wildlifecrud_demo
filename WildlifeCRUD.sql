USE [wildlife2]

/*
DROP TABLE [animals]
DROP TABLE [diets]
DROP TABLE [habitats]
DROP TABLE [speciess]
DROP TABLE [statuss]
*/

CREATE TABLE [animals]
(
	[animal_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[species_id] [int] NOT NULL,
	[date_of_birth] [date] NULL,
	[habitat_id] [int] NOT NULL,
	[diet_id] [int] NOT NULL,
	[status_id] [int] NOT NULL,
	[arrival_date] [date] NULL,
	PRIMARY KEY CLUSTERED
	(
		[animal_id] ASC
	)
)

CREATE TABLE [speciess]
(
	[species_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[description] [nvarchar](255) NULL,
	PRIMARY KEY CLUSTERED
	(
		[species_id] ASC
	)
)

CREATE TABLE [habitats]
(
	[habitat_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[description] [nvarchar](255) NULL,
	PRIMARY KEY CLUSTERED
	(
		[habitat_id] ASC
	)
)

CREATE TABLE [diets]
(
	[diet_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[description] [nvarchar](255) NULL,
	PRIMARY KEY CLUSTERED
	(
		[diet_id] ASC
	)
)

CREATE TABLE [statuss]
(
	[status_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[description] [nvarchar](255) NULL,
	PRIMARY KEY CLUSTERED
	(
		[status_id] ASC
	)
)

INSERT INTO [speciess]([name], [description]) VALUES
('Antelope', 'A graceful, fast-moving animal with long legs and horns, found mostly in Africa and Asia.'),
('Basset Hound', 'A dog breed with long ears and short legs, known for its excellent sense of smell.'),
('Beagle', 'A small, friendly dog breed, often used for hunting because of its strong sense of smell.'),
('Bear', 'A large, strong mammal with thick fur, known for its powerful build and variety of diets.'),
('Bearded Dragon', 'A type of lizard with a "beard" of spikes under its chin, popular as a pet.'),
('Bengal Cat', 'A domestic cat breed with a spotted or marbled coat that resembles a wild cat.'),
('Bengal Tiger', 'A large, wild cat with an orange coat and black stripes, native to India.'),
('Betta', 'A small, colorful fish known for its long, flowing fins, often kept in aquariums.'),
('Bichon Frise', 'A small dog with a fluffy white coat, known for being friendly and playful.'),
('Bison', 'A large, shaggy-haired mammal found in North America, known for its hump and large head.'),
('Blue Jay', 'A blue-feathered bird with a distinctive crest on its head, found in North America.'),
('Bunny', 'A small mammal with long ears, also known as a rabbit.'),
('Chameleon', 'A lizard known for changing colors and having eyes that can move in different directions.'),
('Cheetah', 'The fastest land animal, known for its slender body and distinctive spots.'),
('Chinchilla', 'A small, furry rodent from South America, often kept as a pet.'),
('Chipmunk', 'A small, striped rodent that gathers food in its cheek pouches.'),
('Clownfish', 'A small, orange-and-white striped fish, often found in coral reefs.'),
('Cockatoo', 'A type of parrot with a prominent crest on its head, known for being intelligent and social.'),
('Corgi', 'A small dog breed with a long body and short legs, known for its friendly personality.'),
('Coyote', 'A wild canine found in North America, similar to a wolf but smaller.'),
('Dachshund', 'A small dog with a long body and short legs, often called a "sausage dog."'),
('Deer', 'A graceful animal with slender legs and antlers, found in forests and meadows.'),
('Dingo', 'A wild dog found in Australia, known for its tan color and pointed ears.'),
('Dolphin', 'A smart, playful marine mammal with a streamlined body and a friendly nature.'),
('Eagle', 'A large bird of prey with powerful talons and excellent eyesight.'),
('Elephant', 'The largest land animal, known for its trunk, large ears, and tusks.'),
('Falcon', 'A bird of prey known for its speed and hunting skills.'),
('Ferret', 'A small, playful animal related to weasels, often kept as a pet.'),
('Flamingo', 'A tall, pink bird with long legs and a curved beak, found near water.'),
('Frog', 'A small amphibian with smooth skin and long legs for jumping.'),
('Gerbil', 'A small rodent with a long tail, often kept as a pet.'),
('Giraffe', 'The tallest land animal, known for its long neck and legs.'),
('Goldfish', 'A small, orange fish often kept in aquariums as a pet.'),
('Goose', 'A large bird with a long neck, known for honking sounds and migrating in flocks.'),
('Guinea Pig', 'A small, furry rodent often kept as a pet, known for its social nature.'),
('Hawk', 'A bird of prey with sharp vision, often seen soaring in the sky.'),
('Hedgehog', 'A small mammal with spiky quills on its back, known for rolling into a ball.'),
('Horse', 'A large, strong animal used for riding, racing, and work.'),
('Jellyfish', 'A soft, bell-shaped sea creature with long, stinging tentacles.'),
('Kangaroo', 'A hopping animal from Australia with a pouch for carrying its young.'),
('Koala', 'A tree-dwelling animal from Australia that eats eucalyptus leaves.'),
('Lion', 'A large, powerful cat known as the "king of the jungle," found in Africa and Asia.'),
('Lynx', 'A wild cat with tufted ears and a short tail, found in forests.'),
('Macaw', 'A large, colorful parrot with a long tail, native to Central and South America.'),
('Marmot', 'A large rodent that lives in burrows, known for its loud whistling.'),
('Mongoose', 'A small, agile animal known for hunting snakes and living in warm climates.'),
('Monkey', 'A playful, intelligent animal with a long tail, found in trees or on the ground.'),
('Mountain Goat', 'A goat with thick white fur, known for climbing steep mountains.'),
('Ocelot', 'A wild cat with a beautiful spotted coat, native to South and Central America.'),
('Ostrich', 'The largest bird in the world, known for its long neck and powerful legs.'),
('Otter', 'A playful, aquatic mammal known for using tools to open shells and stones.'),
('Panda', 'A large, black-and-white bear known for its diet of bamboo and gentle nature.'),
('Pelican', 'A large bird with a long bill and a throat pouch, often seen diving for fish.'),
('Penguin', 'A flightless bird with a black-and-white body, known for its waddling walk.'),
('Persian Cat', 'A domestic cat breed with a long, fluffy coat and a distinctive, flat face.'),
('Pika', 'A small, mountain-dwelling animal related to rabbits, known for its high-pitched call.'),
('Poodle', 'An intelligent dog breed with curly fur, known for its distinctive grooming style.'),
('Porcupine', 'A rodent with sharp quills on its back used for defense.'),
('Puffin', 'A seabird with a colorful beak, known for its diving skills.'),
('Puma', 'A large wild cat also known as a cougar or mountain lion.'),
('Raccoon', 'A small mammal with a black "mask" across its face, known for scavenging.'),
('Red Fox', 'A common fox with a reddish-brown coat, known for its cunning behavior.'),
('Rhinoceros', 'A large, heavy animal with one or two horns on its nose, found in Africa and Asia.'),
('Rottweiler', 'A strong, protective dog breed often used in guard and police work.'),
('Salmon', 'A fish known for its long migration journey to spawn.'),
('Seagull', 'A seabird with a loud call, commonly seen near oceans and lakes.'),
('Seal', 'A marine mammal with flippers, known for its playful nature in the water.'),
('Shih Tzu', 'A small dog breed with a long, luxurious coat, known for being affectionate.'),
('Siamese Cat', 'A domestic cat breed with a sleek body and distinctive color points.'),
('Sparrow', 'A small, brown and gray bird commonly found in cities and towns.'),
('Squirrel', 'A small rodent with a bushy tail, known for collecting and storing nuts.'),
('Swan', 'A large, elegant waterbird with a long neck and white feathers.'),
('Tiger', 'A large wild cat with an orange coat and black stripes, found in Asia.'),
('Tortoise', 'A slow-moving reptile with a hard shell, known for its long lifespan.'),
('Whale', 'A massive marine mammal known for its size and intelligence.'),
('Wolf', 'A large wild canine, known for its pack behavior and hunting skills.'),
('Wombat', 'A burrowing marsupial from Australia with a sturdy build.'),
('Zebra', 'A wild horse-like animal with distinctive black-and-white stripes.');

INSERT INTO [habitats]([name], [description]) VALUES
('Aquarium', 'An artificial habitat for aquatic animals, often glass-enclosed.'),
('Bamboo Forest', 'A dense forest primarily made up of tall bamboo plants.'),
('Bushland', 'A natural area with scattered shrubs and small trees.'),
('Coastal', 'A habitat located near or on the seashore, rich in marine and bird life.'),
('Coral Reef', 'An underwater habitat formed by coral structures, home to diverse marine life.'),
('Desert', 'A dry, barren habitat with extreme temperatures and minimal rainfall.'),
('Domestic', 'A habitat within human dwellings, suited for pets and livestock.'),
('Eucalyptus Forest', 'A forest mainly composed of eucalyptus trees, often found in Australia.'),
('Farm', 'A managed area where animals are raised and crops are cultivated.'),
('Forest', 'A large area filled with trees and undergrowth, rich in biodiversity.'),
('Garden', 'A man-made habitat designed for plants, sometimes attracting small animals.'),
('Grassland', 'An open, grassy habitat, often with few trees, home to grazing animals.'),
('Mountain', 'A high-altitude habitat with rugged terrain and diverse temperatures.'),
('Ocean', 'A vast saltwater habitat that covers most of the Earth’s surface, home to marine life.'),
('Rainforest', 'A dense, tropical forest with high rainfall and abundant biodiversity.'),
('River', 'A freshwater habitat where animals thrive along its banks and in its waters.'),
('Savanna', 'A grassy plain with scattered trees, typical of tropical and subtropical regions.'),
('Urban', 'A human-made habitat within cities and towns, adapted for urban wildlife.'),
('Wetlands', 'A water-saturated habitat, such as marshes and swamps, supporting diverse species.');

INSERT INTO [diets]([name], [description]) VALUES
('Carnivore', 'An animal that primarily eats meat.'),
('Herbivore', 'An animal that primarily eats plants.'),
('Insectivore', 'An animal that primarily eats insects.'),
('Omnivore', 'An animal that eats both plants and meat.');

INSERT INTO [statuss]([name], [description]) VALUES
('Healthy', 'The animal is in good health and free from disease or injury.'),
('Injured', 'The animal has sustained an injury and may require medical attention.'),
('Sick', 'The animal is unwell, possibly suffering from a disease.'),
('Endangered', 'The animal is at risk of extinction in the wild due to habitat loss, hunting, or other factors.'),
('Threatened', 'The animal''s population is declining and may become endangered if threats are not mitigated.'),
('Rescued', 'The animal has been rescued from a dangerous situation (e.g., illegal wildlife trade, habitat destruction).'),
('In Rehabilitation', 'The animal is being cared for and treated, usually with the aim of reintroducing it to the wild.'),
('Deceased', 'The animal is no longer alive, typically used in records to indicate mortality.'),
('Translocated', 'The animal has been moved from one location to another, often for conservation purposes.'),
('Wild', 'The animal is living in its natural habitat without human intervention.'),
('Captive', 'The animal is kept in a controlled environment, such as a zoo or sanctuary.');

INSERT INTO [animals]([name],[species_id],[date_of_birth],[habitat_id],[diet_id],[status_id],[arrival_date]) VALUES
('Leo', 42, '2018-08-10', 17, 1, 1, '2020-06-15'),
('Dumbo', 26, '2015-02-22', 12, 2, 1, '2019-04-10'),
('Zara', 78, '2018-11-12', 17, 2, 1, '2018-12-01'),
('Gerry', 32, '2014-01-28', 17, 2, 1, '2014-02-15'),
('Coco', 14, '2016-07-07', 12, 1, 1, '2016-07-20'),
('Nala', 42, '2017-09-18', 17, 1, 1, '2017-10-01'),
('Dumbo', 26, '2012-05-11', 10, 2, 1, '2012-06-01'),
('Stripes', 73, '2013-04-02', 15, 1, 1, '2013-05-01'),
('Bongo', 1, '2019-10-30', 12, 2, 1, '2019-11-15'),
('Flora', 29, '2015-12-25', 19, 4, 1, '2015-12-30'),
('Max', 47, '2020-02-14', 15, 4, 1, '2020-03-01'),
('Leila', 52, '2016-03-29', 2, 2, 1, '2016-04-15'),
('Rocky', 63, '2014-08-05', 17, 2, 1, '2014-09-01'),
('Fluffy', 41, '2018-01-22', 8, 2, 1, '2018-02-10'),
('Trixie', 73, '2017-05-15', 15, 1, 1, '2017-06-01'),
('Daisy', 22, '2019-07-18', 10, 2, 1, '2019-08-01'),
('Spike', 58, '2015-11-11', 10, 2, 1, '2015-12-01'),
('Jumbo', 26, '2011-02-20', 17, 2, 1, '2011-03-05'),
('Benny', 4, '2016-09-30', 10, 4, 1, '2016-10-15'),
('Sparky', 70, '2020-06-18', 19, 4, 1, '2020-07-01'),
('Penny', 54, '2019-03-17', 4, 1, 1, '2019-04-01'),
('Poppy', 60, '2018-04-25', 13, 1, 1, '2018-05-01'),
('Sunny', 67, '2015-12-12', 4, 1, 1, '2015-12-20'),
('Bubbles', 24, '2014-07-07', 14, 1, 1, '2014-08-01'),
('Goldie', 33, '2022-01-01', 1, 4, 1, '2022-01-15'),
('Rusty', 62, '2016-05-22', 10, 4, 1, '2016-06-01'),
('Luna', 76, '2017-02-02', 10, 1, 1, '2017-03-01'),
('Holly', 51, '2019-11-11', 19, 1, 1, '2019-12-01'),
('Chip', 16, '2018-08-08', 10, 2, 1, '2018-09-01'),
('Ziggy', 78, '2015-06-10', 17, 2, 1, '2015-07-01'),
('Clyde', 20, '2017-12-05', 6, 1, 1, '2017-12-20'),
('Sammy', 65, '2020-03-15', 16, 1, 1, '2020-04-01'),
('Fiona', 30, '2016-09-21', 19, 1, 1, '2016-10-01'),
('Rusty', 61, '2018-02-16', 18, 4, 1, '2018-03-01'),
('Milo', 45, '2015-04-10', 13, 2, 1, '2015-05-01'),
('Gizmo', 35, '2019-10-31', 7, 2, 1, '2019-11-15'),
('Spike', 37, '2020-01-12', 11, 3, 1, '2020-01-25'),
('Ollie', 50, '2017-05-19', 17, 2, 1, '2017-06-01'),
('Buddy', 3, '2015-03-22', 7, 1, 1, '2015-04-10'),
('Coco', 18, '2016-11-30', 15, 2, 1, '2016-12-10'),
('Lola', 43, '2018-01-08', 10, 1, 1, '2018-01-20'),
('Gigi', 32, '2019-08-05', 17, 2, 1, '2019-09-01'),
('Winnie', 77, '2016-04-18', 3, 2, 1, '2016-05-01'),
('Teddy', 74, '2013-07-11', 6, 2, 1, '2013-08-01'),
('Puff', 59, '2017-03-25', 4, 1, 1, '2017-04-01'),
('Fluffy', 28, '2016-05-29', 7, 1, 1, '2016-06-10'),
('Zena', 78, '2018-06-17', 17, 2, 1, '2018-07-01'),
('Bubbles', 8, '2019-12-30', 1, 4, 1, '2020-01-15'),
('Kiki', 40, '2015-02-22', 3, 2, 1, '2015-03-01'),
('Penny', 53, '2014-09-15', 19, 1, 1, '2014-10-01'),
('Cleo', 14, '2012-04-29', 17, 1, 1, '2012-05-15'),
('Bella', 10, '2018-11-30', 12, 2, 1, '2018-12-15'),
('Charlie', 24, '2015-01-10', 14, 1, 1, '2015-01-20'),
('Sam', 44, '2016-07-15', 15, 2, 1, '2016-08-01'),
('Juno', 39, '2020-02-18', 14, 1, 1, '2020-03-01'),
('Minnie', 46, '2019-10-11', 17, 1, 1, '2019-11-01'),
('Nemo', 17, '2020-05-05', 5, 1, 1, '2020-06-01'),
('Hugo', 60, '2018-09-19', 4, 1, 1, '2018-10-01'),
('Lulu', 35, '2016-03-29', 2, 2, 1, '2016-04-10'),
('Daisy', 71, '2013-12-01', 13, 2, 1, '2014-01-01'),
('Lucky', 23, '2020-06-14', 10, 1, 1, '2020-07-01'),
('Max', 47, '2014-01-01', 15, 4, 1, '2014-01-15'),
('Sunny', 10, '2018-06-30', 19, 1, 1, '2018-07-15'),
('Rocky', 59, '2019-02-22', 15, 2, 1, '2019-03-01'),
('Willow', 25, '2017-08-18', 10, 2, 1, '2017-09-01'),
('Amber', 38, '2020-01-10', 19, 4, 1, '2020-01-20'),
('Leo', 34, '2019-03-19', 17, 1, 1, '2019-04-01'),
('Milo', 49, '2015-07-11', 2, 2, 1, '2015-08-01'),
('Benny', 45, '2017-02-25', 13, 1, 1, '2017-03-01'),
('Kiki', 66, '2018-10-31', 10, 4, 1, '2018-11-15'),
('Daisy', 74, '2014-09-18', 15, 2, 1, '2014-10-01'),
('Chloe', 26, '2015-05-14', 17, 1, 1, '2015-05-30'),
('Charlie', 12, '2020-04-20', 4, 1, 1, '2020-05-01'),
('Buddy', 54, '2016-03-30', 19, 1, 1, '2016-04-15'),
('Lola', 36, '2019-05-28', 2, 2, 1, '2019-06-01'),
('Ollie', 63, '2014-06-02', 4, 1, 1, '2014-06-15'),
('Zara', 18, '2018-10-11', 1, 4, 1, '2018-10-25'),
('Sandy', 51, '2015-11-21', 19, 2, 1, '2015-12-01'),
('Mia', 35, '2019-03-22', 12, 1, 1, '2019-04-01'),
('Pip', 44, '2016-08-02', 3, 1, 1, '2016-08-20'),
('Finn', 20, '2019-01-15', 5, 3, 1, '2019-02-01'),
('Toby', 48, '2015-05-25', 17, 1, 1, '2015-06-10'),
('Daisy', 11, '2016-04-14', 4, 1, 1, '2016-05-01'),
('Coco', 64, '2018-02-03', 19, 2, 1, '2018-02-15'),
('Nemo', 33, '2013-12-29', 15, 2, 1, '2014-01-15'),
('Lucky', 74, '2016-10-12', 6, 1, 1, '2016-11-01'),
('Rocky', 22, '2019-04-01', 12, 1, 1, '2019-04-15'),
('Chester', 19, '2015-09-15', 14, 2, 1, '2015-10-01'),
('Bella', 5, '2017-03-08', 17, 1, 1, '2017-03-20'),
('Jasper', 70, '2014-08-28', 15, 2, 1, '2014-09-10'),
('Ziggy', 27, '2018-11-22', 12, 1, 1, '2018-12-01'),
('Teddy', 75, '2013-07-10', 10, 4, 1, '2013-08-01'),
('Milo', 52, '2016-01-30', 4, 1, 1, '2016-02-15'),
('Max', 21, '2015-11-11', 19, 1, 1, '2015-12-01'),
('Penny', 29, '2019-10-05', 6, 2, 1, '2019-10-20'),
('Luna', 44, '2018-03-25', 17, 2, 1, '2018-04-01'),
('Fiona', 39, '2016-12-16', 15, 1, 1, '2016-12-30'),
('Zara', 50, '2017-05-15', 2, 2, 1, '2017-06-01'),
('Chloe', 35, '2014-09-29', 12, 1, 1, '2014-10-15'),
('Hugo', 22, '2020-02-08', 14, 1, 1, '2020-03-01');
