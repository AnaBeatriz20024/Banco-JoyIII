CREATE OR REPLACE FUNCTION contar_clientes_por_dia(data_cadastro DATE)
RETURNS INTEGER AS $$
DECLARE
    total_clientes INTEGER;
BEGIN
    SELECT COUNT(*) INTO total_clientes 
    FROM clientes 
    WHERE DATE(data_cadastro) = data_cadastro;

    RETURN total_clientes;
END;
$$ LANGUAGE plpgsql;
