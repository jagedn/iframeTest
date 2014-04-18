<html>
<head>
	<meta name="layout" content="main"/>
</head>
<body>
	
	<g:each in="${documenttools}" status="i" var="document">
		<li><a href="#"> 
		<img id="ImgTool"
				src='${resource (dir: 'images', file:"${document.image}")}' 
				width="100" 
				class="btn btn-default"
				title="$document.name"
				onclick="<g:remoteFunction controller="Todos" action="lientools" id="${document.id }" update="page-wrapper" />" />
				</a> 
		</li> 
	</g:each>
	
	<div id="page-wrapper"></div>
	 
</body>
</html>