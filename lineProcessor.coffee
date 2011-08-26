# sequentially processes the items and then call callback
module.exports.lineProcessor = (items, action, callback) ->
	q = Array.prototype.slice.call(items)
	processor = () ->
		if q.length is 0
			return if callback then callback() else 0
		item = q.shift()
		action item, processor
	processor()

