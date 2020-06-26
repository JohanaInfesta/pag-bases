'use strict';

function navigatePost(url, data = {}) {
    $.post(url, data, function (res) {
      $('.main-content').html(res);
      console.log(url, data);
    });
}
