var amount = row.Quantity * row.UnitPrice;  // row is the OrderDetails row
if (row.Quantity !== 0) {
    amount = amount * (100 - 100*row.Discount) / 100;
}
return amount;
