create table comment(
    comment_id INT NOT NULL AUTO_INCREMENT,
    comment_username varchar(50) not null,
    comment_content varchar(400) not null,
    comment_time datetime NULL,
    PRIMARY KEY(comment_id)
);

insert into comment(comment_username,comment_content,comment_time)
values("admin","test1","2018-12-10 19:30"),("jc","hahaha","2018-12-10 20:00"),("jc","emmmmmm","2018-12-11 8:48");