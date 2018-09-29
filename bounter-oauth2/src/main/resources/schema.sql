DROP TABLE client;
CREATE TABLE client (id bigint NOT NULL, client_name varchar(128), client_id varchar(64), client_secret varchar(512), access_token_validity_seconds bigint, refresh_token_validity_seconds bigint, create_time datetime, update_time datetime, PRIMARY KEY (id)) ENGINE=InnoDB DEFAULT CHARSET=utf8 DEFAULT COLLATE=utf8_general_ci;
INSERT INTO client (id, client_name, client_id, client_secret, access_token_validity_seconds, refresh_token_validity_seconds, create_time, update_time) VALUES (1, 'bounter', 'bounter', '{bcrypt}$2a$10$DenmafCppaXx6avsh78eQOxkH.7mygvJHxT4D/pIz01XNCbtkfKee', 1800, 604800, null, null);
DROP TABLE client_redirect_uri;
CREATE TABLE client_redirect_uri (id bigint NOT NULL, client_id varchar(64), redirect_uri varchar(1024), PRIMARY KEY (id)) ENGINE=InnoDB DEFAULT CHARSET=utf8 DEFAULT COLLATE=utf8_general_ci;
INSERT INTO client_redirect_uri (id, client_id, redirect_uri) VALUES (1, 'bounter', 'http://bounter.cn');
DROP TABLE user;
CREATE TABLE user (id bigint NOT NULL, username varchar(64), password varchar(128), client_id varchar(64), is_staff tinyint(3) unsigned, create_time datetime, update_time datetime, PRIMARY KEY (id)) ENGINE=InnoDB DEFAULT CHARSET=utf8 DEFAULT COLLATE=utf8_general_ci;
INSERT INTO user (id, username, password, client_id, is_staff, create_time, update_time) VALUES (1, 'simon', '{bcrypt}$2a$10$DenmafCppaXx6avsh78eQOxkH.7mygvJHxT4D/pIz01XNCbtkfKee', null, null, null, null);
INSERT INTO user (id, username, password, client_id, is_staff, create_time, update_time) VALUES (2, 'susan', '{bcrypt}$2a$10$DenmafCppaXx6avsh78eQOxkH.7mygvJHxT4D/pIz01XNCbtkfKee', null, null, null, null);
DROP TABLE user_role;
CREATE TABLE user_role (id bigint NOT NULL, username varchar(64), role varchar(32), PRIMARY KEY (id)) ENGINE=InnoDB DEFAULT CHARSET=utf8 DEFAULT COLLATE=utf8_general_ci;
INSERT INTO user_role (id, username, role) VALUES (1, 'simon', 'ROLE_STAFF');
INSERT INTO user_role (id, username, role) VALUES (2, 'simon', 'ROLE_ADMIN');
INSERT INTO user_role (id, username, role) VALUES (3, 'susan', 'ROLE_STAFF');