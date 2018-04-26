# Troubleshooting WooCommerce

## No Shipping Rate Available

!!! tip
    If a customer receives a "No shipping rates available" error message when attempting to checkout check the **[WooCommerce Services Shipping Error Log](https://www.1upkeyboards.com/wp-admin/admin.php?page=wc-status&tab=logs)**. This error generally indicates that a product without a weight and/or dimensions is in the customers WooCommerce shopping cart. This restricts `WooCommerce Services` from obtaining a real-time rate from the `USPS shipping services pricing API`.

```
04-26-2018 @ 10:54:23 - Error. Unable to get shipping rate(s) for wc_services_usps instance id 4. (calculate_shipping)
04-26-2018 @ 10:54:23 - product_missing_weight Product ( ID: 210373 ) did not include a weight. Shipping rates cannot be calculated. (calculate_shipping)
04-26-2018 @ 11:26:26 - Error. Unable to get shipping rate(s) for wc_services_usps instance id 4. (calculate_shipping)
04-26-2018 @ 11:26:26 - product_missing_weight Product ( ID: 207034 ) did not include a weight. Shipping rates cannot be calculated. (calculate_shipping)
04-26-2018 @ 11:26:27 - Error. Unable to get shipping rate(s) for wc_services_usps instance id 4. (calculate_shipping)
04-26-2018 @ 11:26:27 - product_missing_weight Product ( ID: 207034 ) did not include a weight. Shipping rates cannot be calculated. (calculate_shipping)
```


