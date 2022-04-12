$ rails console
>> first_user = User.first
   (0.5ms)  SELECT sqlite_version(*)
  User Load (0.2ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" ASC
  LIMIT ?  [["LIMIT", 1]]
 => #<User id: 1, name: "Michael Hartl", email: "michael@example.org",
 created_at: "2019-08-20 00:39:14", updated_at: "2019-08-20 00:41:24">
>> first_user.microposts
  Micropost Load (3.2ms)  SELECT "microposts".* FROM "microposts" WHERE
  "microposts"."user_id" = ? LIMIT ?  [["user_id", 1], ["LIMIT", 11]]
 => #<ActiveRecord::Associations::CollectionProxy [#<Micropost id: 1, content:
 "First micropost!", user_id: 1, created_at: "2019-08-20 02:04:13", updated_at:
 "2019-08-20 02:04:13">, #<Micropost id: 2, content: "Second micropost",
 user_id: 1, created_at: "2019-08-20 02:04:30", updated_at: "2019-08-20
 02:04:30">]>
>> micropost = first_user.microposts.first
  Micropost Load (0.2ms)  SELECT "microposts".* FROM "microposts" WHERE
  "microposts"."user_id" = ? ORDER BY "microposts"."id" ASC LIMIT ?
  [["user_id", 1], ["LIMIT", 1]]
 => #<Micropost id: 1, content: "First micropost!", user_id: 1, created_at:
 "2019-08-20 02:04:13", updated_at: "2019-08-20 02:04:13">
>> micropost.user
 => #<User id: 1, name: "Michael Hartl", email: "michael@example.org",
 created_at: "2019-08-20 00:39:14", updated_at: "2019-08-20 00:41:24"
>> exit
