-- create table reservas(
-- id serial primary key,
-- numero_quarto varchar(100) not null,
-- data_checkin date not null,
-- data_checkout date not null,
-- valor_diaria numeric(10, 2) not null,
-- valor_total numeric(10, 2)
-- );

-- create or replace function fn_processa_reserva()
-- return trigger as $$
-- declare 	
-- dias_estadia int;
-- begin

-- if

-- new.data_checkout <= new.data_checkin then
-- raise exception 'A data de check-out (%) precisa ser posterior à data de check-in (%)!', 
-- new.data_checkout, new.data_checkin;

-- end if;

-- dias_estada := new.data_Checkout - new.data_checkin;

-- new.valor_total := dias_estadia * new.valor_diaria;

-- return new;
-- end;

-- $$ language plpgsql;

-- create trigger trg_processa_reserva
-- before insert or update on reservas
-- for each row
-- execute function fn_processa_reserva();

-- INSERT INTO reservas (numero_quarto, data_checkin, data_checkout, valor_diaria)
-- VALUES (101, '2026-11-10', '2026-11-05', 200.00); -- Deve falhar!


-- INSERT INTO reservas (numero_quarto, data_checkin, data_checkout, valor_diaria)
-- VALUES (101, '2026-11-01', '2026-11-06', 200.00);
-- SELECT * FROM reservas; -- O valor_total deve ser 1000.00 gerado automaticamente!
