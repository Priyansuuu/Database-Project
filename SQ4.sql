SQL> SELECT PRODUCT.product_id, product_name, product_category, product_description, product_price, stock_quantity
  2  FROM product
  3  WHERE product_name LIKE '_a%' AND stock_quantity > 50;

PRODUCT_ID PRODUCT_NAME         PRODUCT_CATEGORY     PRODUCT_DESCRIPTION                      PRODUCT_PRICE STOCK_QUANTITY                  
---------- -------------------- -------------------- ---------------------------------------- ------------- --------------                  
P2         Laptop               Computer             Portable personal computer                       50000            100                  
P7         Gaming Console       Gaming               Video game system                                40000            100                  

SQL> spool off
