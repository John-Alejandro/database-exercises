USE join_test_db;

CREATE TABLE roles (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
   name VARCHAR(100) NOT NULL,
   PRIMARY KEY (id)
);

CREATE TABLE users (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
   name VARCHAR(100) NOT NULL,
   email VARCHAR(100) NOT NULL,
   role_id INT UNSIGNED DEFAULT NULL,
   PRIMARY KEY (id),
   FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
     ('james','james@myexample',2),
     ('ralph','ralph@myexample.com',2),
    ('matthew','matthew@myexample.com',2),
    ('xavier','xavier@myexample.com',null),
     ('bob', 'bob@example.com', 1),
     ('joe', 'joe@example.com', 2),
     ('sally', 'sally@example.com', 3),
     ('adam', 'adam@example.com', 3),
     ('jane', 'jane@example.com', null),
     ('mike', 'mike@example.com', null);



# Join / Inner Join
SELECT users.name as user_name, roles.name as role_name
FROM users
JOIN roles ON users.role_id = roles.id;

SELECT COUNT(*)
FROM users
JOIN roles ON users.role_id = roles.id;


# Left Join
SELECT users.name AS user_name, roles.name AS role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;

SELECT COUNT(*)
FROM users
LEFT JOIN roles ON users.role_id = roles.id;


# Right Join
SELECT users.name AS user_name, roles.name AS role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

SELECT COUNT(*)
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;