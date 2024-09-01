SQL> SELECT ORDER_PRODUCT.order_id, order_total, order_date, payment_option, order_quantity
  2  FROM ORDER_PRODUCT
  3  INNER JOIN product_customer ON ORDER_PRODUCT.order_id = product_customer.order_id
  4  INNER JOIN product ON product_customer.product_id = product.product_id
  5  WHERE order_date BETWEEN '01-MAY-23' AND '28-MAY-23';

ORDER_ID   ORDER_TOTAL ORDER_DAT PAYMENT_OPTION       ORDER_QUANTITY                                                                        
---------- ----------- --------- -------------------- --------------                                                                        
O3               30000 06-MAY-23 e-wallet                          7                                                                        
O5               70000 15-MAY-23 e-wallet                         12                                                                        
O6               95000 20-MAY-23 cash on delivery                 20                                                                        

SQL> spool off
