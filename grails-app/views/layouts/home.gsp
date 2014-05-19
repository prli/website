<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="description" content="">
        <meta name="viewport" content="width=device-width">
		<title><g:layoutTitle default="Richard Li"/></title>
		<link rel="shortcut icon" href="${createLinkTo(dir:'/',file:'favicon.ico')}" type="image/x-icon" />  
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'icomoon-social.css')}" type="text/css">
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,600,800' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'leaflet.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		
		<g:javascript src="modernizr-2.6.2-respond-1.1.0.min.js" />

		<r:layoutResources/>
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>
		<g:render template="/common/header" /> 
		<g:layoutBody/>
		<g:render template="/common/footer" /> 
	</body>
</html>
