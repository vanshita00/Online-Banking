CREATE TABLE clients (
                         id BIGINT AUTO_INCREMENT PRIMARY KEY,
                         username VARCHAR(255) UNIQUE NOT NULL,
                         password VARCHAR(255) NOT NULL,
                         name VARCHAR(255) NOT NULL,
                         date_of_birth DATE NOT NULL,
                         initial_balance DECIMAL(19, 2) NOT NULL,
                         current_balance DECIMAL(19, 2) NOT NULL,
                         max_balance DECIMAL(19, 2) NOT NULL
);

CREATE TABLE contacts (
                          id BIGINT AUTO_INCREMENT PRIMARY KEY,
                          client_id BIGINT NOT NULL,
                          type VARCHAR(50) NOT NULL,
                          value VARCHAR(255) NOT NULL,
                          FOREIGN KEY (client_id) REFERENCES clients(id)
);
