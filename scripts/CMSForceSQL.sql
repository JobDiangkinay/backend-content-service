/*Setup Script*/

drop table content_module;
drop table module;
drop table content;



create table content(
c_id number (10) primary key,
title varchar2 (200) not null,
format varchar2 (200) not null,
description varchar2 (200) not null,
url varchar2 (200) not null,
created number (20),
last_modified number (20)
);



create table module(
m_id number (10) primary key,
subject varchar2 (200) unique,
created number (20)
);


create table link(
cm_id number (10) primary key,
fk_c number (10) ,
affiliation varchar2 (200),
fk_m number (10),
foreign key (fk_c) references content(c_id) on delete cascade,
foreign key (fk_m) references module(m_id)on delete cascade
);

create table joins(
    j_id int PRIMARY KEY,
    fk_m_parent int,
    fk_m_child int,
    FOREIGN KEY (fk_m_parent) REFERENCES module(m_id) on DELETE CASCADE,
    FOREIGN KEY (fk_m_child) REFERENCES module(m_id) on DELETE CASCADE
);

create sequence HIBERNATE_SEQUENCE;