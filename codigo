-- CREATE TABLE contas (
--     id SERIAL PRIMARY KEY,
--     cliente VARCHAR(100) NOT NULL,
--     saldo NUMERIC(10, 2) NOT NULL DEFAULT 0.00
-- );


-- CREATE TABLE movimentacoes (
--     id SERIAL PRIMARY KEY,
--     conta_id INT REFERENCES contas(id),
--     tipo VARCHAR(1) CHECK (tipo IN ('C', 'D')),
--     valor NUMERIC(10, 2) NOT NULL,
--     data_movimentacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );

-- create or replace function fn_atualiza_saldo_conta()
-- 	returns trigger as $$
-- begin
-- if new.tipo = 'C' then
-- update contas set saldo = saldo + NEW.valor where id = new.conta_id;
-- elsif
-- new.tipo = 'D' then 
-- update contas set saldo = saldo - new.valor where id = new.conta_id;
-- end if;
-- return new;
-- end;
-- $$ language plpgsql;

-- create trigger trg_atualiza_saldo_conta
-- after insert on movimentacoes
-- for each row
-- execute function fn_atualiza_saldo_conta();


-- insert into contas (cliente, saldo) values ('jao',  1300.00);
-- insert into movimentacoes (conta_id, tipo, valor) values (31,'D', 800.00);
-- select * from contas where id = 1
