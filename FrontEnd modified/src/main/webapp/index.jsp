<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>COLLABORATION</title>

<link rel="shortcut icon" href="assets/images/gt_favicon.png">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/font-awesome.min.css">

<!-- Custom styles for our template -->
<link rel="stylesheet" href="resources/assets/css/main.css">

<script src="resources/js/jquery.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/angular.min.js"></script>
<script src="resources/js/angular-route.min.js"></script>
<script src="resources/js/angular-cookies.min.js"></script>
</head>
<body ng-app="myApp" class="container"
	ng-controller="UserProfileController as ctrl"
	background="resources/assets/images/background.jpg">

	<div ng-show="currentUser.useremail==undefined">
		<div ng-include="'c_common/common.html'"></div>
	</div>
	<div ng-show="currentUser.useremail!==undefined">
		<div ng-show="currentUser.currentrole=='Role_Student'">
			<div ng-include="'c_common/userview.html'"></div>
		</div>
	</div>
	<div ng-show="currentUser.useremail!==undefined">
		<div ng-show="currentUser.currentrole=='Role_Admin'">
			<div ng-include="'c_common/adminview.html'"></div>
		</div>
	</div>
	<div ng-show="currentUser.useremail!==undefined">
		<div ng-show="currentUser.currentrole=='Role_Alumin'">
			<div ng-include="'c_common/userview1.html'"></div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>



	<div class="container">
		<div ng-view></div>
	</div>





	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	

	<div class="container"></div>
	<footer>
		<br>
		<div class="row"
			style="color: Gray; background-color: #161819; text-align: center;">
			<div class="col-sm-4">
				<h5>
					<b>Get to know Us
				</h5>
				</b>
			</div>
			<div class="col-sm-4">
				<h5>
					<b>Let Us Help You
				</h5>
				</b>
			</div>
			<div class="col-sm-4">
				<h5>
					<b>Connect Us</b>
				</h5>
			</div>
		</div>
		<div class="row"
			style="color: Gray; background-color: #161819; text-align: center;">
			<div class="col-sm-4">
				<a href="#"><h5>About Us</h5></a>
			</div>
			<div class="col-sm-4">
				<a href="#"><h5>Your Account</h5></a>
			</div>
			<div class="col-sm-4">
				<a href="#"><i class="fa fa-facebook-square" aria-hidden="true"></i></a>
			</div>
		</div>
		<div class="row"
			style="color: Gray; background-color: #161819; text-align: center;">
			<div class="col-sm-4">
				<a href="#"><h5>Careers</h5></a>
			</div>
			<div class="col-sm-4">
				<a href="#"><h5>Returns Center</h5></a>
			</div>
			<div class="col-sm-4">
				<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
			</div>
		</div>
		<div class="row"
			style="color: Gray; background-color: #161819; text-align: center;">
			<div class="col-sm-4">
				<a href="#"><h5>Press Releases</h5></a>
			</div>
			<div class="col-sm-4">
				<a href="#"><h5>100% Purchase Protection</h5></a>
			</div>
			<div class="col-sm-4">
				<a href="#"><span class="fa fa-twitter-square"></span></a>
			</div>
		</div>
		<div class="row"
			style="color: Gray; background-color: #161819; text-align: center;">
			<div class="col-sm-4">
				<i class="fa fa-copyright" aria-hidden="true"></i>2016 FOCUS
			</div>
			<div class="col-sm-4">
				<a href="#">Terms of Service</a>
			</div>
			<div class="col-sm-4">
				<a href="#">Privacy</a>
			</div>
		</div>
	</footer>



	<script src="resources/assets/js/headroom.min.js"></script>
	<script src="resources/assets/js/jQuery.headroom.min.js"></script>
	<script src="resources/assets/js/template.js"></script>

	<script src="app.js"></script>
	<script src="c_home/HomeController.js"></script>
	<script src="c_users/UserProfileController.js"></script>
	<script src="c_users/UserProfileService.js"></script>
	<script src="c_blog/BlogController.js"></script>
	<script src="c_blog/BlogService.js"></script>
	<script src="c_forum/ForumController.js"></script>
	<script src="c_forum/ForumService.js"></script>
	<script src="c_friend/FriendController.js"></script>
	<script src="c_friend/FriendService.js"></script>
	<script src="c_job/JobController.js"></script>
	<script src="c_job/JobService.js"></script>

	<script src="c_chat/ChatController.js"></script>
	<script src="c_chat/ChatService.js"></script>
	<script src="c_chat/sockjs.min.js"></script>
	<script src="c_chat/stomp.min.js"></script>
	<script src="c_chat/lodash.min.js"></script>
</body>
</html>