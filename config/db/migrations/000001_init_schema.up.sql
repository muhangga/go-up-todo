CREATE TABLE IF NOT EXISTS users (
    id BIGSERIAL PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    phone_number VARCHAR(255) NULL,
    gender VARCHAR(255) NULL,
    avatar VARCHAR(255),
    about_me VARCHAR(255) NULL,
    role VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE IF NOT EXISTS pets (
    id bigserial PRIMARY KEY,
    user_id BIGINT NOT NULL,
    additional_id BIGINT NOT NULL,
    pet_name VARCHAR(255) NOT NULL,
    gender VARCHAR(255) NOT NULL,
    date_of_birth DATE NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE IF NOT EXISTS specialties (
    id bigserial PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    popular BOOLEAN NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE IF NOT EXISTS doctor (
    id bigserial PRIMARY KEY,
    specialties_id BIGINT NOT NULL,
    name VARCHAR(255) NOT NULL,
    rating DECIMAL(2, 1) NOT NULL,
    reviews INTEGER NOT NULL,
    experience INTEGER NOT NULL,
    price INTEGER NOT NULL,
    address VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE IF NOT EXISTS categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    icon VARCHAR(255) NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE IF NOT EXISTS booking (
    id bigserial PRIMARY KEY,
    doctor_id INT NOT NULL,
    booking_date DATE NOT NULL,
    booking_time TIME NOT NULL,
    status VARCHAR(255) NOT NULL
);
CREATE TABLE IF NOT EXISTS additionals (
    id SERIAL PRIMARY KEY,
    pet_id BIGINT NOT NULL,
    neureted BOOLEAN NOT NULL,
    vaccinated BOOLEAN NOT NULL,
    friendly_with_dogs BOOLEAN NOT NULL,
    friendly_with_cats BOOLEAN NOT NULL,
    friendly_with_kids BOOLEAN NOT NULL,
    microchipped BOOLEAN NOT NULL,
    purebred BOOLEAN NOT NULL,
    pet_nursery_name VARCHAR(255) NOT NULL
);