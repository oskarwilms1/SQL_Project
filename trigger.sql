CREATE TRIGGER on_insert_update_sprzedaż
BEFORE UPDATE OR INSERT ON sprzedaż
FOR EACH ROW
EXECUTE FUNCTION check_if_negative();
