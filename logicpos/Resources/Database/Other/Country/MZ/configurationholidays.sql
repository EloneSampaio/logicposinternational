-- Feriados MZ;

DELETE FROM cfg_configurationholidays;

INSERT INTO cfg_configurationholidays (Oid, Ord, Code, Year, Month, Day, Designation, Description, Fixed) VALUES ('f219ef4a-b672-44c4-9ace-0b624eca8bd2', 10, 10, 0,  1,  1, 'Dia da Fraternidade Universal', '', 1);
INSERT INTO cfg_configurationholidays (Oid, Ord, Code, Year, Month, Day, Designation, Description, Fixed) VALUES ('7fbdfde6-3d11-4da9-a401-e64a1793244e', 20, 20, 0,  2,  3, 'Dia dos Heróis Moçambicanos', 'Em homenagem à Eduardo Mondlane', 1);
INSERT INTO cfg_configurationholidays (Oid, Ord, Code, Year, Month, Day, Designation, Description, Fixed) VALUES ('4224e6fa-488b-44c3-b1d7-b71774c5b6ba', 30, 30, 0,  4,  7, 'Dia da Mulher Moçambicana', 'Em homenagem à Josina Machel', 1);
INSERT INTO cfg_configurationholidays (Oid, Ord, Code, Year, Month, Day, Designation, Description, Fixed) VALUES ('349a9226-a035-4b64-9fa2-e6d74a64aa0e', 40, 40, 0,  5,  1, 'Dia Internacional dos Trabalhadores', '', 1);
INSERT INTO cfg_configurationholidays (Oid, Ord, Code, Year, Month, Day, Designation, Description, Fixed) VALUES ('419418f5-da4f-4fc6-b323-55855dfe5c97', 50, 50, 0,  6, 25, 'Dia da Independência Nacional', '', 1);
INSERT INTO cfg_configurationholidays (Oid, Ord, Code, Year, Month, Day, Designation, Description, Fixed) VALUES ('06baffad-cfeb-4417-a92f-de4bd40ded36', 60, 60, 0,  9,  7, 'Dia da Vitória', 'Em homenagem à assinatura dos Acordos de Lusaka', 1);
INSERT INTO cfg_configurationholidays (Oid, Ord, Code, Year, Month, Day, Designation, Description, Fixed) VALUES ('1d946aca-b300-478b-801b-b6528e816fa1', 70, 70, 0,  9, 25, 'Dia das Forças Armadas', 'Em homenagem ao início da Luta Armada de Libertação Nacional', 1);
INSERT INTO cfg_configurationholidays (Oid, Ord, Code, Year, Month, Day, Designation, Description, Fixed) VALUES ('414e4a61-8b1d-4a57-8ccb-a634c0be786e', 80, 80, 0, 10,  4, 'Dia da Paz e Reconciliação', 'Em homenagem ao Acordo Geral de Paz', 1);
INSERT INTO cfg_configurationholidays (Oid, Ord, Code, Year, Month, Day, Designation, Description, Fixed) VALUES ('9c772705-5010-48f2-b050-f837909cae95', 90, 90, 0, 12, 25, 'Dia da Família', '', 1);

UPDATE cfg_configurationholidays SET UpdatedBy = '090c5684-52ba-4d7a-8bc3-a00320ef503d', CreatedAt = '2014-02-28 14:02:28', UpdatedAt = '2019-03-11 23:16:18';
              