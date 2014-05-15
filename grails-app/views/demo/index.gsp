<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>Demo</title>
</head>

<body>

<g:form id="demoForm" style="margin:40px">
    <div class="regular margin-t10">
        <label for="name">
            <strong>Name</strong>
        </label>
        <input id="name" name="fullName" type="text" class="w250"/>
    </div>


    <div class="regular margin-t10 cfx">
        <div class="inline">
            <label for="email" class="labelWithInputRadioOrCheckbox">
                <strong>Email</strong>
            </label>

            <input id="email" name="email" type="text" class="w250"/>
        </div>
    </div>

    <div class="regular margin-t10 cfx">
        <div class="inline">
            <label for="phone">
                <strong>Phone</strong>
            </label>

            <input id="phone" name="phone" type="text" class="w150" maxlength="12"/>
        </div>
    </div>

    <div class="regular margin-t10">
        <label>
            <strong>Attach File:</strong>
        </label>


        <input type="file" name="xfile" id="xfile_3_2" src="" class="xfile"
               onchange="showFileAsAttachment(this, $(this).closest('form'))">
    </div>

    <div id="attachment-results" class="attachment-results regular" style="display: none">
        <div class="regular">
            <span></span>
            <a href="javascript:void(0)" class="padding-l10 text-red"
               onclick="emptyFileInputField($(this).closest('form'))">Remove</a>
        </div>
    </div>

    <div style="margin-left: 13px;margin-top: 30px;">
        <a href="javascript:void(0)"
           onclick="submitForm($(this).closest('form'), $('#attachment-results'));
           return false;" class="btn btn-primary">
            Submit
        </a>
    </div>
</g:form>
</body>
</html>