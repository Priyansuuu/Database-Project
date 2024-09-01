SQL> SELECT VENDOR.vendor_id, vendor_name, COUNT(PRODUCT.product_id) AS product_count
  2  FROM vendor
  3  INNER JOIN product ON vendor.vendor_id = product.vendor_id
  4  GROUP BY VENDOR.vendor_id, vendor_name
  5  HAVING COUNT(PRODUCT.product_id) > 3;

VENDOR_ID  VENDOR_NAME          PRODUCT_COUNT                                                                                               
---------- -------------------- -------------                                                                                               
V2         ASWATI ELECTRONICS               4                                                                                               

SQL> spool off
