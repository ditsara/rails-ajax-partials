// Load an ajax response into the DOM element specified
// by data-replace. Example:
//
//   <a href="/some/url" data-remote data-type="html" data-replace="my-div">
//
//   <!-- This div gets replaced by the response from the link above -->
//   <div id="my-div"> ... </div>
//
(function (document, window, $) {

  $(document).on('ajax:before', function (ev) {
    $(ev.target).waitMe();
  });

  $(document).on('ajax:success', function (ev, data, _status, _xhr) {
    var origin = $(ev.target);
    var toReplace = $('#' + origin.data('replace'));
    if (toReplace.length > 0) toReplace.html(data);
  });

  $(document).on('ajax:complete', function (ev) {
    $(ev.target).waitMe('hide');
  });

})(document, window, $);
