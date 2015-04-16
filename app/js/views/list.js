define([
	'marionette'
	, 'underscore'
	, 'app'
	, 'collections/generic'
], function (Marionette, _, App, Collection) {

	/*
	 * Must implement the follow:
	 * - itemView (tagName and template)
	 * - template of composite view
	 * - Must receive a collection in constructor
	 * - Must define objectStore (string)
	 */
	var CompositeView = Marionette.CompositeView.extend({
		itemViewContainer: '#tbodyItem',
		className: 'box',
		tagName: 'div',

		initialize: function(coll, model) {
			this.collection = coll;

			// Fix default behavior of marionette.js when receive a collection constructor
			// this.model = undefined;
			this.model = model;
		}

		, events: {
			'click .delete': 'deleteAll'
			, 'click .btn-warning': 'sync'
			, 'click .btn-danger': 'delete'
		}
		, sync: function(ev) {
			ev.preventDefault();

			// Workarround to double call of .delete and .btn-warning
			if (_.contains(ev.target.classList, 'delete'))
				return;

			console.log('sync not implemented...');
		}
		, delete: function(ev) {
			ev.preventDefault();

			var self = this;
			var id = parseInt(ev.currentTarget.getAttribute('id'));
			App.indexedDB.db.transaction([this.objectStore], 'readwrite').objectStore(this.objectStore).delete(id).onsuccess = function(e) {
				var model = self.collection.where({id: id});
				self.collection.remove(model);
			};
		}
		, deleteAll: function(ev) {
			var self = this;

			ev.preventDefault();

			App.indexedDB.db.transaction([this.objectStore], 'readwrite').objectStore(this.objectStore).clear().onsuccess = function(e) {
				self.collection = new Collection();
			};
		}
	});

	return CompositeView;
});
