use avaliacao_22c;

INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) VALUES
('As Crônicas de Nárnia', 'C.S Lewis', 1950, TRUE, 'Fantasia', '978-0064471190', 'HarperCollins', 768, 'Frânces');

UPDATE Livros
set disponivel = FALSE
where ano_publicacao < 1900;

UPDATE Livros
set editora = 'Plume books'
where ano_publicacao = 1984;

DELETE from Livros
where idioma = 'Frânces' and ano_publicacao < 2000;

SELECT * from Livros
where quantidade_paginas > 600;

SELECT categoria, count(categoria)
from Livros
GROUP BY categoria
HAVING count(categoria);

SELECT *
from Livros
limit 5 offset 175;

SELECT AVG(quantidade_paginas)
from Livros;

SELECT *
from Livros
ORDER BY ano_publicacao DESC;

SELECT *
from Livros
where titulo like 'S%' and ano_publicacao between 1970 and 1990;