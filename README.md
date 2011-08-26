sequentially process asynch operations intended in a loop
---

Usage

    lineProcessor items, action, callback

*where*

> **items** are the objects containing the data to be processed (eg, a bunch of urls)
> 
> **action** is the function with signature (item, callback) which is applied on the item (eg, sends an HTTP request to item.url and invokes callback)
> 
> **callback** is the final callback function (executed after all items are processed)
> 

