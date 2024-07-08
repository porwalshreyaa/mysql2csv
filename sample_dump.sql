-- Example table structure
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
);

-- Example data
INSERT INTO `users` (`id`, `username`, `email`) VALUES
(1, 'john_doe', 'john@example.com'),
(2, 'jane_smith', 'jane@example.com');
