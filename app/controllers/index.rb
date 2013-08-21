get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/commits' do
  @user = Github.new
  @commits = @user.repos.commits.all  'SmilinColleen', 'Tweet-Later'
  p '*' * 80
  pp @commits.first
  # p params[:html_url]

  erb :commit_data
end

get '/following' do
  @github = Github.new
  @follows = @github.users.followers.following 'SmilinColleen'
  # @follows = @github.users.followers.following? 'SmilinColleen'
  p '*' * 50
  pp @follows.first

  erb :following
end


#params for commits
#<Github::ResponseWrapper @body="[Hashie::Mash author=Hashie::Mash avatar_url=
#<"https://2.gravatar.com/avatar/710ca389c882790a8f97a09c75133b51?d=https%3A%2
#<F%2Fidenticons.github.com%2Fe6d5cd4386fa6ea226045205870b49ca.png"
#<events_url="https://api.github.com/users/dbc-apprentice/events{/privacy}"
#<followers_url="https://api.github.com/users/dbc-apprentice/followers"
#<following_url="https://api.github.com/users/dbc-
#<apprentice/following{/other_user}" gists_url="https://api.github.com/users
#</dbc-apprentice/gists{/gist_id}"
#<gravatar_id="710ca389c882790a8f97a09c75133b51" html_url="https://github.com
#</dbc-apprentice" id=1885430 login="dbc-apprentice"
#<organizations_url="https://api.github.com/users/dbc-apprentice/orgs"
#<received_events_url="https://api.github.com/users/dbc-
#<apprentice/received_events" repos_url="https://api.github.com/users/dbc-
#<apprentice/repos" starred_url="https://api.github.com/users/dbc-
#<apprentice/starred{/owner}{/repo}"
#<subscriptions_url="https://api.github.com/users/dbc-
#<apprentice/subscriptions" type="User" url="https://api.github.com/users/dbc-
#<apprentice"> comments_url="https://api.github.com/repos/SmilinColleen/Tweet-
#<Later/commits/ade14daea1aa0449b94cc71a1a52ed571e99cbf0/comments"
#<commit=Hashie::Mash author=Hashie::Mash date="2013-08-21T01:22:11Z"
#<email="apprentice@devbootcamp.com" name="DBC Apprentice"> comment_count=0
#<committer=Hashie::Mash date="2013-08-21T01:22:11Z"
#<email="apprentice@devbootcamp.com" name="DBC Apprentice"> message="initial
#<tweets with sidekiq" tree=Hashie::Mash
#<sha="7cf5d92c2ef64d0db4e88683bd601c5dfcb11498"
#<url="https://api.github.com/repos/SmilinColleen/Tweet-
#<Later/git/trees/7cf5d92c2ef64d0db4e88683bd601c5dfcb11498">
#<url="https://api.github.com/repos/SmilinColleen/Tweet-
#<Later/git/commits/ade14daea1aa0449b94cc71a1a52ed571e99cbf0">
#<committer=Hashie::Mash avatar_url="https://2.gravatar.com/avatar/710ca389c88
#<2790a8f97a09c75133b51?d=https%3A%2F%2Fidenticons.github.com%2Fe6d5cd4386fa6e
#<a226045205870b49ca.png" events_url="https://api.github.com/users/dbc-
#<apprentice/events{/privacy}" followers_url="https://api.github.com/users
#</dbc-apprentice/followers" following_url="https://api.github.com/users/dbc-
#<apprentice/following{/other_user}" gists_url="https://api.github.com/users
#</dbc-apprentice/gists{/gist_id}"
#<gravatar_id="710ca389c882790a8f97a09c75133b51" html_url="https://github.com
#</dbc-apprentice" id=1885430 login="dbc-apprentice"
#<organizations_url="https://api.github.com/users/dbc-apprentice/orgs"
#<received_events_url="https://api.github.com/users/dbc-
#<apprentice/received_events" repos_url="https://api.github.com/users/dbc-
#<apprentice/repos" starred_url="https://api.github.com/users/dbc-
#<apprentice/starred{/owner}{/repo}"
#<subscriptions_url="https://api.github.com/users/dbc-
#<apprentice/subscriptions" type="User" url="https://api.github.com/users/dbc-
#<apprentice"> html_url="https://github.com/SmilinColleen/Tweet-
#<Later/commit/ade14daea1aa0449b94cc71a1a52ed571e99cbf0" parents=[Hashie::Mash
#<html_url="https://github.com/SmilinColleen/Tweet-
#<Later/commit/a14ab60aceeac1d0d9aa8b8fce99889e55b304a9"
#<sha="a14ab60aceeac1d0d9aa8b8fce99889e55b304a9"
#<url="https://api.github.com/repos/SmilinColleen/Tweet-
#<Later/commits/a14ab60aceeac1d0d9aa8b8fce99889e55b304a9">]
#<sha="ade14daea1aa0449b94cc71a1a52ed571e99cbf0"
#<url="https://api.github.com/repos/SmilinColleen/Tweet-
#<Later/commits/ade14daea1aa0449b94cc71a1a52ed571e99cbf0">, Hashie::Mash
#<author=Hashie::Mash avatar_url="https://2.gravatar.com/avatar/710ca389c88279
#<0a8f97a09c75133b51?d=https%3A%2F%2Fidenticons.github.com%2Fe6d5cd4386fa6ea22
#<6045205870b49ca.png" events_url="https://api.github.com/users/dbc-
#<apprentice/events{/privacy}" followers_url="https://api.github.com/users
#</dbc-apprentice/followers" following_url="https://api.github.com/users/dbc-
#<apprentice/following{/other_user}" gists_url="https://api.github.com/users
#</dbc-apprentice/gists{/gist_id}"
#<gravatar_id="710ca389c882790a8f97a09c75133b51" html_url="https://github.com
#</dbc-apprentice" id=1885430 login="dbc-apprentice"
#<organizations_url="https://api.github.com/users/dbc-apprentice/orgs"
#<received_events_url="https://api.github.com/users/dbc-
#<apprentice/received_events" repos_url="https://api.github.com/users/dbc-
#<apprentice/repos" starred_url="https://api.github.com/users/dbc-
#<apprentice/starred{/owner}{/repo}"
#<subscriptions_url="https://api.github.com/users/dbc-
#<apprentice/subscriptions" type="User" url="https://api.github.com/users/dbc-
#<apprentice"> comments_url="https://api.github.com/repos/SmilinColleen/Tweet-
#<Later/commits/a14ab60aceeac1d0d9aa8b8fce99889e55b304a9/comments"
#<commit=Hashie::Mash author=Hashie::Mash date="2013-08-20T22:42:56Z"
#<email="apprentice@devbootcamp.com" name="DBC Apprentice"> comment_count=0
#<committer=Hashie::Mash date="2013-08-20T22:42:56Z"
#<email="apprentice@devbootcamp.com" name="DBC Apprentice"> message="removed
#<deleted migration from repo" tree=Hashie::Mash
#<sha="7c9647d4b7de2225d11f60f11d0887949d149276"
#<url="https://api.github.com/repos/SmilinColleen/Tweet-
#<Later/git/trees/7c9647d4b7de2225d11f60f11d0887949d149276">
#<url="https://api.github.com/repos/SmilinColleen/Tweet-
#<Later/git/commits/a14ab60aceeac1d0d9aa8b8fce99889e55b304a9">
#<committer=Hashie::Mash avatar_url="https://2.gravatar.com/avatar/710ca389c88
#<2790a8f97a09c75133b51?d=https%3A%2F%2Fidenticons.github.com%2Fe6d5cd4386fa6e
#<a226045205870b49ca.png" events_url="https://api.github.com/users/dbc-
#<apprentice/events{/privacy}" followers_url="https://api.github.com/users
#</dbc-apprentice/followers" following_url="https://api.github.com/users/dbc-
#<apprentice/following{/other_user}" gists_url="https://api.github.com/users
#</dbc-apprentice/gists{/gist_id}"
#<gravatar_id="710ca389c882790a8f97a09c75133b51" html_url="https://github.com
#</dbc-apprentice" id=1885430 login="dbc-apprentice"
#<organizations_url="https://api.github.com/users/dbc-apprentice/orgs"
#<received_events_url="https://api.github.com/users/dbc-
#<apprentice/received_events" repos_url="https://api.github.com/users/dbc-
#<apprentice/repos" starred_url="https://api.github.com/users/dbc-
#<apprentice/starred{/owner}{/repo}"
#<subscriptions_url="https://api.github.com/users/dbc-
#<apprentice/subscriptions" type="User" url="https://api.github.com/users/dbc-
#<apprentice"> html_url="https://github.com/SmilinColleen/Tweet-
#<Later/commit/a14ab60aceeac1d0d9aa8b8fce99889e55b304a9" parents=[Hashie::Mash
#<html_url="https://github.com/SmilinColleen/Tweet-
#<Later/commit/83e4a715448412ee423979413ef7ae5bd822f7d5"
#<sha="83e4a715448412ee423979413ef7ae5bd822f7d5"
#<url="https://api.github.com/repos/SmilinColleen/Tweet-
#<Later/commits/83e4a715448412ee423979413ef7ae5bd822f7d5">]
#<sha="a14ab60aceeac1d0d9aa8b8fce99889e55b304a9"
#<url="https://api.github.com/repos/SmilinColleen/Tweet-
#<Later/commits/a14ab60aceeac1d0d9aa8b8fce99889e55b304a9">, Hashie::Mash
#<author=Hashie::Mash avatar_url="https://2.gravatar.com/avatar/710ca389c88279
#<0a8f97a09c75133b51?d=https%3A%2F%2Fidenticons.github.com%2Fe6d5cd4386fa6ea22
#<6045205870b49ca.png" events_url="https://api.github.com/users/dbc-
#<apprentice/events{/privacy}" followers_url="https://api.github.com/users
#</dbc-apprentice/followers" following_url="https://api.github.com/users/dbc-
#<apprentice/following{/other_user}" gists_url="https://api.github.com/users
#</dbc-apprentice/gists{/gist_id}"
#<gravatar_id="710ca389c882790a8f97a09c75133b51" html_url="https://github.com
#</dbc-apprentice" id=1885430 login="dbc-apprentice"
#<organizations_url="https://api.github.com/users/dbc-apprentice/orgs"
#<received_events_url="https://api.github.com/users/dbc-
#<apprentice/received_events" repos_url="https://api.github.com/users/dbc-
#<apprentice/repos" starred_url="https://api.github.com/users/dbc-
#<apprentice/starred{/owner}{/repo}"
#<subscriptions_url="https://api.github.com/users/dbc-
#<apprentice/subscriptions" type="User" url="https://api.github.com/users/dbc-
#<apprentice"> comments_url="https://api.github.com/repos/SmilinColleen/Tweet-
#<Later/commits/83e4a715448412ee423979413ef7ae5bd822f7d5/comments"
#<commit=Hashie::Mash author=Hashie::Mash date="2013-08-20T22:41:26Z"
#<email="apprentice@devbootcamp.com" name="DBC Apprentice"> comment_count=0
#<committer=Hashie::Mash date="2013-08-20T22:41:26Z"
#<email="apprentice@devbootcamp.com" name="DBC Apprentice"> message="finished
#<app, tweets and oauth and such" tree=Hashie::Mash
#<sha="46c75362899da56925b42943ebc68a12bb35832d"
#<url="https://api.github.com/repos/SmilinColleen/Tweet-
#<Later/git/trees/46c75362899da56925b42943ebc68a12bb35832d">
#<url="https://api.github.com/repos/SmilinColleen/Tweet-
#<Later/git/commits/83e4a715448412ee423979413ef7ae5bd822f7d5">
#<committer=Hashie::Mash avatar_url="https://2.gravatar.com/avatar/710ca389c88
#<2790a8f97a09c75133b51?d=https%3A%2F%2Fidenticons.github.com%2Fe6d5cd4386fa6e
#<a226045205870b49ca.png" events_url="https://api.github.com/users/dbc-
#<apprentice/events{/privacy}" followers_url="https://api.github.com/users
#</dbc-apprentice/followers" following_url="https://api.github.com/users/dbc-
#<apprentice/following{/other_user}" gists_url="https://api.github.com/users
#</dbc-apprentice/gists{/gist_id}"
#<gravatar_id="710ca389c882790a8f97a09c75133b51" html_url="https://github.com
#</dbc-apprentice" id=1885430 login="dbc-apprentice"
#<organizations_url="https://api.github.com/users/dbc-apprentice/orgs"
#<received_events_url="https://api.github.com/users/dbc-
#<apprentice/received_events" repos_url="https://api.github.com/users/dbc-
#<apprentice/repos" starred_url="https://api.github.com/users/dbc-
#<apprentice/starred{/owner}{/repo}"
#<subscriptions_url="https://api.github.com/users/dbc-
#<apprentice/subscriptions" type="User" url="https://api.github.com/users/dbc-
#<apprentice"> html_url="https://github.com/SmilinColleen/Tweet-
#<Later/commit/83e4a715448412ee423979413ef7ae5bd822f7d5" parents=[Hashie::Mash
#<html_url="https://github.com/SmilinColleen/Tweet-
#<Later/commit/eea9dedd3ded13aec0e8e840e65c22eb49095447"
#<sha="eea9dedd3ded13aec0e8e840e65c22eb49095447"
#<url="https://api.github.com/repos/SmilinColleen/Tweet-
#<Later/commits/eea9dedd3ded13aec0e8e840e65c22eb49095447">]
#<sha="83e4a715448412ee423979413ef7ae5bd822f7d5"
#<url="https://api.github.com/repos/SmilinColleen/Tweet-
#<Later/commits/83e4a715448412ee423979413ef7ae5bd822f7d5">, Hashie::Mash
#<author=Hashie::Mash avatar_url="https://2.gravatar.com/avatar/710ca389c88279
#<0a8f97a09c75133b51?d=https%3A%2F%2Fidenticons.github.com%2Fe6d5cd4386fa6ea22
#<6045205870b49ca.png" events_url="https://api.github.com/users/dbc-
#<apprentice/events{/privacy}" followers_url="https://api.github.com/users
#</dbc-apprentice/followers" following_url="https://api.github.com/users/dbc-
#<apprentice/following{/other_user}" gists_url="https://api.github.com/users
#</dbc-apprentice/gists{/gist_id}"
#<gravatar_id="710ca389c882790a8f97a09c75133b51" html_url="https://github.com
#</dbc-apprentice" id=1885430 login="dbc-apprentice"
#<organizations_url="https://api.github.com/users/dbc-apprentice/orgs"
#<received_events_url="https://api.github.com/users/dbc-
#<apprentice/received_events" repos_url="https://api.github.com/users/dbc-
#<apprentice/repos" starred_url="https://api.github.com/users/dbc-
#<apprentice/starred{/owner}{/repo}"
#<subscriptions_url="https://api.github.com/users/dbc-
#<apprentice/subscriptions" type="User" url="https://api.github.com/users/dbc-
#<apprentice"> comments_url="https://api.github.com/repos/SmilinColleen/Tweet-
#<Later/commits/eea9dedd3ded13aec0e8e840e65c22eb49095447/comments"
#<commit=Hashie::Mash author=Hashie::Mash date="2013-08-20T18:03:37Z"
#<email="apprentice@devbootcamp.com" name="DBC Apprentice"> comment_count=0
#<committer=Hashie::Mash date="2013-08-20T18:03:37Z"
#<email="apprentice@devbootcamp.com" name="DBC Apprentice"> message="added
#<model and migration" tree=Hashie::Mash
#<sha="e7d9e76addd8f8856d37ee47ab17b139def3413a"
#<url="https://api.github.com/repos/SmilinColleen/Tweet-
#<Later/git/trees/e7d9e76addd8f8856d37ee47ab17b139def3413a">
#<url="https://api.github.com/repos/SmilinColleen/Tweet-
#<Later/git/commits/eea9dedd3ded13aec0e8e840e65c22eb49095447">
#<committer=Hashie::Mash avatar_url="https://2.gravatar.com/avatar/710ca389c88
#<2790a8f97a09c75133b51?d=https%3A%2F%2Fidenticons.github.com%2Fe6d5cd4386fa6e
#<a226045205870b49ca.png" events_url="https://api.github.com/users/dbc-
#<apprentice/events{/privacy}" followers_url="https://api.github.com/users
#</dbc-apprentice/followers" following_url="https://api.github.com/users/dbc-
#<apprentice/following{/other_user}" gists_url="https://api.github.com/users
#</dbc-apprentice/gists{/gist_id}"
#<gravatar_id="710ca389c882790a8f97a09c75133b51" html_url="https://github.com
#</dbc-apprentice" id=1885430 login="dbc-apprentice"
#<organizations_url="https://api.github.com/users/dbc-apprentice/orgs"
#<received_events_url="https://api.github.com/users/dbc-
#<apprentice/received_events" repos_url="https://api.github.com/users/dbc-
#<apprentice/repos" starred_url="https://api.github.com/users/dbc-
#<apprentice/starred{/owner}{/repo}"
#<subscriptions_url="https://api.github.com/users/dbc-
#<apprentice/subscriptions" type="User" url="https://api.github.com/users/dbc-
#<apprentice"> html_url="https://github.com/SmilinColleen/Tweet-
#<Later/commit/eea9dedd3ded13aec0e8e840e65c22eb49095447" parents=[Hashie::Mash
#<html_url="https://github.com/SmilinColleen/Tweet-
#<Later/commit/b57b44f6407355bd55f4c8d6c0b56ea53466bcdc"
#<sha="b57b44f6407355bd55f4c8d6c0b56ea53466bcdc"
#<url="https://api.github.com/repos/SmilinColleen/Tweet-
#<Later/commits/b57b44f6407355bd55f4c8d6c0b56ea53466bcdc">]
#<sha="eea9dedd3ded13aec0e8e840e65c22eb49095447"
#<url="https://api.github.com/repos/SmilinColleen/Tweet-
#<Later/commits/eea9dedd3ded13aec0e8e840e65c22eb49095447">, Hashie::Mash
#<author=Hashie::Mash avatar_url="https://1.gravatar.com/avatar/e5a165454b2905
#<398d59ac5198ea450d?d=https%3A%2F%2Fidenticons.github.com%2F023e4473dbf70466e
#<f2d8cc59f7f2b43.png"
#<events_url="https://api.github.com/users/jeffreywescott/events{/privacy}"
#<followers_url="https://api.github.com/users/jeffreywescott/followers" follow
#<ing_url="https://api.github.com/users/jeffreywescott/following{/other_user}"
#<gists_url="https://api.github.com/users/jeffreywescott/gists{/gist_id}"
#<gravatar_id="e5a165454b2905398d59ac5198ea450d"
#<html_url="https://github.com/jeffreywescott" id=130597
#<login="jeffreywescott"
#<organizations_url="https://api.github.com/users/jeffreywescott/orgs" receive
#<d_events_url="https://api.github.com/users/jeffreywescott/received_events"
#<repos_url="https://api.github.com/users/jeffreywescott/repos" starred_url="h
#<ttps://api.github.com/users/jeffreywescott/starred{/owner}{/repo}" subscript
#<ions_url="https://api.github.com/users/jeffreywescott/subscriptions"
#<type="User" url="https://api.github.com/users/jeffreywescott">
#<comments_url="https://api.github.com/repos/SmilinColleen/Tweet-
#<Later/commits/b57b44f6407355bd55f4c8d6c0b56ea53466bcdc/comments"
#<commit=Hashie::Mash author=Hashie::Mash date="2013-04-23T19:35:05Z"
#<email="jeffrey.wescott@gmail.com" name="Jeffrey Wescott"> comment_count=0
#<committer=Hashie::Mash date="2013-04-23T19:35:05Z"
#<email="jeffrey.wescott@gmail.com" name="Jeffrey Wescott"> message="removing
#<README" tree=Hashie::Mash sha="eb98641573fb89d249e44d9db68d39b051aee7f3"
#<url="https://api.github.com/repos/SmilinColleen/Tweet-
#<Later/git/trees/eb98641573fb89d249e44d9db68d39b051aee7f3">
#<url="https://api.github.com/repos/SmilinColleen/Tweet-
#<Later/git/commits/b57b44f6407355bd55f4c8d6c0b56ea53466bcdc">
#<committer=Hashie::Mash avatar_url="https://1.gravatar.com/avatar/e5a165454b2
#<905398d59ac5198ea450d?d=https%3A%2F%2Fidenticons.github.com%2F023e4473dbf704
#<66ef2d8cc59f7f2b43.png"
#<events_url="https://api.github.com/users/jeffreywescott/events{/privacy}"
#<followers_url="https://api.github.com/users/jeffreywescott/followers" follow
#<ing_url="https://api.github.com/users/jeffreywescott/following{/other_user}"
#<gists_url="https://api.github.com/users/jeffreywescott/gists{/gist_id}"
#<gravatar_id="e5a165454b2905398d59ac5198ea450d"
#<html_url="https://github.com/jeffreywescott" id=130597
#<login="jeffreywescott"
#<organizations_url="https://api.github.com/users/jeffreywescott/orgs" receive
#<d_events_url="https://api.github.com/users/jeffreywescott/received_events"
#<repos_url="https://api.github.com/users/jeffreywescott/repos" starred_url="h
#<ttps://api.github.com/users/jeffreywescott/starred{/owner}{/repo}" subscript
#<ions_url="https://api.github.com/users/jeffreywescott/subscriptions"
#<type="User" url="https://api.github.com/users/jeffreywescott">
#<html_url="https://github.com/SmilinColleen/Tweet-
#<Later/commit/b57b44f6407355bd55f4c8d6c0b56ea53466bcdc" parents=[Hashie::Mash
#<html_url="https://github.com/SmilinColleen/Tweet-
#<Later/commit/46f8c3a82fc15f276ee399688c202c2c56e38659"
#<sha="46f8c3a82fc15f276ee399688c202c2c56e38659"
#<url="https://api.github.com/repos/SmilinColleen/Tweet-
#<Later/commits/46f8c3a82fc15f276ee399688c202c2c56e38659">]
#<sha="b57b44f6407355bd55f4c8d6c0b56ea53466bcdc"
#<url="https://api.github.com/repos/SmilinColleen/Tweet-
#<Later/commits/b57b44f6407355bd55f4c8d6c0b56ea53466bcdc">, Hashie::Mash
#<author=Hashie::Mash avatar_url="https://1.gravatar.com/avatar/e5a165454b2905
#<398d59ac5198ea450d?d=https%3A%2F%2Fidenticons.github.com%2F023e4473dbf70466e
#<f2d8cc59f7f2b43.png"
#<events_url="https://api.github.com/users/jeffreywescott/events{/privacy}"
#<followers_url="https://api.github.com/users/jeffreywescott/followers" follow
#<ing_url="https://api.github.com/users/jeffreywescott/following{/other_user}"
#<gists_url="https://api.github.com/users/jeffreywescott/gists{/gist_id}"
#<gravatar_id="e5a165454b2905398d59ac5198ea450d"
#<html_url="https://github.com/jeffreywescott" id=130597
#<login="jeffreywescott"
#<organizations_url="https://api.github.com/users/jeffreywescott/orgs" receive
#<d_events_url="https://api.github.com/users/jeffreywescott/received_events"
#<repos_url="https://api.github.com/users/jeffreywescott/repos" starred_url="h
#<ttps://api.github.com/users/jeffreywescott/starred{/owner}{/repo}" subscript
#<ions_url="https://api.github.com/users/jeffreywescott/subscriptions"
#<type="User" url="https://api.github.com/users/jeffreywescott">
#<comments_url="https://api.github.com/repos/SmilinColleen/Tweet-
#<Later/commits/46f8c3a82fc15f276ee399688c202c2c56e38659/comments"
#<commit=Hashie::Mash author=Hashie::Mash date="2013-04-23T19:34:09Z"
#<email="jeffrey.wescott@gmail.com" name="Jeffrey Wescott"> comment_count=0
#<committer=Hashie::Mash date="2013-04-23T19:34:09Z"
#<email="jeffrey.wescott@gmail.com" name="Jeffrey Wescott"> message="cleaned
#<up skeleton" tree=Hashie::Mash
#<sha="dd5541d04b7b946eb06ca2b98adcde5b8d3f3a5a"
#<url="https://api.github.com/repos/SmilinColleen/Tweet-
#<Later/git/trees/dd5541d04b7b946eb06ca2b98adcde5b8d3f3a5a">
#<url="https://api.github.com/repos/SmilinColleen/Tweet-
#<Later/git/commits/46f8c3a82fc15f276ee399688c202c2c56e38659">
#<committer=Hashie::Mash avatar_url="https://1.gravatar.com/avatar/e5a165454b2
#<905398d59ac5198ea450d?d=https%3A%2F%2Fidenticons.github.com%2F023e4473dbf704
#<66ef2d8cc59f7f2b43.png"
#<events_url="https://api.github.com/users/jeffreywescott/events{/privacy}"
#<followers_url="https://api.github.com/users/jeffreywescott/followers" follow
#<ing_url="https://api.github.com/users/jeffreywescott/following{/other_user}"
#<gists_url="https://api.github.com/users/jeffreywescott/gists{/gist_id}"
#<gravatar_id="e5a165454b2905398d59ac5198ea450d"
#<html_url="https://github.com/jeffreywescott" id=130597
#<login="jeffreywescott"
#<organizations_url="https://api.github.com/users/jeffreywescott/orgs" receive
#<d_events_url="https://api.github.com/users/jeffreywescott/received_events"
#<repos_url="https://api.github.com/users/jeffreywescott/repos" starred_url="h
#<ttps://api.github.com/users/jeffreywescott/starred{/owner}{/repo}" subscript
#<ions_url="https://api.github.com/users/jeffreywescott/subscriptions"
#<type="User" url="https://api.github.com/users/jeffreywescott">
#<html_url="https://github.com/SmilinColleen/Tweet-
#<Later/commit/46f8c3a82fc15f276ee399688c202c2c56e38659" parents=[Hashie::Mash
#<html_url="https://github.com/SmilinColleen/Tweet-
#<Later/commit/0a2f6ed4d413083773833e21d8ca7200b0338ac6"
#<sha="0a2f6ed4d413083773833e21d8ca7200b0338ac6"
#<url="https://api.github.com/repos/SmilinColleen/Tweet-
#<Later/commits/0a2f6ed4d413083773833e21d8ca7200b0338ac6">]
#<sha="46f8c3a82fc15f276ee399688c202c2c56e38659"
#<url="https://api.github.com/repos/SmilinColleen/Tweet-
#<Later/commits/46f8c3a82fc15f276ee399688c202c2c56e38659">, Hashie::Mash
#<author=Hashie::Mash avatar_url="https://1.gravatar.com/avatar/e5a165454b2905
#<398d59ac5198ea450d?d=https%3A%2F%2Fidenticons.github.com%2F023e4473dbf70466e
#<f2d8cc59f7f2b43.png"
#<events_url="https://api.github.com/users/jeffreywescott/events{/privacy}"
#<followers_url="https://api.github.com/users/jeffreywescott/followers" follow
#<ing_url="https://api.github.com/users/jeffreywescott/following{/other_user}"
#<gists_url="https://api.github.com/users/jeffreywescott/gists{/gist_id}"
#<gravatar_id="e5a165454b2905398d59ac5198ea450d"
#<html_url="https://github.com/jeffreywescott" id=130597
#<login="jeffreywescott"
#<organizations_url="https://api.github.com/users/jeffreywescott/orgs" receive
#<d_events_url="https://api.github.com/users/jeffreywescott/received_events"
#<repos_url="https://api.github.com/users/jeffreywescott/repos" starred_url="h
#<ttps://api.github.com/users/jeffreywescott/starred{/owner}{/repo}" subscript
#<ions_url="https://api.github.com/users/jeffreywescott/subscriptions"
#<type="User" url="https://api.github.com/users/jeffreywescott">
#<comments_url="https://api.github.com/repos/SmilinColleen/Tweet-
#<Later/commits/0a2f6ed4d413083773833e21d8ca7200b0338ac6/comments"
#<commit=Hashie::Mash author=Hashie::Mash date="2013-04-23T19:22:51Z"
#<email="jeffrey.wescott@gmail.com" name="Jeffrey Wescott"> comment_count=0
#<committer=Hashie::Mash date="2013-04-23T19:22:51Z"
#<email="jeffrey.wescott@gmail.com" name="Jeffrey Wescott"> message="initial
#<commit" tree=Hashie::Mash sha="86ca5f040360eb0124f08b78a116ec5b7a9b673f"
#<url="https://api.github.com/repos/SmilinColleen/Tweet-
#<Later/git/trees/86ca5f040360eb0124f08b78a116ec5b7a9b673f">
#<url="https://api.github.com/repos/SmilinColleen/Tweet-
#<Later/git/commits/0a2f6ed4d413083773833e21d8ca7200b0338ac6">
#<committer=Hashie::Mash avatar_url="https://1.gravatar.com/avatar/e5a165454b2
#<905398d59ac5198ea450d?d=https%3A%2F%2Fidenticons.github.com%2F023e4473dbf704
#<66ef2d8cc59f7f2b43.png"
#<events_url="https://api.github.com/users/jeffreywescott/events{/privacy}"
#<followers_url="https://api.github.com/users/jeffreywescott/followers" follow
#<ing_url="https://api.github.com/users/jeffreywescott/following{/other_user}"
#<gists_url="https://api.github.com/users/jeffreywescott/gists{/gist_id}"
#<gravatar_id="e5a165454b2905398d59ac5198ea450d"
#<html_url="https://github.com/jeffreywescott" id=130597
#<login="jeffreywescott"
#<organizations_url="https://api.github.com/users/jeffreywescott/orgs" receive
#<d_events_url="https://api.github.com/users/jeffreywescott/received_events"
#<repos_url="https://api.github.com/users/jeffreywescott/repos" starred_url="h
#<ttps://api.github.com/users/jeffreywescott/starred{/owner}{/repo}" subscript
#<ions_url="https://api.github.com/users/jeffreywescott/subscriptions"
#<type="User" url="https://api.github.com/users/jeffreywescott">
#<html_url="https://github.com/SmilinColleen/Tweet-
#<Later/commit/0a2f6ed4d413083773833e21d8ca7200b0338ac6" parents=[]
#<sha="0a2f6ed4d413083773833e21d8ca7200b0338ac6"
#<url="https://api.github.com/repos/SmilinColleen/Tweet-
#<Later/commits/0a2f6ed4d413083773833e21d8ca7200b0338ac6">]">


