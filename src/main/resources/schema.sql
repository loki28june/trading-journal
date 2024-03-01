CREATE TABLE IF NOT EXISTS stocks (
  id INT PRIMARY KEY AUTO_INCREMENT,
  stock_name VARCHAR(255) NOT NULL,
  entry_date DATE NOT NULL,
  quantity INT NOT NULL,
  entry_price DECIMAL(10, 2) NOT NULL,
  cmp DECIMAL(10, 2) NOT NULL,
  total_invested DECIMAL(10, 2) NOT NULL,
  size_percent DECIMAL(5, 2) NOT NULL,
  current_value DECIMAL(10, 2) NOT NULL,
  percent_pl DECIMAL(5, 2) NOT NULL,
  unrealised_pl DECIMAL(10, 2) NOT NULL,
  rs_rating VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS transactions (
  id INT PRIMARY KEY AUTO_INCREMENT,
  stock_id INT NOT NULL,
  industry VARCHAR(255),
  entry_reason VARCHAR(255),
  exit_reason VARCHAR(255),
  exit_date DATE,
  exit_price DECIMAL(10, 2),
  total_sell_value DECIMAL(10, 2),
  profit DECIMAL(10, 2),
  profit_percent DECIMAL(5, 2)
);

ALTER TABLE transactions
    ADD CONSTRAINT FK_STOCK_ID FOREIGN KEY (stock_id) REFERENCES stocks (id);
