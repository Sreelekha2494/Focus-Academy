var app = angular.module('myApp', ['ngRoute', 'ngCookies']);

app.config(function($routeProvider)
{
	$routeProvider	

	.when('/', {
		templateUrl: 'c_home/welcome.html',
		controller: 'HomeController'
	})
	.when('/userprofile', {
		templateUrl: 'c_users/frmUserProfile.html',
		controller: 'UserProfileController'
	})
	.when('/login', {
		templateUrl: 'c_users/frmLogin.html',
		controller: 'UserProfileController'
	})
	.when('/listusersadmin', {
		templateUrl: 'c_users/frmUserListAdmin.html',
		controller: 'UserProfileController'
	})
	.when('/listallusers', {
		templateUrl: 'c_friend/frmAllUsers.html',
		controller: 'FriendController'
	})
	.when('/listpending', {
		templateUrl: 'c_friend/frmPendingRequest.html',
		controller: 'FriendController'
	})
	.when('/listmyfriends', {
		templateUrl: 'c_friend/frmViewFriends.html',
		controller: 'FriendController'
	})
	
	.when('/viewjobs', {
		templateUrl: 'c_job/frmListJob.html',
		controller: 'JobController'
	})
	.when('/addjob', {
		templateUrl: 'c_job/frmJob.html',
		controller: 'JobController'
	})
	.when('/viewappliedjobs',
	{
		templateUrl: 'c_job/frmViewMyJobApply.html',
		controller: 'JobController'
	})
	.when('/approveblogs', {
		templateUrl: 'c_blog/UserBlogAdmin.html',
		controller: 'BlogController'
	})
	.when('/viewblogs', {
		templateUrl: 'c_blog/BlogList.html',
		controller: 'BlogController'
	})
	.when('/addblog', {
		templateUrl: 'c_blog/Blog.html',
		controller: 'BlogController'
	})
	.when('/myblog', {
		templateUrl: 'c_blog/MyBlog.html',
		controller: 'BlogController'
	})
	.when('/approveforums', {
		templateUrl: 'c_forum/frmUserForumAdmin.html',
		controller: 'ForumController'
	})
	.when('/viewforums',{
		templateUrl: 'c_forum/frmListForum.html',
		controller: 'ForumController'
	})
	.when('/addforum', {
		templateUrl: 'c_forum/frmForum.html',
		controller: 'ForumController'
	})
	.when('/myforum', {
		templateUrl: 'c_forum/frmMyForum.html',
		controller: 'ForumController'
	})
	.when('/addforumcmts', {
		templateUrl: 'c_forum/frmAddComment.html',
		controller: 'ForumController'
	})
	.when('/listallusers', {
		templateUrl: 'c_friend/frmAllUsers.html',
		controller: 'FriendController'
	})
	.when('/chat', {
		templateUrl: 'c_chat/Chat.html',
		controller: 'ChatController'
	})
	
	.otherwise({redirectTo: '/'});
});

app.run( function($rootScope,$location,$cookieStore,$http){
    
    $rootScope.$on('$locationChangeStart',function(event,next,current){
        console.log("$locationChangeStart")
        var restrictedPage=$.inArray($location.path(),['/login', '/userprofile', '/addjob','/addblog'])== -1;
        console.log("restrictedpage ;"+restrictedPage)
        var loggedIn=$rootScope.currentUser;
        console.log("loggedin:"+loggedIn)
        if(restrictedPage & !loggedIn){
            console.log("navigation to login page")
            $location.path('/home');
        }
        
    });
    
    $rootScope.currentUser=$cookieStore.get('currentUser')||{};
    if($rootScope.currentUser){
        $http.defaults.headers.common['Authorization']= 'Basic' + $rootScope.currentUser;
    }
    
});