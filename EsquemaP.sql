-- Tabla users
CREATE TABLE IF NOT EXISTS users (
	_id VARCHAR(10) NOT NULL,
	CONSTRAINT pk__id PRIMARY KEY (_id),
	name VARCHAR(30) NOT NULL,
	age INT NOT NULL,
	type INT NOT NULL,
	status VARCHAR(10) NOT NULL);

-- Tabla finished
CREATE TABLE IF NOT EXISTS finished (
	idFinished SERIAL NOT NULL,
	CONSTRAINT pk_idFinished PRIMARY KEY (idFinished),
	num INT NOT NULL,
	_id VARCHAR(10) NOT NULL,
	CONSTRAINT fk__id1 FOREIGN KEY (_id) REFERENCES users (_id));

-- Tabla favorites
CREATE TABLE IF NOT EXISTS favorites (
	idFavorites SERIAL NOT NULL,
	CONSTRAINT pk_idFavorites PRIMARY KEY (idFavorites),
	artist VARCHAR(30) NOT NULL,
	food VARCHAR(30) NOT NULL,
	_id VARCHAR(10) NOT NULL,
	CONSTRAINT fk__id2 FOREIGN KEY (_id) REFERENCES users (_id));

-- Tabla badges
CREATE TABLE IF NOT EXISTS badges (
	idBadges SERIAL NOT NULL,
	CONSTRAINT pk_idBadges PRIMARY KEY (idBadges),
	colors VARCHAR(30) NOT NULL,
	_id VARCHAR(10) NOT NULL,
	CONSTRAINT fk__id3 FOREIGN KEY (_id) REFERENCES users (_id));

-- Tabla points
CREATE TABLE IF NOT EXISTS points (
	idPoints SERIAL NOT NULL,
	CONSTRAINT pk_idPoints PRIMARY KEY (idPoints),
	points int NOT NULL,
	bonus int NOT NULL,
	_id VARCHAR(10) NOT NULL,
	CONSTRAINT fk__id4 FOREIGN KEY (_id) REFERENCES users (_id));
