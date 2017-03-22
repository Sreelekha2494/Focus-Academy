package com.niit.backend.dao;

import java.util.List;

import com.niit.backend.model.ForumCategory;

public interface ForumCategoryDAO {
	
	public List<ForumCategory> getAllForumCategory();
	
	public boolean forumCategoryUpdate(ForumCategory forumcategory);
		
	public ForumCategory getForumCategoryByID(int fcid);

}

