-- drop table birds_food;
-- drop table birds_nests;
-- drop table birds_migration;
-- drop table migration;
-- drop table nests;
-- drop table food;
-- drop table photos;
-- drop table locations;
-- drop table nicknames;
-- drop table birds;

create table if not exists birds
(
    bird_id      integer          not null primary key,
    bird_name    varchar(30)      not null unique,
    height       double precision not null,
    weight       double precision not null,
    wingspan     double precision null,
    eggs         integer          not null,
    broods       integer          null,
    incubation   integer          not null,
    fledging     integer          not null,
    nest_builder char(1)          not null
);
create table if not exists nicknames
(
    bird_id  integer     not null,
    nickname varchar(30) not null,
    constraint nicknames_pk primary key (bird_id, nickname),
    constraint nicknames_bird_id_fk foreign key (bird_id) references birds (bird_id)
);
create table if not exists locations
(
    location_id   integer     not null primary key,
    location_name varchar(30) not null unique
);
create table if not exists photos
(
    photo_id          integer     not null primary key,
    photo_file        varchar(30) not null unique,
    photo_date        date        not null,
    photo_location_id integer     not null,
    bird_id           integer     not null,
    constraint photos_bird_id foreign key (bird_id) references birds (bird_id),
    constraint photos_locatino_id foreign key (photo_location_id) references locations
        (location_id)
);
create table if not exists food
(
    food_id   integer     not null primary key,
    food_name varchar(30) not null unique
);
create table if not exists birds_food
(
    bird_id integer not null,
    food_id integer not null,
    constraint birds_food_pk primary key (bird_id, food_id),
    constraint birds_food_bird_fk foreign key (bird_id) references birds (bird_id),
    constraint birds_food_food_fk foreign key (food_id) references food (food_id)
);
create table if not exists nests
(
    nest_id   integer     not null primary key,
    nest_name varchar(20) not null unique
);
create table if not exists birds_nests
(
    bird_id integer not null primary key,
    nest_id integer not null,
    constraint birds_nests_bird_fk foreign key (bird_id) references birds (bird_id),
    constraint birds_nests_nest_fk foreign key (nest_id) references nests (nest_id)
);
create table if not exists migration
(
    migration_id       integer     not null primary key,
    migration_location varchar(30) not null unique
);
create table if not exists birds_migration
(
    bird_id      integer not null,
    migration_id integer not null,
    constraint birds_migration_pk primary key (bird_id, migration_id),
    constraint birds_migration_bird_fk foreign key (bird_id) references birds (bird_id),
    constraint birds_migration_migration_fk foreign key (migration_id) references migration
        (migration_id)
);
create table if not exists predators
(
    pred_id  integer     not null primary key,
    predator varchar(30) not null
);
create table if not exists birds_predators
(
    bird_id integer not null,
    pred_id integer not null,
    constraint bp_pk primary key (bird_id, pred_id),
    constraint bp_fk1 foreign key (bird_id) references birds (bird_id),
    constraint bp_fk2 foreign key (pred_id) references predators (pred_id)
);
create table if not exists photo_styles
(
    style_id integer     not null primary key,
    style    varchar(30) not null
);
create table if not exists photo_levels
(
    level_id    integer     not null primary key,
    photo_level varchar(30) not null
);
create table if not exists cameras
(
    camera_id integer     not null primary key,
    camera    varchar(30) not null
);
create table if not exists photographers
(
    photographer_id        integer     not null primary key,
    photographer           varchar(30) not null,
    mentor_photographer_id integer     null,
    level_id               integer     not null,
    constraint p_fk1 foreign key (mentor_photographer_id) references photographers
        (photographer_id),
    constraint p_fk2 foreign key (level_id) references photo_levels (level_id)
);
create table if not exists favorite_birds
(
    photographer_id integer not null,
    bird_id         integer not null,
    constraint fb_pk primary key (photographer_id, bird_id),
    constraint fb_fk1 foreign key (photographer_id) references photographers (photographer_id),
    constraint fb_fk2 foreign key (bird_id) references birds (bird_id)
);
create table if not exists photographer_styles
(
    photographer_id integer not null,
    style_id        integer not null,
    constraint ps_pk primary key (photographer_id, style_id),
    constraint ps_fk1 foreign key (photographer_id) references photographers (photographer_id),
    constraint ps_fk2 foreign key (style_id) references photo_styles (style_id)
);
create table if not exists photographer_cameras
(
    photographer_id integer not null,
    camera_id       integer not null,
    constraint pc_pk primary key (photographer_id, camera_id),
    constraint pc_fk1 foreign key (photographer_id) references photographers (photographer_id),
    constraint pc_fk2 foreign key (camera_id) references cameras (camera_id)
);

-- truncate table birds_food;
-- truncate table birds_nests;
-- truncate table birds_migration;
-- truncate table migration;
-- truncate table nests;
-- truncate table food;
-- truncate table photos;
-- truncate table locations;
-- truncate table nicknames;
-- truncate table favorite_birds;
-- truncate table photographer_cameras;
-- truncate table photographer_styles;
-- truncate table photographers;
-- truncate table cameras;
-- truncate table photo_levels;
-- truncate table photo_styles;
-- truncate table birds_predators;
-- truncate table birds;
-- truncate table predators;
insert into food
values (1, 'Seeds');
insert into food
values (2, 'Birds');
insert into food
values (3, 'Fruit');
insert into food
values (4, 'Frogs');
insert into food
values (5, 'Fish');
insert into food
values (6, 'Berries');
insert into food
values (7, 'Aquatic Plants');
insert into food
values (8, 'Aquatic Insects');
insert into food
values (9, 'Worms');
insert into food
values (10, 'Nuts');
insert into food
values (11, 'Rodents');
insert into food
values (12, 'Snakes');
insert into food
values (13, 'Small Mammals');
insert into food
values (14, 'Nectar');
insert into food
values (15, 'Pollen');
insert into food
values (16, 'Carrion');
insert into food
values (17, 'Moths');
insert into food
values (18, 'Ducks');
insert into food
values (19, 'Insects');
insert into food
values (20, 'Plants');
insert into food
values (21, 'Corn');
insert into food
values (22, 'Crayfish');
insert into food
values (23, 'Crustaceans');
insert into food
values (24, 'Reptiles');
insert into food
values (25, 'Deer');
insert into locations
values (1, 'Heron Lake');
insert into locations
values (2, 'Loon Creek');
insert into locations
values (3, 'Eagle Creek');
insert into locations
values (4, 'White River');
insert into locations
values (5, 'Sarasota Bridge');
insert into locations
values (6, 'Fort Lauderdale Beach');
insert into migration
values (1, 'Southern United States');
insert into migration
values (2, 'Mexico');
insert into migration
values (3, 'Central America');
insert into migration
values (4, 'South America');
insert into migration
values (5, 'No Significant Migration');
insert into migration
values (6, 'Partial, Open Water');
insert into nests
values (1, 'Ground Nest');
insert into nests
values (2, 'Platform Nest');
insert into nests
values (3, 'Cup Nest');
insert into nests
values (4, 'Pendulous Nest');
insert into nests
values (5, 'Cavity Nest');
insert into nests
values (6, 'None/Minimal');
insert into nests
values (7, 'Floating Platform');
insert into birds (bird_id, bird_name, height, weight, wingspan, eggs, broods, incubation,
                   fledging, nest_builder)
values (1, 'Great Blue Heron', 52, 5.5, 78, 5, 1, 28, 60, 'B');
insert into birds (bird_id, bird_name, height, weight, wingspan, eggs, broods, incubation,
                   fledging, nest_builder)
values (2, 'Mallard', 28, 3.5, 3.2, 10, 1, 30, 52, 'F');
insert into birds (bird_id, bird_name, height, weight, wingspan, eggs, broods, incubation,
                   fledging, nest_builder)
values (3, 'Common Loon', 36, 18, 54, 2, 1, 31, 80, 'B');
insert into birds (bird_id, bird_name, height, weight, wingspan, eggs, broods, incubation,
                   fledging, nest_builder)
values (4, 'Bald Eagle', 37, 14, 84, 2, 1, 36, 90, 'B');
insert into birds (bird_id, bird_name, height, weight, wingspan, eggs, broods, incubation,
                   fledging, nest_builder)
values (5, 'Golden Eagle', 40, 15, 90, 3, 1, 45, 80, 'B');
insert into birds (bird_id, bird_name, height, weight, wingspan, eggs, broods, incubation,
                   fledging, nest_builder)
values (6, 'Red Tailed Hawk', 25, 2.4, 48, 3, 1, 35, 46, 'B');
insert into birds (bird_id, bird_name, height, weight, wingspan, eggs, broods, incubation,
                   fledging, nest_builder)
values (7, 'Osprey', 24, 3, 72, 4, 1, 42, 58, 'B');
insert into birds (bird_id, bird_name, height, weight, wingspan, eggs, broods, incubation,
                   fledging, nest_builder)
values (8, 'Belted Kingfisher', 13, 0.33, 23, 7, 1, 24, 24, 'B');
insert into birds (bird_id, bird_name, height, weight, wingspan, eggs, broods, incubation,
                   fledging, nest_builder)
values (9, 'Canadian Goose', 43, 14, 72, 10, 1, 30, 55, 'F');
insert into birds (bird_id, bird_name, height, weight, wingspan, eggs, broods, incubation,
                   fledging, nest_builder)
values (10, 'Pied-billed Grebe', 13, 1, 6.5, 7, 1, 24, 24, 'B');
insert into birds (bird_id, bird_name, height, weight, wingspan, eggs, broods, incubation,
                   fledging, nest_builder)
values (11, 'American Coot', 16, 1, 29, 12, 1, 25, 52, 'B');
insert into birds (bird_id, bird_name, height, weight, wingspan, eggs, broods, incubation,
                   fledging, nest_builder)
values (12, 'Common Sea Gull', 18, 1, 18, 3, 1, 28, 36, 'B');
insert into birds (bird_id, bird_name, height, weight, wingspan, eggs, broods, incubation,
                   fledging, nest_builder)
values (13, 'Ring-billed Gull', 19, 1.1, 50, 4, 1, 21, 40, 'B');
insert into birds (bird_id, bird_name, height, weight, wingspan, eggs, broods, incubation,
                   fledging, nest_builder)
values (14, 'Double-crested Cormorant', 33, 5.5, 54, 4, 1, 29, 42, 'B');
insert into birds (bird_id, bird_name, height, weight, wingspan, eggs, broods, incubation,
                   fledging, nest_builder)
values (15, 'Common Merganser', 27, 3.2, 34, 11, 1, 33, 80, 'F');
insert into birds (bird_id, bird_name, height, weight, wingspan, eggs, broods, incubation,
                   fledging, nest_builder)
values (16, 'Turkey Vulture', 32, 3.3, 72, 2, 1, 41, 88, 'N');
insert into birds (bird_id, bird_name, height, weight, wingspan, eggs, broods, incubation,
                   fledging, nest_builder)
values (17, 'American Crow', 18, 1.4, 39.6, 6, 1, 18, 35, 'F');
insert into birds (bird_id, bird_name, height, weight, wingspan, eggs, broods, incubation,
                   fledging, nest_builder)
values (18, 'Green Heron', 22, 0.4, 26.8, 4, 2, 25, 36, 'B');
insert into birds (bird_id, bird_name, height, weight, wingspan, eggs, broods, incubation,
                   fledging, nest_builder)
values (19, 'Mute Swan', 60, 26, 94.8, 8, 1, 40, 150, 'B');
insert into birds (bird_id, bird_name, height, weight, wingspan, eggs, broods, incubation,
                   fledging, nest_builder)
values (20, 'Brown Pelican', 54, 7.6, 90, 4, 1, 30, 77, 'F');
insert into birds (bird_id, bird_name, height, weight, wingspan, eggs, broods, incubation,
                   fledging, nest_builder)
values (21, 'Great Egret', 38, 3.3, 67.2, 3, 1, 26, 49, 'B');
insert into birds (bird_id, bird_name, height, weight, wingspan, eggs, broods, incubation,
                   fledging, nest_builder)
values (22, 'Anhinga', 35, 2.4, 42, 4, 1, 30, 42, 'B');
insert into birds (bird_id, bird_name, height, weight, wingspan, eggs, broods, incubation,
                   fledging, nest_builder)
values (23, 'Black Skimmer', 20, 1, 15, 5, 1, 25, 30, 'B');
insert into birds_food
values (1, 5);
insert into birds_food
values (1, 4);
insert into birds_food
values (1, 19);
insert into birds_food
values (1, 12);
insert into birds_food
values (2, 1);
insert into birds_food
values (2, 20);
insert into birds_food
values (2, 8);
insert into birds_food
values (2, 21);
insert into birds_food
values (3, 5);
insert into birds_food
values (3, 8);
insert into birds_food
values (4, 5);
insert into birds_food
values (4, 16);
insert into birds_food
values (4, 18);
insert into birds_food
values (5, 13);
insert into birds_food
values (5, 5);
insert into birds_food
values (5, 24);
insert into birds_food
values (5, 2);
insert into birds_food
values (5, 19);
insert into birds_food
values (5, 25);
insert into birds_food
values (6, 2);
insert into birds_food
values (6, 12);
insert into birds_food
values (6, 11);
insert into birds_food
values (6, 19);
insert into birds_food
values (7, 5);
insert into birds_food
values (8, 5);
insert into birds_food
values (9, 7);
insert into birds_food
values (9, 19);
insert into birds_food
values (9, 1);
insert into birds_food
values (10, 8);
insert into birds_food
values (11, 8);
insert into birds_food
values (11, 7);
insert into birds_food
values (12, 5);
insert into birds_food
values (12, 23);
insert into birds_food
values (12, 16);
insert into birds_food
values (13, 19);
insert into birds_food
values (13, 5);
insert into birds_food
values (13, 16);
insert into birds_food
values (14, 5);
insert into birds_food
values (14, 8);
insert into birds_food
values (15, 5);
insert into birds_food
values (15, 8);
insert into birds_food
values (16, 16);
insert into birds_food
values (17, 3);
insert into birds_food
values (17, 8);
insert into birds_food
values (17, 13);
insert into birds_food
values (17, 5);
insert into birds_food
values (17, 16);
insert into birds_food
values (17, 1);
insert into birds_food
values (18, 5);
insert into birds_food
values (18, 19);
insert into birds_food
values (18, 7);
insert into birds_food
values (19, 8);
insert into birds_food
values (19, 20);
insert into birds_food
values (20, 5);
insert into birds_food
values (20, 23);
insert into birds_food
values (21, 5);
insert into birds_food
values (21, 8);
insert into birds_food
values (21, 4);
insert into birds_food
values (21, 22);
insert into birds_food
values (22, 5);
insert into birds_food
values (22, 8);
insert into birds_food
values (23, 5);
insert into birds_food
values (23, 23);
insert into birds_food
values (23, 8);
insert into birds_migration
values (1, 1);
insert into birds_migration
values (1, 2);
insert into birds_migration
values (1, 3);
insert into birds_migration
values (1, 4);
insert into birds_migration
values (2, 1);
insert into birds_migration
values (3, 1);
insert into birds_migration
values (3, 2);
insert into birds_migration
values (3, 3);
insert into birds_migration
values (4, 1);
insert into birds_migration
values (5, 5);
insert into birds_migration
values (6, 1);
insert into birds_migration
values (7, 1);
insert into birds_migration
values (7, 2);
insert into birds_migration
values (7, 3);
insert into birds_migration
values (7, 4);
insert into birds_migration
values (8, 1);
insert into birds_migration
values (8, 2);
insert into birds_migration
values (8, 3);
insert into birds_migration
values (8, 4);
insert into birds_migration
values (9, 1);
insert into birds_migration
values (9, 5);
insert into birds_migration
values (10, 1);
insert into birds_migration
values (10, 2);
insert into birds_migration
values (10, 3);
insert into birds_migration
values (11, 1);
insert into birds_migration
values (11, 2);
insert into birds_migration
values (11, 3);
insert into birds_migration
values (12, 1);
insert into birds_migration
values (12, 2);
insert into birds_migration
values (12, 3);
insert into birds_migration
values (12, 4);
insert into birds_migration
values (13, 1);
insert into birds_migration
values (13, 2);
insert into birds_migration
values (14, 1);
insert into birds_migration
values (14, 2);
insert into birds_migration
values (14, 3);
insert into birds_migration
values (15, 1);
insert into birds_migration
values (15, 2);
insert into birds_migration
values (15, 3);
insert into birds_migration
values (16, 1);
insert into birds_migration
values (16, 2);
insert into birds_migration
values (16, 3);
insert into birds_migration
values (16, 4);
insert into birds_migration
values (17, 5);
insert into birds_migration
values (18, 1);
insert into birds_migration
values (18, 2);
insert into birds_migration
values (18, 3);
insert into birds_migration
values (18, 4);
insert into birds_migration
values (19, 6);
insert into birds_migration
values (20, 5);
insert into birds_migration
values (21, 1);
insert into birds_migration
values (21, 2);
insert into birds_migration
values (21, 3);
insert into birds_migration
values (22, 1);
insert into birds_migration
values (22, 2);
insert into birds_migration
values (23, 5);
insert into birds_nests
values (1, 2);
insert into birds_nests
values (2, 1);
insert into birds_nests
values (3, 2);
insert into birds_nests
values (4, 2);
insert into birds_nests
values (5, 2);
insert into birds_nests
values (6, 2);
insert into birds_nests
values (7, 2);
insert into birds_nests
values (8, 5);
insert into birds_nests
values (9, 1);
insert into birds_nests
values (10, 7);
insert into birds_nests
values (11, 3);
insert into birds_nests
values (12, 1);
insert into birds_nests
values (13, 1);
insert into birds_nests
values (14, 2);
insert into birds_nests
values (15, 5);
insert into birds_nests
values (16, 6);
insert into birds_nests
values (17, 2);
insert into birds_nests
values (18, 2);
insert into birds_nests
values (19, 1);
insert into birds_nests
values (20, 1);
insert into birds_nests
values (21, 2);
insert into birds_nests
values (22, 2);
insert into birds_nests
values (23, 1);
insert into nicknames
values (1, 'Big Cranky');
insert into nicknames
values (1, 'Blue Crane');
insert into nicknames
values (2, 'Green Head');
insert into nicknames
values (2, 'Green Cap');
insert into nicknames
values (3, 'Great Northern Diver');
insert into nicknames
values (4, 'Sea Eagle');
insert into nicknames
values (4, 'Eagle');
insert into nicknames
values (5, 'War Eagle');
insert into nicknames
values (6, 'Chicken Hawk');
insert into nicknames
values (7, 'Sea Hawk');
insert into nicknames
values (8, 'Preacher Bird');
insert into nicknames
values (9, 'Honker');
insert into nicknames
values (10, 'Water Witch');
insert into nicknames
values (11, 'Soul Chicken');
insert into nicknames
values (11, 'Devil Duck');
insert into nicknames
values (12, 'Seagull');
insert into nicknames
values (13, 'Seagull');
insert into nicknames
values (14, 'Booby');
insert into nicknames
values (14, 'Sea Turkey');
insert into nicknames
values (15, 'Sawbill');
insert into nicknames
values (16, 'Turkey Buzzard');
insert into nicknames
values (16, 'Buzzard');
insert into nicknames
values (17, 'Crow');
insert into nicknames
values (18, 'Poke');
insert into nicknames
values (18, 'Chucklehead');
insert into nicknames
values (19, 'Tundra');
insert into nicknames
values (20, 'Pelican');
insert into nicknames
values (21, 'Common Egret');
insert into nicknames
values (21, 'White Egret');
insert into nicknames
values (22, 'Water Turkey');
insert into nicknames
values (22, 'Spanish Crossbird');
insert into nicknames
values (22, 'Snake Bird');
insert into nicknames
values (23, 'Sea Dog');
insert into predators
values (1, 'Humans');
insert into predators
values (2, 'Cats');
insert into predators
values (3, 'Chipmunks');
insert into predators
values (4, 'Other Birds');
insert into predators
values (5, 'Snakes');
insert into predators
values (6, 'Frogs');
insert into predators
values (7, 'Dogs');
insert into predators
values (8, 'Deer');
insert into predators
values (9, 'Coyotes');
insert into predators
values (10, 'Reptiles');
insert into predators
values (11, 'Weasels');
insert into predators
values (12, 'Foxes');
insert into predators
values (13, 'Carnivorous Plants');
insert into predators
values (14, 'Predatory Fish');
insert into predators
values (15, 'Seals');
insert into predators
values (16, 'Insects');
insert into predators
values (17, 'Racoons');
insert into predators
values (18, 'Bears');
insert into predators
values (19, 'Skunks');
insert into predators
values (20, 'Turtles');
insert into predators
values (21, 'Wolves');
insert into predators
values (22, 'Cougars');
insert into predators
values (23, 'Bobcats');
insert into predators
values (24, 'Alligators');
insert into predators
values (25, 'Minks');
insert into predators
values (26, 'Rats');
insert into predators
values (27, 'Squirrels');
insert into predators
values (28, 'Opposums');
insert into predators
values (29, 'Crocodiles');
insert into birds_predators
values (1, 4);
insert into birds_predators
values (1, 17);
insert into birds_predators
values (1, 1);
insert into birds_predators
values (1, 18);
insert into birds_predators
values (2, 1);
insert into birds_predators
values (2, 2);
insert into birds_predators
values (2, 17);
insert into birds_predators
values (2, 7);
insert into birds_predators
values (2, 11);
insert into birds_predators
values (2, 19);
insert into birds_predators
values (2, 4);
insert into birds_predators
values (2, 20);
insert into birds_predators
values (2, 5);
insert into birds_predators
values (2, 14);
insert into birds_predators
values (2, 9);
insert into birds_predators
values (3, 4);
insert into birds_predators
values (3, 14);
insert into birds_predators
values (3, 17);
insert into birds_predators
values (3, 19);
insert into birds_predators
values (3, 11);
insert into birds_predators
values (3, 12);
insert into birds_predators
values (3, 9);
insert into birds_predators
values (4, 18);
insert into birds_predators
values (4, 21);
insert into birds_predators
values (4, 22);
insert into birds_predators
values (5, 18);
insert into birds_predators
values (5, 21);
insert into birds_predators
values (5, 22);
insert into birds_predators
values (6, 18);
insert into birds_predators
values (6, 21);
insert into birds_predators
values (6, 22);
insert into birds_predators
values (6, 4);
insert into birds_predators
values (7, 4);
insert into birds_predators
values (7, 18);
insert into birds_predators
values (7, 21);
insert into birds_predators
values (7, 22);
insert into birds_predators
values (8, 4);
insert into birds_predators
values (8, 5);
insert into birds_predators
values (8, 9);
insert into birds_predators
values (8, 11);
insert into birds_predators
values (8, 12);
insert into birds_predators
values (8, 17);
insert into birds_predators
values (8, 19);
insert into birds_predators
values (9, 9);
insert into birds_predators
values (9, 17);
insert into birds_predators
values (9, 19);
insert into birds_predators
values (9, 12);
insert into birds_predators
values (9, 4);
insert into birds_predators
values (9, 23);
insert into birds_predators
values (10, 4);
insert into birds_predators
values (10, 20);
insert into birds_predators
values (10, 17);
insert into birds_predators
values (10, 24);
insert into birds_predators
values (10, 25);
insert into birds_predators
values (10, 26);
insert into birds_predators
values (11, 4);
insert into birds_predators
values (11, 17);
insert into birds_predators
values (11, 19);
insert into birds_predators
values (11, 9);
insert into birds_predators
values (11, 12);
insert into birds_predators
values (11, 20);
insert into birds_predators
values (12, 4);
insert into birds_predators
values (12, 1);
insert into birds_predators
values (12, 14);
insert into birds_predators
values (12, 11);
insert into birds_predators
values (12, 12);
insert into birds_predators
values (13, 4);
insert into birds_predators
values (13, 1);
insert into birds_predators
values (13, 14);
insert into birds_predators
values (13, 11);
insert into birds_predators
values (13, 12);
insert into birds_predators
values (14, 4);
insert into birds_predators
values (14, 9);
insert into birds_predators
values (14, 12);
insert into birds_predators
values (14, 17);
insert into birds_predators
values (15, 4);
insert into birds_predators
values (15, 18);
insert into birds_predators
values (15, 27);
insert into birds_predators
values (16, 4);
insert into birds_predators
values (16, 17);
insert into birds_predators
values (16, 28);
insert into birds_predators
values (17, 4);
insert into birds_predators
values (17, 5);
insert into birds_predators
values (17, 17);
insert into birds_predators
values (17, 2);
insert into birds_predators
values (18, 4);
insert into birds_predators
values (18, 5);
insert into birds_predators
values (18, 17);
insert into birds_predators
values (18, 12);
insert into birds_predators
values (18, 25);
insert into birds_predators
values (18, 11);
insert into birds_predators
values (19, 21);
insert into birds_predators
values (19, 12);
insert into birds_predators
values (19, 17);
insert into birds_predators
values (20, 4);
insert into birds_predators
values (20, 14);
insert into birds_predators
values (20, 15);
insert into birds_predators
values (21, 4);
insert into birds_predators
values (21, 17);
insert into birds_predators
values (22, 24);
insert into birds_predators
values (22, 4);
insert into birds_predators
values (22, 29);
insert into birds_predators
values (23, 4);
insert into birds_predators
values (23, 26);
insert into birds_predators
values (23, 7);
insert into birds_predators
values (23, 17);
insert into photo_styles
values (1, 'Action');
insert into photo_styles
values (2, 'Portrait');
insert into photo_styles
values (3, 'Landscape');
insert into photo_styles
values (4, 'Sunset');
insert into photo_styles
values (5, 'Artistic');
insert into photo_styles
values (6, 'Close-up');
insert into photo_styles
values (7, 'Underwater');
insert into photo_styles
values (8, 'Still');
insert into photo_levels
values (1, 'Beginner');
insert into photo_levels
values (2, 'Novice');
insert into photo_levels
values (3, 'Hobbyist');
insert into photo_levels
values (4, 'Competent');
insert into photo_levels
values (5, 'Skilled');
insert into photo_levels
values (6, 'Artist');
insert into photo_levels
values (7, 'World-class');
insert into cameras
values (1, 'Canon');
insert into cameras
values (2, 'Nikon');
insert into cameras
values (3, 'Sony');
insert into cameras
values (4, 'Olympus');
insert into cameras
values (5, 'GoPro');
insert into cameras
values (6, 'Fujifilm');
insert into cameras
values (7, 'Polaroid');
insert into cameras
values (8, 'Apple iPhone');
insert into cameras
values (9, 'Samsung Galaxy');
insert into photographers
values (7, 'Ryan Notstephens', null, 7);
insert into photographers
values (8, 'Susan Willamson', null, 6);
insert into photographers
values (9, 'Mark Fife', null, 6);
insert into photographers
values (1, 'Shooter McGavin', null, 1);
insert into photographers
values (2, 'Jenny Forest', 8, 3);
insert into photographers
values (3, 'Steve Hamm', null, 4);
insert into photographers
values (4, 'Harry Henderson', 9, 5);
insert into photographers
values (5, 'Kelly Hairtrigger', 8, 2);
insert into photographers
values (6, 'Gordon Flash', null, 1);
insert into photographers
values (10, 'Kate Kapteur', 7, 4);
insert into favorite_birds
values (1, 4);
insert into favorite_birds
values (1, 3);
insert into favorite_birds
values (1, 7);
insert into favorite_birds
values (2, 23);
insert into favorite_birds
values (2, 20);
insert into favorite_birds
values (2, 19);
insert into favorite_birds
values (3, 1);
insert into favorite_birds
values (3, 3);
insert into favorite_birds
values (4, 4);
insert into favorite_birds
values (5, 8);
insert into favorite_birds
values (6, 18);
insert into favorite_birds
values (7, 22);
insert into favorite_birds
values (7, 11);
insert into favorite_birds
values (7, 16);
insert into favorite_birds
values (8, 14);
insert into favorite_birds
values (9, 5);
insert into favorite_birds
values (9, 4);
insert into favorite_birds
values (10, 17);
insert into favorite_birds
values (10, 21);
insert into favorite_birds
values (10, 2);
insert into favorite_birds
values (10, 6);
insert into photographer_styles
values (1, 3);
insert into photographer_styles
values (1, 8);
insert into photographer_styles
values (2, 1);
insert into photographer_styles
values (3, 2);
insert into photographer_styles
values (4, 5);
insert into photographer_styles
values (4, 8);
insert into photographer_styles
values (5, 7);
insert into photographer_styles
values (5, 5);
insert into photographer_styles
values (5, 3);
insert into photographer_styles
values (6, 6);
insert into photographer_styles
values (6, 2);
insert into photographer_styles
values (7, 1);
insert into photographer_styles
values (8, 5);
insert into photographer_styles
values (8, 8);
insert into photographer_styles
values (9, 3);
insert into photographer_styles
values (9, 4);
insert into photographer_styles
values (10, 6);
insert into photographer_styles
values (10, 8);
insert into photographer_cameras
values (1, 1);
insert into photographer_cameras
values (2, 1);
insert into photographer_cameras
values (2, 8);
insert into photographer_cameras
values (3, 2);
insert into photographer_cameras
values (3, 9);
insert into photographer_cameras
values (4, 3);
insert into photographer_cameras
values (5, 4);
insert into photographer_cameras
values (6, 7);
insert into photographer_cameras
values (7, 5);
insert into photographer_cameras
values (7, 9);
insert into photographer_cameras
values (7, 1);
insert into photographer_cameras
values (8, 2);
insert into photographer_cameras
values (8, 8);
insert into photographer_cameras
values (9, 6);
insert into photographer_cameras
values (9, 9);
insert into photographer_cameras
values (10, 8);