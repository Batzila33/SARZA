-- Create referral codes table
CREATE TABLE referral_codes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(50) UNIQUE NOT NULL,
    address VARCHAR(42) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX idx_code (code),
    INDEX idx_address (address)
);

-- Insert some test data (optional)
INSERT INTO referral_codes (code, address) VALUES 
('TESTREF123', '0x742d35Cc6634C0532925a3b8D4C9db96C4b4d8b9'),
('DEMO456', '0x8ba1f109551bD432803012645aac136c5c8b4d8b9');