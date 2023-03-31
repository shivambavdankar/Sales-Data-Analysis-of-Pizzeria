
SELECT
	o.order_id,
	i.item_price,
	o.quantity,
	i.item_cat,
	i.item_name,
	o.created_at,
	a.delivery_address1,
	a.delivery_address2,
	a.delivery_city,
	a.delivery_zipcode,
	o.delivery 
FROM
	pizzaproject.orders o
	LEFT JOIN pizzaproject.item i ON o.item_id = i.item_id
	LEFT JOIN pizzaproject.address a ON o.add_id = a.add_id


