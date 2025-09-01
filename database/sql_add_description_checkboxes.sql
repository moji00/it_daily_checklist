-- Run this SQL once to enable per-description checkboxes
CREATE TABLE IF NOT EXISTS task_descriptions (
  id INT AUTO_INCREMENT PRIMARY KEY,
  task_id INT NOT NULL,
  text TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (task_id) REFERENCES tasks(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS user_description_checks (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  task_description_id INT NOT NULL,
  check_date DATE NOT NULL,
  status ENUM('pending','completed') NOT NULL DEFAULT 'pending',
  completed_at DATETIME NULL,
  UNIQUE KEY uniq_user_desc_date (user_id, task_description_id, check_date),
  FOREIGN KEY (task_description_id) REFERENCES task_descriptions(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
