<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<spring:eval expression="@environment.getProperty('spring.profiles.active')" var="runMode" />
<!-- value를 가져와서 사용할 수 있다. -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
	<script src="${runMode == 'local'? 'http://localhost:3000': ''}/built/bundle.view.js" defer></script>
</head>
<body>
    <h1>find react-root</h1>
	<div id="react-root"></div>
</body>
</html>