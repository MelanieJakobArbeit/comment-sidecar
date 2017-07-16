DROP TABLE IF EXISTS comments;

CREATE TABLE comments (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `author` varchar(40) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `content` text NOT NULL,
  `reply_to` int(11) DEFAULT NULL,
  `site` varchar(40) NOT NULL,
  `path` varchar(170) NOT NULL,
  `creation_date` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE INDEX read_index ON comments (`site`, `path`, `creation_date`);
