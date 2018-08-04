function validate(inputs) {
  var status = true;
  $.each(inputs, function() {
    var input = $(this);
    if (input.val() === '') {
      input.addClass('required');
      status = false;
    }
  });

  return status;
}

$(document).ready(function() {
  var submitMessage = $('#send-message');

  if (submitMessage.length > 0) {
    submitMessage.on('click', function(event) {
      var element = $(event.currentTarget),
          container = element.parent(),
          url = container.data('url'),
          name = container.find('#message-name'),
          subject = container.find('#message-subject'),
          email = container.find('#message-email'),
          content = container.find('#message-content');

      var status = validate([name, subject, email, content]);

      if (status) {
        $.ajax({
          method: "POST",
          url: url,
          data: {
            name: name.val(),
            email: email.val(),
            subject: subject.val(),
            content: content.val()
          }
        }).done(function() {
          $('#message-created').show();
          $('.required').removeClass('required');
          $('#message-required-fields').hide();

          name.val('');
          subject.val('');
          email.val('');
          content.val('');
        });
      } else {
        $('#message-required-fields').show();
        $('#message-created').hide();
      }
    });
  }
});
