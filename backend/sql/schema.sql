CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    currency VARCHAR(3) DEFAULT 'USD',
    created_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE categories(
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    name VARCHAR(50) NOT NULL,
    type VARCHAR(10) NOT NULL CHECK(type IN ('income','expense')),
    icon VARCHAR(50),
    color VARCHAR(10),
    is_default BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    UNIQUE(user_id, name, type)
);

create table transactions(
    	id serial primary key,
        user_id int not null references users(id) on delete cascade,
        category_id int references categories(id) on delete set null,
        amount numeric(12,2) not null check(amount>0),
        type varchar(10) not null check(type in('income','expense')),
        description varchar(255),
        notes text,
        transaction_date date not null,
        created_at timestamptz default now()
);


create index idx_txn_user_date on transactions(user_id, transaction_date desc);
create index idx_txn_category on transactions(category_id);



create table budgets(
    id serial primary key,
    user_id int not null references users(id) on delete cascade,
    category_id int not null references categories(id) on delete cascade,
    amount numeric(12,2) not null check(amount>0),
    period varchar(10) not null default 'monthly' CHECK(period IN ('weekly','monthly','yearly')),
    start_date date not null,
    created_at timestamptz default now(),
    unique (user_id,category_id,period)
);


create table ai_insights(
    id serial primary key,
    user_id int not null references users(id) on delete cascade,
    insight_type varchar(50) not null,
    period_start date,
    period_end date,
    content_json jsonb not null,
    created_at timestamptz default now()
    
);


create index idx_insights_user_created on ai_insights(user_id,created_at desc);