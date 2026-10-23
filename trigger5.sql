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
