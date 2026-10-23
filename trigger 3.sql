-- create table funcionarios(
-- id serial primary key,
-- nome varchar(200) not null,
-- cargo varchar(100) not null,
-- salario numeric(10, 2) not null
-- );

-- create table historico_carreira(
-- id serial primary key,
-- funcionario_id int references funcionarios(id),
-- cargo_antigo varchar(200) not null,
-- cargo_novo varchar(200) not null,
-- salario_antigo numeric(10, 2) not null,
-- salario_novo numeric (10, 2) not null,
-- data_alteracao timestamp default current_timestamp
-- );


-- create or replace function fn_historico_carreira()
-- returns trigger as $$
-- begin
-- if old.cargo is distinct from new.cargo or old.salario is distinct from new.salario then
-- insert into historico_carreira(funcionario_id, cargo_antigo, cargo_novo, salario_antigo, salario_novo) values
-- (old.id, old.cargo, new.cargo, old.salario, new.salario);
-- end if;
-- return new;
-- end;
-- $$ language plpgsql;

-- create trigger trg_historico_carreira
-- after update on funcionarios
-- for each row
-- execute function fn_historico_carreira();

