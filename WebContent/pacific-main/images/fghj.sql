use agence;

create table Client(
id_client int primary key auto_increment,
id_commande int,
nom varchar(50),
email varchar(50),
password varchar(50),
tel varchar(50)
);

ALTER TABLE Client
ADD FOREIGN KEY (id_commande) REFERENCES commande(id_commande);

create table Commande(
id_commande int primary key auto_increment,
id_client int,
id_Voyage int,
nom_cl varchar(50),
destination varchar(50),
type varchar(50),
date varchar(50),
duree int,

CONSTRAINT FK_id_client FOREIGN KEY (id_client)
REFERENCES Client(id_client),
CONSTRAINT FK_id_Voyage FOREIGN KEY (id_Voyage)
REFERENCES Voyage(id_Voyage)
);

create table Voyage(
id_Voyage int primary key auto_increment,
destination varchar(50),
continent varchar(50),
type varchar(50),
date varchar(50),
duree int,
image varchar(100),
theme varchar(50),
hebergement varchar(100),
prix double
);

create table Admin (
id_Admin int primary key auto_increment,
nom varchar(50),
password varchar(50)
);

create table Voyage_acc (
id_Voyage_acc int primary key auto_increment,
destination_acc varchar(50),
continent_acc varchar(50),
type_acc varchar(50),
date_acc varchar(50),
duree_acc int,
image_acc varchar(100),
theme_acc varchar(50),
hebergement_acc varchar(100),
prix_acc double,
activite text,
genre text,
guide text
);

create table Panier(
id_panier int primary key auto_increment,
id_Voyage int,
id_client int,
destination varchar(50),
image varchar(50),
type varchar(50),

CONSTRAINT FK_id_V FOREIGN KEY (id_Voyage)
REFERENCES Voyage(id_Voyage),
CONSTRAINT FK_id_c FOREIGN KEY (id_client)
REFERENCES Client(id_client)
);
create table hotel(
id_hotel int primary key auto_increment,
nom_hotel text,
prix_hotel double,
etoile_hotel int,
nbr_chambre int,
inclusivite_hotel text
);

ALTER TABLE panier
ADD FOREIGN KEY (id_hotel) REFERENCES hotel(id_hotel);
ALTER TABLE panier
ADD FOREIGN KEY (id_Voyage_acc) REFERENCES voyage_acc(id_Voyage_acc);

create table PanierAcc(
id_panier_acc int primary key auto_increment,
id_Voyage_acc int,
id_client int,


CONSTRAINT FK_id_VAcc FOREIGN KEY (id_Voyage_acc)
REFERENCES Voyage_acc(id_Voyage_acc),
CONSTRAINT FK_id_CAcc FOREIGN KEY (id_client)
REFERENCES Client(id_client)
);










