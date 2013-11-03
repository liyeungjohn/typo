Given /^a blog with two articles is set up$/ do
  Blog.default.update_attributes!({:blog_name => 'Teh Blag',
                                   :base_url => 'http://localhost:3000'});
  Blog.default.save!
  User.create!({:login => 'admin',
                :password => 'aaaaaaaa',
                :email => 'joe@snow.com',
                :profile_id => 1,
                :name => 'admin',
                :state => 'active'})
  User.create!({:login => 'user1',
                :password => 'user1_password',
                :email => 'user1@blog.com',
                :profile_id => 2,
                :name => 'user1',
                :state => 'active'})
  Article.create(:allow_comments => true, :author => "user_1", :body => "Article Content1", :id => 1, :published => true, :published_at => "2012-06-09 21:51:55 UTC", :state => "published",  :title => "Article 1", :type => "Article")
  Article.create(:allow_comments => true, :author => "user_1", :body => "Article Content2", :id => 2, :published => true, :published_at => "2012-06-09 21:51:55 UTC", :state => "published",  :title => "Article 2", :type => "Article")

end
And /^I am not logged into the admin panel$/ do
  visit '/accounts/login'
  fill_in 'user_login', :with => 'user1'
  fill_in 'user_password', :with => 'user1_password'
  click_button 'Login'
  if page.respond_to? :should
    page.should have_content('Login successful')
  else
    assert page.has_content?('Login successful')
  end
end
