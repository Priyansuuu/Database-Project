SQL> SELECT customer.customer_name, SUM(order_product.order_total) AS total_spending
  2  FROM customer
  3  INNER JOIN product_customer ON customer.customer_id = product_customer.customer_id
  4  INNER JOIN order_product ON product_customer.order_id = order_product.order_id
  5  WHERE TO_CHAR(order_product.order_date, 'MON') = 'AUG'
  6  GROUP BY customer.customer_name
  7  ORDER BY total_spending DESC;

CUSTOMER_NAME        TOTAL_SPENDING                                                                                                         
-------------------- --------------                                                                                                         
Priyansu Gurung              120000                                                                                                         
Ronisha Shrestha              85000                                                                                                         

SQL> spool off
