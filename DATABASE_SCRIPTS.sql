CREATE DATABASE IF NOT EXISTS jobs_data;
USE jobs_data;
CREATE TABLE IF NOT EXISTS job_postings (
    job_link TEXT,
    last_processed_time VARCHAR(100),
    last_status VARCHAR(100),
    got_summary CHAR(100),
    got_ner CHAR(100),
    is_being_worked CHAR(100),
    job_title TEXT,
    company_name VARCHAR(255),
    company_linkedin_url TEXT,
    job_location VARCHAR(255),
    first_seen VARCHAR(50),
    search_city VARCHAR(100),
    search_country VARCHAR(100),
    search_position VARCHAR(255),
    job_level VARCHAR(100),
    job_type VARCHAR(50)
);

CREATE TABLE job_skills1 (
    job_link VARCHAR(255),
    job_skills VARCHAR(1000)
);

CREATE TABLE job_summary1 (
    job_link VARCHAR(100),
    job_summary VARCHAR(100)
);

CREATE TABLE job_postings3 (
    job_title VARCHAR(100),
    company TEXT,
    job_location VARCHAR(255),
    job_link VARCHAR(255),
    first_seen VARCHAR(50),
    search_city VARCHAR(255),
    search_country VARCHAR(255),
    job_level TEXT,
    job_type VARCHAR(20),
    job_summary LONGTEXT,
    job_skills VARCHAR(255)
);
CREATE TABLE skills_dim2 (
    skill_id INT PRIMARY KEY,
    skills VARCHAR(255),
    type VARCHAR(100)
);
CREATE TABLE skills_job_dim2 (
    job_id INT,
    skill_id INT
);
