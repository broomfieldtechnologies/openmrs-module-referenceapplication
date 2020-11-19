<html>
<head>
<%
    ui.decorateWith("appui", "standardEmrPage", [ title: ui.message("referenceapplication.home.title") ])

    def htmlSafeId = { extension ->
        "${ extension.id.replace(".", "-") }-${ extension.id.replace(".", "-") }-extension"
    }
%>
<style>
dialog{
color:blue;
text-align:center;
background-color: #fefefe;
  margin: 15% auto; /* 15% from the top and centered */
  padding: 20px;
  border: 1px solid #888;
  width: 60%;
  height:40%;
}
</style>

<script>

function myFunction(){
document.getElementById("mydialog").showModal();
}
function buttonfunction(){
document.getElementById("mydialog").close();
}
</script>
</head>
<body onload="myFunction()">

<form>
<dialog id="mydialog"><h1>this is message</h1>
<button type="submit" value ="/addAction">Accept</button></dialog>
</form>


<div id="home-container">

    ${ ui.includeFragment("coreapps", "administrativenotification/notifications") }

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