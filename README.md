# Rails Ajax Partials

Experiment to wrap asynchronous loading of view partials into some Rails-style
syntactic sugar. Uses JQuery and JQuery UJS.

Some important details, not yet handled:

* Need to be able to update the flash message on error or success.
* Pre-loading Ajax-rendered partials on the first request.
