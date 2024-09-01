SQL> SELECT product_customer.product_id, product.product_name, COUNT(product_customer.product_id) AS order_count
  2  FROM product_customer
  3  JOIN product ON product_customer.product_id = product.product_id
  4  GROUP BY product_customer.product_id, product.product_name
  5  ORDER BY order_count DESC;

PRODUCT_ID PRODUCT_NAME         ORDER_COUNT                                                                                                 
---------- -------------------- -----------                                                                                                 
P1         Smartphone                     3                                                                                                 
P2         Laptop                         2                                                                                                 
P3         Smartwatch                     2                                                                                                 

SQL> spool off
