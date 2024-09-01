SQL> SELECT ORDER_PRODUCT.order_id, order_total
  2  FROM ORDER_PRODUCT
  3  WHERE order_total >= (SELECT AVG(order_total) FROM ORDER_PRODUCT);

ORDER_ID   ORDER_TOTAL                                                                                                                      
---------- -----------                                                                                                                      
O4               80000                                                                                                                      
O5               70000                                                                                                                      
O6               95000                                                                                                                      
O7               85000                                                                                                                      

SQL> spool off
