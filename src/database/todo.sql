-- Active: 1689294322985@@127.0.0.1@3306
-- ================== QUERIES USERS ====================
CREATE TABLE users(
    id TEXT PRIMARY KEY NOT NULL,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL
);

-- =============== QUERIES TASKS ======================
CREATE TABLE tasks(
    id TEXT PRIMARY KEY,
    title TEXT NOT NULL,
    description TEXT NOT NULL,
    created_at TEXT DEFAULT(DATETIME('now', 'localtime')) NOT NULL,
    status INTEGER DEFAULT(0) NOT NULL
);

CREATE TABLE users_tasks(
    user_id TEXT NOT NULL,
    task_id TEXT NOT NULL,
    Foreign Key (user_id) REFERENCES users(id)
    ON UPDATE CASCADE,
    Foreign Key (task_id) REFERENCES tasks(id)
    ON UPDATE CASCADE
);