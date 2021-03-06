DELETE FROM user_roles;
DELETE FROM users;

ALTER SEQUENCE global_seq RESTART WITH 100000;

INSERT INTO users (name, email, password) VALUES
  ('User', 'user@yandex.ru', 'password'),
  ('Admin', 'admin@gmail.com', 'admin');

INSERT INTO user_roles (role, user_id) VALUES
  ('ROLE_USER', 100000),
  ('ROLE_ADMIN', 100001);

INSERT INTO form (registered, topic,user_id) VALUES
    ('2020-01-30 10:00:00', 'Математика',  100000),
    ('2020-01-30 10:00:00', 'Технология программирования', 100001);