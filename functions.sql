CREATE OR REPLACE FUNCTION check_if_negative()
RETURNS TRIGGER AS $$
BEGIN
    IF (NEW.cena_za_sztuke <= 0) THEN
        RETURN NULL;
    ELSE 
        RETURN NEW;
  END IF;
END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION check_if_correct_date()
RETURNS TRIGGER AS $$
BEGIN
    IF (NEW.data_sprzedaży > CURRENT_DATE) THEN
        RETURN NULL;
    ELSE 
        RETURN NEW;
  END IF;
END;
$$ LANGUAGE plpgsql;
