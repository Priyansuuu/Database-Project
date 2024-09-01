SQL> SELECT customer.customer_id, customer_name, customer_address, phone_number, ORDER_PRODUCT.order_id, order_total, order_date
  2  FROM customer
  3  LEFT JOIN product_customer ON customer.customer_id = product_customer.customer_id
  4  LEFT JOIN ORDER_PRODUCT ON product_customer.order_id = ORDER_PRODUCT.order_id;

CUSTOMER_I CUSTOMER_NAME        CUSTOMER_ADDRESS               PHONE_NUMBER ORDER_ID   ORDER_TOTAL ORDER_DAT                                
---------- -------------------- ------------------------------ ------------ ---------- ----------- ---------                                
C1         Priyansu Gurung      Sunakothi                        9803034902 O2               40000 06-AUG-23                                
C1         Priyansu Gurung      Sunakothi                        9803034902 O4               80000 12-AUG-23                                
C2         Ronisha Shrestha     Sathdobato                       9841064972 O7               85000 28-AUG-23                                
C2         Ronisha Shrestha     Sathdobato                       9841064972 O1               50000 06-DEC-23                                
C3         Pariksha Adhikari    Nakhipot                         9845395748 O3               30000 06-MAY-23                                
C3         Pariksha Adhikari    Nakhipot                         9845395748 O5               70000 15-MAY-23                                
C4         Sneha Maharjan       Patan                            9806926496 O6               95000 20-MAY-23                                
C6         Shree Shah           Suryabinayak                     9864539605                                                                 
C5         Aashish Maharjan     Sallaghari                       9825462940                                                                 
C7         Arissa Adhikari      Ekantakuna                       9847393958                                                                 

10 rows selected.

SQL> spool off
