CREATE OR REPLACE FUNCTION check_if_negative()
RETURNS TRIGGER AS $$
BEGIN
    IF (NEW.cena_za_sztuke <= 0) THEN
    RETURN NEW;
  END IF;
END;
$$ LANGUAGE plpgsql;
