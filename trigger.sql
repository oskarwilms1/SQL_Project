CREATE TRIGGER on_insert_update_sprzedaż
BEFORE UPDATE OR INSERT ON sprzedaż
FOR EACH ROW
EXECUTE PROCEDURE check_if_negative();


CREATE TRIGGER on_insert_sprzedaż
BEFORE INSERT ON sprzedaż
FOR EACH ROW
EXECUTE PROCEDURE check_if_correct_date();
