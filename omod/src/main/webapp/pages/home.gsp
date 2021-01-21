<html>
<head>
<%
    ui.decorateWith("appui", "standardEmrPage", [ title: ui.message("referenceapplication.home.title") ])

    def htmlSafeId = { extension ->
        "${ extension.id.replace(".", "-") }-${ extension.id.replace(".", "-") }-extension"
    }
%>



</head>
<body>



<div id="home-container">

    ${ ui.includeFragment("coreapps", "administrativenotification/notifications") }
   
    
    <h4>${lastlogintime}</h4>
  
  <% if ((lastlogintime>30)||(lastlogintime==0)){ %>
        <h4>helloresh</h4>
        <% if (!checkExsist) { %>
          ${ui.includeFragment("appui","acceptUser")}
       <% } %>
       <% } %>
  
    <% if (authenticatedUser) { %>
        <h4>
            ${ ui.encodeHtmlContent(ui.message("referenceapplication.home.currentUser", ui.format(authenticatedUser), ui.format(sessionContext.sessionLocation))) }
        </h4>
    <% } else { %>
        <h4>
            <a href="login.htm">${ ui.message("referenceapplication.home.logIn") }</a>
        </h4>
    <% } %>

    <div id="apps">
        <% extensions.each { ext -> %>
            <a id="${ htmlSafeId(ext) }" href="/${ contextPath }/${ ext.url }" class="button app big">
                <% if (ext.icon) { %>
                   <i class="${ ext.icon }"></i>
                <% } %>
                ${ ui.message(ext.label) }
            </a>
        <% } %>
    </div>

</div>
</body>
</html>