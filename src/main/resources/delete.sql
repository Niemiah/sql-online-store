DELETE FROM Reviews WHERE review_id=1;
DELETE FROM Inventory WHERE inventory_id=1;
DELETE FROM Invoices WHERE invoice_id=1;
DELETE FROM Payments WHERE payment_id=1;
DELETE FROM Addresses WHERE address_id=1;
DELETE FROM Shipping_Methods WHERE shipping_id=1;
DELETE FROM Order_Details WHERE order_id=1 AND product_id=1;
DELETE FROM Orders WHERE order_id=1;
DELETE FROM Product_Categories WHERE product_id=1 AND category_id=1;
DELETE FROM Categories WHERE category_id=1;
DELETE FROM Products WHERE product_id=1;
DELETE FROM Users WHERE user_id=1;