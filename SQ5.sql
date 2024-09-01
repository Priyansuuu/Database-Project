SQL> SELECT customer.customer_id,customer_name,customer_address,phone_number, MAX(order_product.order_date) AS latest_order_date
  2  FROM customer
  3  INNER JOIN product_customer ON customer.customer_id = product_customer.customer_id
  4  INNER JOIN order_product ON product_customer.order_id = order_product.order_id
  5  GROUP BY customer.customer_id,customer_name,customer_address,phone_number;

CUSTOMER_I CUSTOMER_NAME        CUSTOMER_ADDRESS               PHONE_NUMBER LATEST_OR                                                       
---------- -------------------- ------------------------------ ------------ ---------                                                       
C1         Priyansu Gurung      Sunakothi                        9803034902 12-AUG-23                                                       
C2         Ronisha Shrestha     Sathdobato                       9841064972 06-DEC-23                                                       
C3         Pariksha Adhikari    Nakhipot                         9845395748 15-MAY-23                                                       
C4         Sneha Maharjan       Patan                            9806926496 20-MAY-23                                                       

SQL> spool off
