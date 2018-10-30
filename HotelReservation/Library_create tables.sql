/*
	Get a list of each employee first name and lastname
	and the territory names they are associated with
*/
use contact_list_test;

CREATE TABLE IF NOT EXISTS `Authors` (
    author_Id INT(11) NOT NULL AUTO_INCREMENT,
    first_Name VARCHAR(20) NOT NULL,
    last_Name VARCHAR(20) NOT NULL,
    street VARCHAR(20) NOT NULL,
    `city` VARCHAR(20) NOT NULL,
    `state` VARCHAR(20) NOT NULL,
    `zip` VARCHAR(20) NOT NULL,
    `phone` VARCHAR(20) NOT NULL,
    PRIMARY KEY (author_id)
)  ENGINE=INNODB DEFAULT CHARSET=LATIN1 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `books` (
    `book_id` INT(11) NOT NULL AUTO_INCREMENT,
    `isbn` VARCHAR(20) NOT NULL,
    `title` VARCHAR(50) NOT NULL,
    `publisher_id` INT(11) NOT NULL,
    `price` DECIMAL(5 , 2 ) NOT NULL,
    `publish_date` DATETIME NOT NULL,
    PRIMARY KEY (`book_id`),
    KEY `publisher_id` (`publisher_id`)
)  ENGINE=INNODB DEFAULT CHARSET=LATIN1 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `books_authors` (
    `book_id` INT(11) NOT NULL,
    `author_id` INT(11) NOT NULL,
    KEY `book_id` (`book_id`),
    KEY `author_id` (`author_id`)
)  ENGINE=INNODB DEFAULT CHARSET=LATIN1;

CREATE TABLE IF NOT EXISTS `publishers` (
    `publisher_id` INT(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(20) NOT NULL,
    `street` VARCHAR(20) NOT NULL,
    `city` VARCHAR(20) NOT NULL,
    `state` VARCHAR(20) NOT NULL,
    `zip` VARCHAR(20) NOT NULL,
    `phone` VARCHAR(20) NOT NULL,
    PRIMARY KEY (`publisher_id`)
)  ENGINE=INNODB DEFAULT CHARSET=LATIN1 AUTO_INCREMENT=1;

--
-- Constraints for table `books`
--
ALTER TABLE `books`
 ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`publisher_id`) REFERENCES `publishers`
(`publisher_id`) ON DELETE NO ACTION;
--
-- Constraints for table `books_authors`
--
ALTER TABLE `books_authors`
 ADD CONSTRAINT `books_authors_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books`
(`book_id`) ON DELETE NO ACTION,
 ADD CONSTRAINT `books_authors_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `authors`
(`author_id`) ON DELETE NO ACTION;