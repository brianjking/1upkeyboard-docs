# Troubleshooting WooCommerce

## No Shipping Rate Available

!!! tip
    If a customer receives a "No shipping rates available" error message when attempting to checkout check the **[WooCommerce Services Shipping Error Log](https://www.1upkeyboards.com/wp-admin/admin.php?page=wc-status&tab=logs)**. This error generally indicates that a product without a weight and/or dimensions is in the customers WooCommerce shopping cart. This restricts `WooCommerce Services` from obtaining a real-time rate from the `USPS shipping services pricing API`.

### Example Error from the WooCommerce Services Shipping Error Log
```
04-26-2018 @ 10:54:23 - Error. Unable to get shipping rate(s) for wc_services_usps instance id 4. (calculate_shipping)
04-26-2018 @ 10:54:23 - product_missing_weight Product ( ID: 210373 ) did not include a weight. Shipping rates cannot be calculated. (calculate_shipping)
04-26-2018 @ 11:26:26 - Error. Unable to get shipping rate(s) for wc_services_usps instance id 4. (calculate_shipping)
04-26-2018 @ 11:26:26 - product_missing_weight Product ( ID: 207034 ) did not include a weight. Shipping rates cannot be calculated. (calculate_shipping)
04-26-2018 @ 11:26:27 - Error. Unable to get shipping rate(s) for wc_services_usps instance id 4. (calculate_shipping)
04-26-2018 @ 11:26:27 - product_missing_weight Product ( ID: 207034 ) did not include a weight. Shipping rates cannot be calculated. (calculate_shipping)
```
### Understanding the Example Error Displayed Above 

* `wc_services_usps instance id 4` is the **USPS First Class Mail International** shipping zone. You can see this [here](https://www.1upkeyboards.com/wp-admin/admin.php?page=wc-settings&tab=shipping&instance_id=4).
* `product_missing_weight Product ( ID: 207034 )` is indicating that the product with the ID of `207034` is causing an issue as it does not have a weight assigned to it. 
* If you copy `207034` to your clipboard and go to the **WooCommerce Products** section of the **WordPress Admin** you can use the **Search Products** box to locate the product by entering `207034` into the box and clicking **Search Products.** 
	* In this example you'll find that the product with the ID of `207034` is the **[Sweet 16 Macro Pad - White](https://www.1upkeyboards.com/shop/keyboard-kits/sweet16-macro-pad-white/)**. To fix the error you will ned to **[Edit the product](https://www.1upkeyboards.com/wp-admin/post.php?post=207034&action=edit)** and enter a weight and product dimensions. 
	* The weight & dimensions can be entered by scrolling down to the **Product Data** section then clicking on the **Shipping** menu item. 
	* Once you've entered this data be sure to click **Update** from the **Publish** panel on the right hand side to save the record in the database.

