<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'notepad.label', default: 'Notepad')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div id="create-notepad" class="content scaffold-create" role="main">
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.notepad}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.notepad}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>

            <g:form action="save" controller="notepad" class="form-inline" role="form">
                %{--<div class="form-group">--}%
                    %{--<div class="input-group">--}%
                        %{--<g:textField name="chave" class="form-control" placeholder="Name a new notebook"/>--}%
                        %{--<span class="input-group-btn">--}%
                            %{--<g:submitButton name="create" class="btn btn-warning btn-lg" value="Go!" />--}%
                        %{--</span>--}%
                    %{--</div>--}%
                %{--</div>--}%

                %{--<div class="row">--}%
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="input-group">
                            <g:textField name="chave" class="form-control" placeholder="Name a new notebook"/>
                            <span class="input-group-btn">
                            <g:submitButton name="create" class="btn btn-warning btn-lg" value="Go!" />
                            </span>
                        </div><!-- /input-group -->
                    </div><!-- /.col-lg-4 -->
                %{--</div><!-- /.row -->--}%
            </g:form>
        </div>
    </body>
</html>
