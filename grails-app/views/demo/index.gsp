<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>Demo</title>
    <script type="text/javascript">
        var formSubmitUrl = "${createLink(controller: 'demo', action: 'submitDemoForm')}"
    </script>
</head>

<body>

<g:form id="demoForm" style="margin:40px">
    <div>
        <label for="name">
            <strong>Name</strong>
        </label>
        <input id="name" name="name" type="text" class="w250"/>
    </div>

    <div>
        <div class="inline">
            <label for="email" class="labelWithInputRadioOrCheckbox">
                <strong>Email</strong>
            </label>

            <input id="email"  name="email" type="email" class="w250"/>
        </div>
    </div>

    <div>
        <div class="inline">
            <label for="phone">
                <strong>Phone</strong>
            </label>

            <input id="phone"  name="phone" type="text" class="w150" maxlength="12"/>
        </div>
    </div>

    <div style="display: inline-block;float: left" class="xfile-button ">
        <label>
            <strong>Attach File:</strong>
        </label>

        <div class="xfile-button btn">Select File
            <input type="file" id="inputFile"  name="inputFile" src=""
                   onchange="showFileAsAttachment(this, $(this).closest('form'))">
        </div>
    </div>

    <div id="attachment-results" class="attachment-results" style="display: none">
        <div>
            <span style="font-size: 13px;"></span>
            <a href="javascript:void(0)" class="btn btn-danger" style="line-height: 13px;"
               onclick="emptyFileInputField($(this).closest('form'))">Remove</a>
        </div>
    </div>

    <div style="clear: both"></div>

    <div style="margin-left: 13px;margin-top: 30px;">
        <a href="javascript:void(0)"
           onclick="submitForm($(this).closest('form'), formSubmitUrl);
           return false;" class="btn btn-primary">
            Submit
        </a>
    </div>
</g:form>
</body>
</html>