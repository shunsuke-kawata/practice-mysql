-- 家計簿データベースの作成
CREATE DATABASE IF NOT EXISTS household_budget;

USE household_budget;
-- Users テーブル：ユーザー情報を管理
CREATE TABLE Users (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    UserName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Password VARCHAR(100) NOT NULL,
    RegistrationDate DATE,
    CountryID INT, -- CountryID カラムを追加
    CONSTRAINT fk_country FOREIGN KEY (CountryID) REFERENCES Countries(CountryID)
);

-- Categories テーブル：取引のカテゴリを管理
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY AUTO_INCREMENT,
    CategoryName VARCHAR(50) NOT NULL,
    ParentCategoryID INT,
    CONSTRAINT fk_parent_category FOREIGN KEY (ParentCategoryID) REFERENCES Categories(CategoryID)
);
-- PaymentMethods テーブル：支払い方法を管理
CREATE TABLE PaymentMethods (
    PaymentMethodID INT PRIMARY KEY AUTO_INCREMENT,
    PaymentMethodName VARCHAR(50) NOT NULL
);

-- Transactions テーブル：取引履歴を管理
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    Amount DECIMAL(10, 2) NOT NULL,
    CategoryID INT,
    TransactionDate DATE,
    Description VARCHAR(255),
    PaymentMethodID INT,
    CONSTRAINT fk_user FOREIGN KEY (UserID) REFERENCES Users(UserID),
    CONSTRAINT fk_category FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID),
    CONSTRAINT fk_payment_method FOREIGN KEY (PaymentMethodID) REFERENCES PaymentMethods(PaymentMethodID)
);


-- Countries テーブル：国の情報を管理
CREATE TABLE Countries (
    CountryID INT PRIMARY KEY AUTO_INCREMENT,
    CountryName VARCHAR(50) NOT NULL
);
