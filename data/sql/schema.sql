CREATE TABLE about_us (idabout_us INT AUTO_INCREMENT, summary TEXT, content TEXT, image VARCHAR(120) DEFAULT 'about.jpg', created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(idabout_us)) ENGINE = INNODB;
CREATE TABLE category (idcategory INT AUTO_INCREMENT, name TEXT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(idcategory)) ENGINE = INNODB;
CREATE TABLE doctor (iddoctor INT AUTO_INCREMENT, name VARCHAR(45), degree TEXT, summary TEXT, content TEXT, specialist_idspecialist INT, avatar VARCHAR(120) DEFAULT 'doctor.jpg', created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(iddoctor, specialist_idspecialist)) ENGINE = INNODB;
CREATE TABLE feed_back (idfeed_back INT AUTO_INCREMENT, name_customer VARCHAR(45) NOT NULL, address VARCHAR(45) NOT NULL, avatar VARCHAR(120) DEFAULT 'avatar.jpg', content TEXT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(idfeed_back)) ENGINE = INNODB;
CREATE TABLE gallery (idgallery INT AUTO_INCREMENT, name TEXT, url VARCHAR(120) DEFAULT 'gallery.jpg', created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(idgallery)) ENGINE = INNODB;
CREATE TABLE news (idnews INT AUTO_INCREMENT, images VARCHAR(120) DEFAULT 'news.jpg', summary TEXT, content TEXT, category_idcategory INT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(idnews, category_idcategory)) ENGINE = INNODB;
CREATE TABLE schedule (idschedule INT AUTO_INCREMENT, fullname VARCHAR(45), age INT, time VARCHAR(10), date VARCHAR(10), description TEXT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(idschedule)) ENGINE = INNODB;
CREATE TABLE specialist (idspecialist INT AUTO_INCREMENT, name TEXT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(idspecialist)) ENGINE = INNODB;
ALTER TABLE doctor ADD CONSTRAINT doctor_specialist_idspecialist_specialist_idspecialist FOREIGN KEY (specialist_idspecialist) REFERENCES specialist(idspecialist);
ALTER TABLE news ADD CONSTRAINT news_category_idcategory_category_idcategory FOREIGN KEY (category_idcategory) REFERENCES category(idcategory);