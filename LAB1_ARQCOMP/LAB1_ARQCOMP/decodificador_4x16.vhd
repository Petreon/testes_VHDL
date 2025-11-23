architecture behavioral of decodificador_4x16 is
begin
    process(entrada)
    begin
        case entrada is
            when "0000" => saida <= "0000000000000001";
            when "0001" => saida <= "0000000000000010";
            when "0010" => saida <= "0000000000000100";
            when "0011" => saida <= "0000000000001000";
            when "0100" => saida <= "0000000000010000";
            when "0101" => saida <= "0000000000100000";
            when "0110" => saida <= "0000000001000000";
            when "0111" => saida <= "0000000010000000";
            when "1000" => saida <= "0000000100000000";
            when "1001" => saida <= "0000001000000000";
            when "1010" => saida <= "0000010000000000";
            when "1011" => saida <= "0000100000000000";
            when "1100" => saida <= "0001000000000000";
            when "1101" => saida <= "0010000000000000";
            when "1110" => saida <= "0100000000000000";
            when "1111" => saida <= "1000000000000000";
            when others => saida <= "0000000000000000";
        end case;
    end process;
end behavioral;
