SQL> SELECT EXTRACT(MONTH FROM ORDER_PRODUCT.order_date) AS month,SUM(ORDER_PRODUCT.order_total) AS total_revenue
  2  FROM ORDER_PRODUCT
  3  GROUP BY EXTRACT(MONTH FROM ORDER_PRODUCT.order_date);

     MONTH TOTAL_REVENUE                                                                                                                    
---------- -------------                                                                                                                    
         5        195000                                                                                                                    
         8        205000                                                                                                                    
        12         50000                                                                                                                    

SQL> spool off
