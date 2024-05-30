USE household_budget;

-- Transactions テーブルへの追加データ挿入（Descriptionからカテゴリを推測して適切なCategoryIDを割り当てる）
INSERT INTO Transactions (UserID, Amount, CategoryID, TransactionDate, Description, PaymentMethodID) VALUES
(2,100000.00,9,'2025-11-11','Tシャツを購入',6),
(2,5000.00,1,'2025-11-11','夕食の材料を購入',1),
(3,5000.00,7,'2025-11-11','電気代の引き落とし',5);


