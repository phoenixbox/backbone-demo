collection @users

attributes :id, :first_name, :last_name, :created_at, :updated_at

node do |user|
	{
	:full_name => user.full_name,
	:created_at_formatted => user.created_at.strftime("%m/%d/%Y"),
	:updated_at_formatted => time_ago_in_words(user.updated_at)
}
end

# child :post do
# 	attributes :id, :content, :created_at
# end
