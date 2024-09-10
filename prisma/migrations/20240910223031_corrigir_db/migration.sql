/*
  Warnings:

  - You are about to drop the `Macaco` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `User` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "Macaco";
PRAGMA foreign_keys=on;

-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "User";
PRAGMA foreign_keys=on;

-- CreateTable
CREATE TABLE "Account" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "user_name" TEXT NOT NULL,
    "description" TEXT
);

-- CreateTable
CREATE TABLE "Product" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "account_id" INTEGER NOT NULL,
    "description" TEXT,
    "product_category_id" INTEGER,
    "name" TEXT NOT NULL,
    "barcode_content" TEXT,
    CONSTRAINT "Product_account_id_fkey" FOREIGN KEY ("account_id") REFERENCES "Account" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "Product_product_category_id_fkey" FOREIGN KEY ("product_category_id") REFERENCES "ProductCategory" ("id") ON DELETE SET NULL ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "ProductCategory" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "parent_category" INTEGER,
    "account_id" INTEGER NOT NULL,
    "name" TEXT,
    "description" TEXT,
    CONSTRAINT "ProductCategory_account_id_fkey" FOREIGN KEY ("account_id") REFERENCES "Account" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "ProductCategory_parent_category_fkey" FOREIGN KEY ("parent_category") REFERENCES "ProductCategory" ("id") ON DELETE SET NULL ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Lote" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "product_id" INTEGER NOT NULL,
    "quantity_minimum" INTEGER NOT NULL,
    "quantity_current" INTEGER NOT NULL,
    "expiration_date" DATETIME,
    "creation_date" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "purchase_price" REAL,
    CONSTRAINT "Lote_product_id_fkey" FOREIGN KEY ("product_id") REFERENCES "Product" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "LoteUpdates" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "stock_id" INTEGER NOT NULL,
    "update_time" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "quantity_delta" INTEGER NOT NULL,
    CONSTRAINT "LoteUpdates_stock_id_fkey" FOREIGN KEY ("stock_id") REFERENCES "Lote" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "ShoppingList" (
    "stock_id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "count" INTEGER,
    CONSTRAINT "ShoppingList_stock_id_fkey" FOREIGN KEY ("stock_id") REFERENCES "Lote" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateIndex
CREATE UNIQUE INDEX "Account_id_key" ON "Account"("id");

-- CreateIndex
CREATE UNIQUE INDEX "Product_id_key" ON "Product"("id");

-- CreateIndex
CREATE INDEX "Product_account_id_idx" ON "Product"("account_id");

-- CreateIndex
CREATE INDEX "Product_product_category_id_idx" ON "Product"("product_category_id");

-- CreateIndex
CREATE UNIQUE INDEX "ProductCategory_id_key" ON "ProductCategory"("id");

-- CreateIndex
CREATE INDEX "ProductCategory_account_id_idx" ON "ProductCategory"("account_id");

-- CreateIndex
CREATE INDEX "ProductCategory_parent_category_idx" ON "ProductCategory"("parent_category");

-- CreateIndex
CREATE UNIQUE INDEX "Lote_id_key" ON "Lote"("id");

-- CreateIndex
CREATE INDEX "Lote_product_id_idx" ON "Lote"("product_id");

-- CreateIndex
CREATE UNIQUE INDEX "LoteUpdates_id_key" ON "LoteUpdates"("id");

-- CreateIndex
CREATE INDEX "LoteUpdates_stock_id_idx" ON "LoteUpdates"("stock_id");

-- CreateIndex
CREATE UNIQUE INDEX "ShoppingList_stock_id_key" ON "ShoppingList"("stock_id");
