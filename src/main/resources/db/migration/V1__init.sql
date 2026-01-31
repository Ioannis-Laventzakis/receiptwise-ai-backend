// Initial migration to create the expenses table
create table if not exists expenses (
                                        id bigserial primary key,
                                        title varchar(255) not null,
    amount numeric(12,2) not null,
    currency varchar(3) not null default 'EUR',
    expense_date date not null,
    created_at timestamp not null default now()
    );
