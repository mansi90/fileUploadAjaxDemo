function showFileAsAttachment(inputFile, formObj) {
    var fileName = $(inputFile).val();
    if (fileName != '') {
        $(formObj).find('.attachment-results span').html($(inputFile).val());
        $(formObj).find('.attachment-results').show();
        $(formObj).find('input[name=hasAttachment]').val(true);
        var reader = new FileReader();
    } else {
        hideAndRemoveFileAttachment(formObj);
    }
}

function hideAndRemoveFileAttachment(formObj) {
    $(formObj).find('.attachment-results span').html('');
    $(formObj).find('.attachment-results').hide();
    $(formObj).find('input[name=hasAttachment]').val(false);
}

function emptyFileInputField(formObj) {
    $(formObj).find('.xfile').val('');
    hideAndRemoveFileAttachment(formObj);
}

function submitForm(formObj, url) {
    $(formObj).ajaxSubmit({
        async: true,
        url: url,
        success: function (data) {
            emptyFileInputField(formObj);  //reset and hide input file info
            $(formObj).trigger("reset");   //reset other form elements
            alert('Form submitted successfully');
        }
    });
}
