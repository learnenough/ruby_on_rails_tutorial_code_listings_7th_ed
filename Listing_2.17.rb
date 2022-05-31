$ rails console
>> first_user = User.first
User Load (0.1ms)  SELECT "users".* FROM "users" ORDER BY "users"."id"
ASC LIMIT ?  [["LIMIT", 1]]
 =>

>> first_user
 =>
#<User:0x00007ffbf1331658
 id: 1,
 name: "Michael Hartl",
 email: "michael@example.org ",
 created_at: Thu, 10 Mar 2022 00:23:31.441663000 UTC +00:00,
 updated_at: Thu, 10 Mar 2022 00:25:04.172206000 UTC +00:00>

#<User:0x00007ffbf1331658

>> first_user.microposts
  Micropost Load (0.2ms)  SELECT "microposts".* FROM "microposts"
  WHERE "microposts"."user_id" = ?  [["user_id", 1]]
 =>
[#<Micropost:0x00007ffbf16807a0
  id: 1,
  content: "First micropost!",
  user_id: 1,
  created_at: Thu, 10 Mar 2022 00:46:02.263125000 UTC +00:00,
  updated_at: Thu, 10 Mar 2022 00:46:02.263125000 UTC +00:00>,
 #<Micropost:0x00007ffbf1653a70
  id: 2,
  content: "Second micropost",
  user_id: 1,
  created_at: Thu, 10 Mar 2022 00:46:14.079131000 UTC +00:00,
  updated_at: Thu, 10 Mar 2022 00:46:14.079131000 UTC +00:00>]

>> micropost = first_user.microposts.first
 =>
#<Micropost:0x00007ffbf16807a0
...
>> micropost
 =>
#<Micropost:0x00007ffbf16807a0
 id: 1,
 content: "First micropost!",
 user_id: 1,
 created_at: Thu, 10 Mar 2022 00:46:02.263125000 UTC +00:00,
 updated_at: Thu, 10 Mar 2022 00:46:02.263125000 UTC +00:00>

>> micropost.user
 =>
#<User:0x00007ffbf1331658
 id: 1,post:0
 name: "Michael Hartl",
 email: "michael@example.org ",
 created_at: Thu, 10 Mar 2022 00:23:31.441663000 UTC +00:00,
 updated_at: Thu, 10 Mar 2022 00:25:04.172206000 UTC +00:00>

>> exit
