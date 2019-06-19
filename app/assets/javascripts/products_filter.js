$(document).ready(function() {
  var $products = $('.grid-products'),
      $filters = $("#filters input[type='checkbox']"),
      product_filter = new ProductFilterLevel1($products, $filters);
  product_filter.init();
});

function ProductFilterLevel1(products, filters) {
  var _this = this;

  this.init = function() {
    this.products = products;
    this.filters = filters;
    this.bindEvents();
  };

  this.bindEvents = function() {
    this.filters.click(this.filterGridProducts);
    $('#clear_all').click(this.removeAllFilters);
  };

  this.filterGridProducts = function() {
    _this.products.hide();
    var selectedFilters = _this.filters.filter(':checked');
    if (selectedFilters.length) {
      _this.products.filter(_this.getFilterString(selectedFilters)).show();
    } else {
      _this.products.show();
    }
  };

  this.removeAllFilters = function() {
    _this.filters.prop('checked', false);
    _this.products.show();
  };

  this.getFilterString = function(selectedFilters) {
    var selectedFiltersValues = [];
    selectedFilters.each(function() {
      var currentFilter = $(this);
      selectedFiltersValues.push("[data-" + currentFilter.attr('name') + "='" + currentFilter.val() + "']");
    });
    return selectedFiltersValues.join(',');
  };
}
