USE household_budget;

-- SELECT文一覧
-- SELECT * FROM Categories;
-- SELECT * FROM Countries;
-- SELECT * FROM PaymentMethods;
-- SELECT * FROM Transactions;
-- SELECT * FROM Users;

SELECT * FROM Users LIMIT 4 LEFT JOIN Countries ON Users.CountryID = Countries.CountryID;


