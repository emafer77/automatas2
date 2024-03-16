CREATE TABLE usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    edad INT,
    sexo CHAR(1),
    email VARCHAR(255) NOT NULL,
    contrasena VARCHAR(255) NOT NULL,
    datos_personales JSON
);


CREATE TABLE musculos (
    id_musculo INT 
    AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion TEXT NOT NULL,
    imagen VARCHAR(255)
);


CREATE TABLE ejercicios (
    ejercicio_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT,
    video_url VARCHAR(255),
    imagen VARCHAR(255),
    datos_cientificos JSON,
    id_musculo INT,
    FOREIGN KEY (id_musculo) REFERENCES musculos(id_musculo)
);

CREATE TABLE ejercicios_en_casa (
    ejercicio_en_casa_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT,
    video_url VARCHAR(255),
    imagen VARCHAR(255),
    datos_cientificos JSON,
    zona_ejercicio INT -- Identificador de la región de ejercicio
);


CREATE TABLE rutinas (
    id_entrenamiento INT AUTO_INCREMENT PRIMARY KEY,
    ejercicio INT,
    especificaciones VARCHAR(255),
    FOREIGN KEY (ejercicio) REFERENCES ejercicios(ejercicio_id)
);

--Musculos de la espalda
INSERT INTO musculos (nombre, descripcion, imagen) VALUES 
('Dorsal ancho', 'Más comúnmente conocidos como "los dorsales", estos dos músculos en forma de triángulo ocupan la mayor parte de la espalda. Se extienden desde la parte superior del brazo (húmero) hasta la pelvis y cruzan las costillas. Su función principal es rotar internamente, extender y llevar el brazo hacia la línea media del cuerpo (movimiento también conocido como aducción), explica Jennifer Novak, maestra en ciencias, especialista en entrenamiento de fuerza y acondicionamiento y dueña de PEAK Symmetry Performance Strategies, en Atlanta, Georgia. Como tal, los dorsales están muy involucrados en ejercicios como las dominadas y los jalones laterales, y en actividades como el remo y la natación.', 'https://imgs.search.brave.com/55ag274E65ZFEPeGk2edf03TQMSjJyYKxBFVYwa_Djw/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9hbmF0/b21pYXRvcG9ncmFm/aWNhLmNvbS93cC1j/b250ZW50L3VwbG9h/ZHMvMjAxOS8wMS9t/JUMzJUJBc2N1bG8t/ZG9yc2FsLWFuY2hv/LTEtMS5qcGc'),
('Trapecio', 'Los trapecios son otro par de músculos en forma de triángulo que están en la espalda. Comienzan en la base del cuello, se extienden a través de los hombros y bajan hasta la mitad de la espalda. Los trapecios te permiten levantar y rotar la cabeza, llevar los omóplatos hacia adentro y hacia abajo cuando mantienes una postura erguida y torcer el torso, señala la Clínica Cleveland. Trabajarás estos músculos cuando realices ejercicios como el remo, las dominadas, los encogimientos de hombros y los jalones laterales.', 'https://imgs.search.brave.com/F7bUWjrFFJ4e7hbZY5ggwLQFKWXGRW8rwSQCUNFPqpA/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tdXNj/dWxvYW11c2N1bG8u/ZmlsZXMud29yZHBy/ZXNzLmNvbS8yMDE0/LzEwL3RyYXBlY2lv/LnBuZz93PTc1MA'),
('Romboides', 'Los romboides son dos músculos separados en la parte superior de la espalda: el romboide mayor y el romboide menor. Se ubican debajo de los trapecios y van desde la columna vertebral hasta el borde del omóplato. Estos músculos tiran de los omóplatos hacia la línea media, como cuando se hace un remo inclinado, explica Novak. Los romboides también se activan durante ejercicios como la mosca inversa y los jalones hacia la cara (esto implica tirar de la pesa hacia la frente con un equipo de suspensión, una banda de resistencia o una polea de cable manteniendo los codos en alto).', 'https://imgs.search.brave.com/HaUozQDOnt2UpgSvrvOJANqQrZDMfPEw71KMttVzZPk/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9lcmVz/ZGVwb3J0aXN0YS5j/b20vd3AtY29udGVu/dC91cGxvYWRzLzIw/MTkvMDQvYW5hdG9t/aWEtZGUtbG9zLW11/c2N1bG9zLXJvbWJv/aWRlcy5qcGc_YXV0/bz13ZWJwJnF1YWxp/dHk9NjAmd2lkdGg9/MTkyMCZjcm9wPTE2/Ojksc21hcnQsc2Fm/ZQ');

--Musculos del pectoral
INSERT INTO musculos (nombre, descripcion, imagen) VALUES 
('Pectoral Mayor - Superior', 'La parte superior del pectoral mayor se enfoca en la porción clavicular y está más involucrada en la flexión del brazo hacia adelante. Puedes trabajar esta área específica con ejercicios como el press inclinado.', 'https://imgs.search.brave.com/aSYin9CVuKbQhB5nETu2OZ5RuvJ1ci_7Kg191DhI_LI/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9jYWxp/c3RlbmlhamhrLmZp/bGVzLndvcmRwcmVz/cy5jb20vMjAxOC8w/NC9jaGVzdDNwb3J0/aW9ucy5qcGc_dz01/NDMmaD0zMjc'),
('Pectoral Mayor - Medio', 'La parte media del pectoral mayor abarca la porción esternal y es clave para la aducción y rotación interna del brazo. Ejercicios como el press de banca trabajan esta área de manera efectiva.', 'https://imgs.search.brave.com/aSYin9CVuKbQhB5nETu2OZ5RuvJ1ci_7Kg191DhI_LI/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9jYWxp/c3RlbmlhamhrLmZp/bGVzLndvcmRwcmVz/cy5jb20vMjAxOC8w/NC9jaGVzdDNwb3J0/aW9ucy5qcGc_dz01/NDMmaD0zMjc'),
('Pectoral Mayor - Inferior', 'La parte inferior del pectoral mayor se concentra en la porción costal y es fundamental para movimientos como la aducción y rotación interna del brazo. Puedes desarrollar esta área con ejercicios como las aperturas de pecho y las flexiones de brazos.', 'https://imgs.search.brave.com/aSYin9CVuKbQhB5nETu2OZ5RuvJ1ci_7Kg191DhI_LI/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9jYWxp/c3RlbmlhamhrLmZp/bGVzLndvcmRwcmVz/cy5jb20vMjAxOC8w/NC9jaGVzdDNwb3J0/aW9ucy5qcGc_dz01/NDMmaD0zMjc');

--Musculos del hombro
INSERT INTO musculos (nombre, descripcion, imagen) VALUES 
('Deltoides - Parte Anterior', 'La parte anterior del deltoides se encuentra en la parte frontal del hombro y es responsable de la flexión y elevación del brazo hacia adelante. Puedes trabajar esta parte con ejercicios como elevaciones frontales y press de hombros.', 'https://imgs.search.brave.com/sIzFrsuuEZOgaYA5ANV0rXGfsBHLb6EtA8PY2BOHHfI/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudGhjZG4uY29t/L2ltYWdlcy92Mi93/cC1jb250ZW50L3Vw/bG9hZHMvc2l0ZXMv/NDUwLzIwMTUvMDYv/MDkwMjQxMzYvYW5h/dG9taWEuanBnP3dp/ZHRoPTcwMA'),
('Deltoides - Parte Media', 'La parte media del deltoides abarca la parte lateral del hombro y contribuye a la elevación lateral del brazo. Movimientos como elevaciones laterales y press militar son efectivos para desarrollar esta área.', 'https://imgs.search.brave.com/sIzFrsuuEZOgaYA5ANV0rXGfsBHLb6EtA8PY2BOHHfI/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudGhjZG4uY29t/L2ltYWdlcy92Mi93/cC1jb250ZW50L3Vw/bG9hZHMvc2l0ZXMv/NDUwLzIwMTUvMDYv/MDkwMjQxMzYvYW5h/dG9taWEuanBnP3dp/ZHRoPTcwMA'),
('Deltoides - Parte Posterior', 'La parte posterior del deltoides se encuentra en la parte trasera del hombro y está involucrada en la extensión y elevación del brazo hacia atrás. Ejercicios como elevaciones posteriores y remo con barra pueden fortalecer esta región.', 'https://imgs.search.brave.com/sIzFrsuuEZOgaYA5ANV0rXGfsBHLb6EtA8PY2BOHHfI/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudGhjZG4uY29t/L2ltYWdlcy92Mi93/cC1jb250ZW50L3Vw/bG9hZHMvc2l0ZXMv/NDUwLzIwMTUvMDYv/MDkwMjQxMzYvYW5h/dG9taWEuanBnP3dp/ZHRoPTcwMA');

-- Músculos del brazo
INSERT INTO musculos (nombre, descripcion, imagen) VALUES 
('Bíceps Braquial - Cabeza Corta', 'La cabeza corta del bíceps braquial es una de las dos cabezas que forman este músculo. Se origina en la parte coracoides de la escápula y contribuye principalmente a la flexión del codo. Movimientos como curls de bíceps ayudan a desarrollar esta parte.', 'https://imgs.search.brave.com/pHuzVV4xDQRjWXp3m2F3vUMZ2Iu-ceekmo21urNcFns/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9lbnRy/ZW5hci5tZS9ibG9n/L3dwLWNvbnRlbnQv/dXBsb2Fkcy8yMDE3/LzAzL2N1cmwtZGUt/YiVDMyVBRGNlcHMt/bXVzY3Vsby0yNzd4/MzAwLmpwZw'),
('Bíceps Braquial - Cabeza Larga', 'La cabeza larga del bíceps braquial se origina en la tuberosidad supraglenoidea de la escápula y también participa en la flexión del codo. Ejercicios como curls de bíceps y dominadas trabajan especialmente esta cabeza del bíceps.', 'https://imgs.search.brave.com/pHuzVV4xDQRjWXp3m2F3vUMZ2Iu-ceekmo21urNcFns/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9lbnRy/ZW5hci5tZS9ibG9n/L3dwLWNvbnRlbnQv/dXBsb2Fkcy8yMDE3/LzAzL2N1cmwtZGUt/YiVDMyVBRGNlcHMt/bXVzY3Vsby0yNzd4/MzAwLmpwZw');

INSERT INTO musculos (nombre, descripcion, imagen) VALUES 
('Tríceps Braquial - Cabeza Larga', 'La cabeza larga del tríceps braquial es una de las tres cabezas que forman el tríceps. Se origina en la tuberosidad infraglenoidea de la escápula y es responsable de la extensión del codo. Puedes trabajar esta cabeza con ejercicios como fondos en paralelas y press de tríceps.', 'https://imgs.search.brave.com/B-MIfQ-C6oEsYDBiobFWckQLagZlXONl_xswtekOAxU/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9maXRn/ZW5lcmF0aW9uLmVz/L3dwLWNvbnRlbnQv/dXBsb2Fkcy8yMDIz/LzEyL3RyaWNlcHMt/My0xMDI0eDU3Ni5w/bmc'),
('Tríceps Braquial - Cabeza Lateral', 'La cabeza lateral del tríceps braquial se origina en la parte posterior del húmero y contribuye a la extensión del codo. Movimientos como extensiones de tríceps con polea y dips son efectivos para trabajar esta cabeza.', 'https://imgs.search.brave.com/B-MIfQ-C6oEsYDBiobFWckQLagZlXONl_xswtekOAxU/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9maXRn/ZW5lcmF0aW9uLmVz/L3dwLWNvbnRlbnQv/dXBsb2Fkcy8yMDIz/LzEyL3RyaWNlcHMt/My0xMDI0eDU3Ni5w/bmc'),
('Tríceps Braquial - Cabeza Medial', 'La cabeza medial del tríceps braquial se encuentra en la parte posterior del húmero, al igual que la cabeza lateral, y también participa en la extensión del codo. Ejercicios como fondos en máquina de tríceps y patadas de tríceps son útiles para desarrollar esta cabeza.', 'https://imgs.search.brave.com/B-MIfQ-C6oEsYDBiobFWckQLagZlXONl_xswtekOAxU/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9maXRn/ZW5lcmF0aW9uLmVz/L3dwLWNvbnRlbnQv/dXBsb2Fkcy8yMDIz/LzEyL3RyaWNlcHMt/My0xMDI0eDU3Ni5w/bmc');

-- Músculos del antebrazo
INSERT INTO musculos (nombre, descripcion, imagen) VALUES 
('Flexores del Antebrazo', 'Los flexores del antebrazo incluyen músculos como el flexor carpi radialis, flexor carpi ulnaris y palmar largo. Estos músculos son responsables de la flexión de la muñeca y de los dedos. Puedes trabajarlos con ejercicios como curls de muñeca y curl de antebrazo.', 'https://imgs.search.brave.com/wCfrpGAFCZ1dBZ5Vqn9IKrMadA3Af4OpgR7NrVUXbAQ/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9jZG4u/bGVjdHVyaW8uY29t/L2Fzc2V0cy9SYWRp/YWwtbmVydmUtYXMt/aXQtcGFzc2VzLXRo/cm91Z2gtdGhlLWZv/cmVhcm0tZmVhdHVy/aW5nLXRoZS1tdXNj/bGVzLWl0LWlubmVy/dmF0ZXMtMTIwMHg1/MjkuanBn'),
('Extensores del Antebrazo', 'Los extensores del antebrazo incluyen músculos como el extensor carpi radialis longus, extensor carpi radialis brevis y extensor carpi ulnaris. Estos músculos son fundamentales para la extensión de la muñeca y de los dedos. Ejercicios como el reverse curl y las extensiones de muñeca son efectivos para fortalecer estos músculos.', 'https://imgs.search.brave.com/wCfrpGAFCZ1dBZ5Vqn9IKrMadA3Af4OpgR7NrVUXbAQ/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9jZG4u/bGVjdHVyaW8uY29t/L2Fzc2V0cy9SYWRp/YWwtbmVydmUtYXMt/aXQtcGFzc2VzLXRo/cm91Z2gtdGhlLWZv/cmVhcm0tZmVhdHVy/aW5nLXRoZS1tdXNj/bGVzLWl0LWlubmVy/dmF0ZXMtMTIwMHg1/MjkuanBn'),
('Pronadores y Supinadores', 'Además de los flexores y extensores, los músculos pronadores y supinadores, como el pronador teres y el supinador, son importantes para la rotación del antebrazo. Puedes trabajar estos músculos realizando ejercicios de rotación de muñeca y rotación de antebrazo.', 'https://imgs.search.brave.com/wCfrpGAFCZ1dBZ5Vqn9IKrMadA3Af4OpgR7NrVUXbAQ/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9jZG4u/bGVjdHVyaW8uY29t/L2Fzc2V0cy9SYWRp/YWwtbmVydmUtYXMt/aXQtcGFzc2VzLXRo/cm91Z2gtdGhlLWZv/cmVhcm0tZmVhdHVy/aW5nLXRoZS1tdXNj/bGVzLWl0LWlubmVy/dmF0ZXMtMTIwMHg1/MjkuanBn');

-- Músculos abdominales
INSERT INTO musculos (nombre, descripcion, imagen) VALUES 
('Recto Abdominal', 'El recto abdominal es el músculo principal de la pared abdominal. Se extiende desde el esternón hasta la sínfisis púbica y es responsable de la flexión del tronco. Puedes trabajar el recto abdominal con ejercicios como crunches y abdominales.', 'https://imgs.search.brave.com/ZeOMph-43jwMwThdj1NvLKctfVd9fYSFE8r5rR8zO68/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9lcmVz/ZGVwb3J0aXN0YS5j/b20vd3AtY29udGVu/dC91cGxvYWRzLzIw/MTkvMDEvYWJkb21p/bmFsZXMtdG9kb3Mt/bG9zLW11c2N1bG9z/LmpwZz9hdXRvPXdl/YnAmcXVhbGl0eT02/MCZ3aWR0aD0xOTIw/JmNyb3A9MTY6OSxz/bWFydCxzYWZl'),
('Oblicuos Externos', 'Los oblicuos externos son músculos ubicados en los lados del abdomen. Ayudan en la rotación y flexión lateral del tronco. Puedes fortalecer los oblicuos externos con ejercicios como las torsiones y los crunches oblicuos.', 'https://imgs.search.brave.com/ZeOMph-43jwMwThdj1NvLKctfVd9fYSFE8r5rR8zO68/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9lcmVz/ZGVwb3J0aXN0YS5j/b20vd3AtY29udGVu/dC91cGxvYWRzLzIw/MTkvMDEvYWJkb21p/bmFsZXMtdG9kb3Mt/bG9zLW11c2N1bG9z/LmpwZz9hdXRvPXdl/YnAmcXVhbGl0eT02/MCZ3aWR0aD0xOTIw/JmNyb3A9MTY6OSxz/bWFydCxzYWZl'),
('Oblicuos Internos', 'Los oblicuos internos están ubicados debajo de los oblicuos externos y también contribuyen a la rotación y flexión lateral del tronco. Ejercicios como las torsiones y los ejercicios de oblicuos ayudan a trabajar estos músculos.', 'https://imgs.search.brave.com/ZeOMph-43jwMwThdj1NvLKctfVd9fYSFE8r5rR8zO68/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9lcmVz/ZGVwb3J0aXN0YS5j/b20vd3AtY29udGVu/dC91cGxvYWRzLzIw/MTkvMDEvYWJkb21p/bmFsZXMtdG9kb3Mt/bG9zLW11c2N1bG9z/LmpwZz9hdXRvPXdl/YnAmcXVhbGl0eT02/MCZ3aWR0aD0xOTIw/JmNyb3A9MTY6OSxz/bWFydCxzYWZl'),
('Transverso Abdominal', 'El transverso abdominal es el músculo más profundo de la pared abdominal y actúa como un corsé natural que ayuda a estabilizar la columna vertebral. Puedes fortalecer el transverso abdominal con ejercicios de contracción y respiración profunda.', 'https://imgs.search.brave.com/ZeOMph-43jwMwThdj1NvLKctfVd9fYSFE8r5rR8zO68/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9lcmVz/ZGVwb3J0aXN0YS5j/b20vd3AtY29udGVu/dC91cGxvYWRzLzIw/MTkvMDEvYWJkb21p/bmFsZXMtdG9kb3Mt/bG9zLW11c2N1bG9z/LmpwZz9hdXRvPXdl/YnAmcXVhbGl0eT02/MCZ3aWR0aD0xOTIw/JmNyb3A9MTY6OSxz/bWFydCxzYWZl');

-- Músculos de las piernas
INSERT INTO musculos (nombre, descripcion, imagen) VALUES 
('Cuádriceps - Recto Femoral', 'El recto femoral es parte del cuádriceps y se encuentra en la parte frontal del muslo. Es responsable de la extensión de la rodilla y ayuda en la flexión de la cadera. Puedes trabajar el recto femoral con ejercicios como sentadillas y extensiones de piernas.', 'https://imgs.search.brave.com/7ltSKTSQW5pO565DmkVDhQAztkXgUoJGOR2nAms9srE/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9sYWZp/c2lvdGVyYXBpYS5u/ZXQvd3AtY29udGVu/dC91cGxvYWRzLzIw/MjAvMDkvbXVzY3Vs/by1jdWFkcmljZXBz/LTcyNHgxMDI0LnBu/Zw'),
('Cuádriceps - Vasto Lateral', 'El vasto lateral es uno de los tres músculos que conforman el cuádriceps. Se encuentra en la parte externa del muslo y contribuye a la extensión de la rodilla. Ejercicios como sentadillas y prensa de piernas fortalecen el vasto lateral.', 'https://imgs.search.brave.com/7ltSKTSQW5pO565DmkVDhQAztkXgUoJGOR2nAms9srE/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9sYWZp/c2lvdGVyYXBpYS5u/ZXQvd3AtY29udGVu/dC91cGxvYWRzLzIw/MjAvMDkvbXVzY3Vs/by1jdWFkcmljZXBz/LTcyNHgxMDI0LnBu/Zw'),
('Cuádriceps - Vasto Medial', 'El vasto medial es otro componente del cuádriceps y se encuentra en la parte interna del muslo. Participa en la extensión de la rodilla y es esencial para la estabilidad de la rótula. Ejercicios como sentadillas y prensa de piernas trabajan el vasto medial.', 'https://imgs.search.brave.com/7ltSKTSQW5pO565DmkVDhQAztkXgUoJGOR2nAms9srE/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9sYWZp/c2lvdGVyYXBpYS5u/ZXQvd3AtY29udGVu/dC91cGxvYWRzLzIw/MjAvMDkvbXVzY3Vs/by1jdWFkcmljZXBz/LTcyNHgxMDI0LnBu/Zw'),
('Cuádriceps - Vasto Intermedio', 'El vasto intermedio es el tercer músculo del cuádriceps y se encuentra entre el vasto lateral y el vasto medial. También contribuye a la extensión de la rodilla. Puedes fortalecer el vasto intermedio con ejercicios de extensión de piernas y sentadillas.', 'https://imgs.search.brave.com/7ltSKTSQW5pO565DmkVDhQAztkXgUoJGOR2nAms9srE/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9sYWZp/c2lvdGVyYXBpYS5u/ZXQvd3AtY29udGVu/dC91cGxvYWRzLzIw/MjAvMDkvbXVzY3Vs/by1jdWFkcmljZXBz/LTcyNHgxMDI0LnBu/Zw');

INSERT INTO musculos (nombre, descripcion, imagen) VALUES 
('Bíceps Femoral', 'El bíceps femoral es uno de los músculos principales de los isquiotibiales y se encuentra en la parte posterior del muslo. Contribuye a la flexión de la rodilla y la extensión de la cadera. Puedes trabajar el bíceps femoral con ejercicios como curls de piernas y peso muerto.', 'https://imgs.search.brave.com/D_FfXGVaim7T191rwlGZlwZx8sKXfiD8IQDJXSmUjDM/rs:fit:860:0:0/g:ce/aHR0cHM6Ly90dWN1/ZXJwb2h1bWFuby5j/b20vd3AtY29udGVu/dC91cGxvYWRzLzIw/MTgvMDkvSXNxdWlv/dGliaWFsZXMtZmFj/dG9yZXMtZGUtcmll/c2dvLXF1ZS1jYXVz/YW4tbGVzaW9uZXMt/ZW4tZXN0b3MtbXVz/Y3Vsb3MtMS0zMDB4/MjcyLmpwZw'),
('Semitendinoso', 'El semitendinoso es otro músculo de los isquiotibiales y se encuentra en la parte interna del muslo. Ayuda en la flexión de la rodilla y la extensión de la cadera. Ejercicios como curls de piernas y peso muerto trabajan el semitendinoso.', 'https://imgs.search.brave.com/D_FfXGVaim7T191rwlGZlwZx8sKXfiD8IQDJXSmUjDM/rs:fit:860:0:0/g:ce/aHR0cHM6Ly90dWN1/ZXJwb2h1bWFuby5j/b20vd3AtY29udGVu/dC91cGxvYWRzLzIw/MTgvMDkvSXNxdWlv/dGliaWFsZXMtZmFj/dG9yZXMtZGUtcmll/c2dvLXF1ZS1jYXVz/YW4tbGVzaW9uZXMt/ZW4tZXN0b3MtbXVz/Y3Vsb3MtMS0zMDB4/MjcyLmpwZw'),
('Semimembranoso', 'El semimembranoso es un músculo profundo de los isquiotibiales y también se encuentra en la parte interna del muslo. Contribuye a la flexión de la rodilla y la extensión de la cadera. Puedes fortalecer el semimembranoso con ejercicios como curls de piernas y peso muerto.', 'https://imgs.search.brave.com/D_FfXGVaim7T191rwlGZlwZx8sKXfiD8IQDJXSmUjDM/rs:fit:860:0:0/g:ce/aHR0cHM6Ly90dWN1/ZXJwb2h1bWFuby5j/b20vd3AtY29udGVu/dC91cGxvYWRzLzIw/MTgvMDkvSXNxdWlv/dGliaWFsZXMtZmFj/dG9yZXMtZGUtcmll/c2dvLXF1ZS1jYXVz/YW4tbGVzaW9uZXMt/ZW4tZXN0b3MtbXVz/Y3Vsb3MtMS0zMDB4/MjcyLmpwZw');

-- Músculos de glúteos
INSERT INTO musculos (nombre, descripcion, imagen) VALUES 
('Glúteo Mayor', 'El glúteo mayor es el músculo más grande de los glúteos y se encuentra en la parte posterior de las nalgas. Es responsable de la extensión y abducción de la cadera. Puedes fortalecer el glúteo mayor con ejercicios como sentadillas, peso muerto y elevaciones de cadera.', 'https://imgs.search.brave.com/ejASDzmEkTmzSWlM7ss_MxY0VfJCHCwHsStxUH6PLf8/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/aG91c2VvZnBlYWNo/LmNvbS93cC1jb250/ZW50L3VwbG9hZHMv/MjAyMC8wNS9nbHV0/ZS1tdXNjbGVzLTEu/anBn'),
('Glúteo Medio', 'El glúteo medio se encuentra en la parte lateral de las nalgas y es crucial para la abducción de la cadera. Contribuye a la estabilización de la pelvis durante la marcha y otros movimientos. Ejercicios como las abducciones de cadera y las sentadillas laterales pueden fortalecer este músculo.', 'https://imgs.search.brave.com/ejASDzmEkTmzSWlM7ss_MxY0VfJCHCwHsStxUH6PLf8/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/aG91c2VvZnBlYWNo/LmNvbS93cC1jb250/ZW50L3VwbG9hZHMv/MjAyMC8wNS9nbHV0/ZS1tdXNjbGVzLTEu/anBn'),
('Glúteo Menor', 'El glúteo menor es un músculo más pequeño que se encuentra debajo del glúteo mayor. También participa en la abducción de la cadera y ayuda en la rotación externa. Puedes trabajar el glúteo menor con ejercicios específicos de abducción y rotación de cadera.', 'https://imgs.search.brave.com/ejASDzmEkTmzSWlM7ss_MxY0VfJCHCwHsStxUH6PLf8/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/aG91c2VvZnBlYWNo/LmNvbS93cC1jb250/ZW50L3VwbG9hZHMv/MjAyMC8wNS9nbHV0/ZS1tdXNjbGVzLTEu/anBn');

-- Músculos de las pantorrillas
INSERT INTO musculos (nombre, descripcion, imagen) VALUES 
('Gastrocnemio', 'El gastrocnemio es el músculo más grande de los gemelos y se encuentra en la parte posterior de la pantorrilla. Es responsable de la flexión plantar del tobillo (levantar el talón). Puedes trabajar el gastrocnemio con ejercicios como elevaciones de talones y saltos.', 'https://imgs.search.brave.com/YhTZ-gOVpEiQBIcWMUmC_meeYiOt2GJayxKAFS1KA8U/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/Y2FsaXN0ZW5pYS5u/ZXQvd3AtY29udGVu/dC91cGxvYWRzLzIw/MTUvMDIvMTM4NTEx/NDYzNDIwMi5qcGc'),
('Sóleo', 'El sóleo es un músculo más profundo que se encuentra debajo del gastrocnemio. También contribuye a la flexión plantar del tobillo y es esencial para mantener la postura durante la bipedestación. Ejercicios como elevaciones de talones y sentadillas pueden fortalecer el sóleo.', 'https://imgs.search.brave.com/YhTZ-gOVpEiQBIcWMUmC_meeYiOt2GJayxKAFS1KA8U/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/Y2FsaXN0ZW5pYS5u/ZXQvd3AtY29udGVu/dC91cGxvYWRzLzIw/MTUvMDIvMTM4NTEx/NDYzNDIwMi5qcGc');

-- Dorsal mayor
    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Dominadas', 
    'Las dominadas son un ejercicio compuesto que trabaja varios grupos musculares, incluyendo el dorsal mayor, bíceps, trapecio y romboides. Se pueden realizar con diferentes agarres para trabajar diferentes áreas del dorsal mayor.', 
    'url_del_video_dominadas', 
    'url_de_la_imagen_dominadas', 
    '{"precauciones": ["Asegúrate de tener la fuerza necesaria para realizar dominadas.", "Varía los agarres para trabajar diferentes áreas del dorsal mayor."]}', 
    1);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Remo con Barra', 
    'El remo con barra es otro ejercicio compuesto que trabaja el dorsal mayor, trapecio, romboides y bíceps. Se puede realizar con diferentes agarres para trabajar diferentes áreas del dorsal mayor.', 
    'url_del_video_remo_barra', 
    'url_de_la_imagen_remo_barra', 
    '{"precauciones": ["Asegúrate de mantener una buena técnica durante todo el movimiento.", "Varía los agarres para enfocarte en diferentes áreas del dorsal mayor."]}', 
    1);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Remo con Mancuerna', 
    'El remo con mancuerna es un ejercicio unilateral que permite trabajar cada lado del dorsal mayor de forma individual. Se puede realizar con diferentes agarres para trabajar diferentes áreas del dorsal mayor.', 
    'url_del_video_remo_mancuerna', 
    'url_de_la_imagen_remo_mancuerna', 
    '{"precauciones": ["Asegúrate de mantener una buena postura durante el ejercicio.", "Varía los agarres para enfocarte en diferentes áreas del dorsal mayor."]}', 
    1);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Jalón al Pecho', 
    'El jalón al pecho es un ejercicio de máquina que trabaja el dorsal mayor, trapecio y romboides. Es una buena opción para principiantes o personas con lesiones.', 
    'url_del_video_jalon_pecho', 
    'url_de_la_imagen_jalon_pecho', 
    '{"precauciones": ["Ajusta la máquina correctamente para evitar lesiones.", "Consulta con un profesional si eres principiante o tienes lesiones."]}', 
    1);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Remo Sentado en Polea Baja', 
    'El remo sentado en polea baja es un ejercicio de máquina que trabaja el dorsal mayor y trapecio. Es una buena opción para principiantes o personas con lesiones.', 
    'url_del_video_remo_polea_baja', 
    'url_de_la_imagen_remo_polea_baja', 
    '{"precauciones": ["Ajusta la máquina correctamente para evitar lesiones.", "Consulta con un profesional si eres principiante o tienes lesiones."]}', 
    1);

--trapecio
    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Encogimientos de Hombros con Barra', 
    'Este ejercicio es ideal para trabajar los trapecios superiores e inferiores de forma simultánea. Se puede realizar con diferentes tipos de agarres, como pronado (con las palmas hacia abajo), supinado (con las palmas hacia arriba) o neutro (con las palmas mirándose entre sí).', 
    'url_del_video_encogimientos_barra', 
    'url_de_la_imagen_encogimientos_barra', 
    '{"precauciones": ["Ajusta el peso de la barra según tu capacidad.", "Varía los agarres para trabajar diferentes áreas de los trapecios."]}', 
    2);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Encogimientos de Hombros con Mancuernas', 
    'Similar al ejercicio con barra, pero permite un mayor rango de movimiento y trabajar los trapecios de forma más individualizada.', 
    'url_del_video_encogimientos_mancuernas', 
    'url_de_la_imagen_encogimientos_mancuernas', 
    '{"precauciones": ["Selecciona un peso adecuado para las mancuernas.", "Controla el rango de movimiento para maximizar la activación de los trapecios."]}', 
    2);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Remo al Cuello con Barra', 
    'Un ejercicio excelente para trabajar los trapecios superiores y medios, así como los deltoides posteriores.', 
    'url_del_video_remo_cuello_barra', 
    'url_de_la_imagen_remo_cuello_barra', 
    '{"precauciones": ["Asegúrate de mantener una buena técnica durante el ejercicio.", "Varía los agarres para enfocarte en diferentes áreas de los trapecios."]}', 
    2);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Remo al Cuello con Mancuernas', 
    'Similar al ejercicio con barra, pero permite un mayor rango de movimiento y trabajar los trapecios de forma más individualizada.', 
    'url_del_video_remo_cuello_mancuernas', 
    'url_de_la_imagen_remo_cuello_mancuernas', 
    '{"precauciones": ["Selecciona un peso adecuado para las mancuernas.", "Controla el rango de movimiento para maximizar la activación de los trapecios."]}', 
    2);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Encogimientos de Hombros en Máquina', 
    'Una opción segura y efectiva para aquellos que buscan trabajar los trapecios de forma aislada. La máquina permite controlar el movimiento y la resistencia de forma precisa.', 
    'url_del_video_encogimientos_maquina', 
    'url_de_la_imagen_encogimientos_maquina', 
    '{"precauciones": ["Ajusta la máquina correctamente para evitar lesiones.", "Consulta con un profesional si eres principiante o tienes lesiones."]}', 
    2);

--romboide
    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Remo con Agarre Pronado', 
    'Este ejercicio es ideal para trabajar los romboides superiores e inferiores de forma simultánea. Se puede realizar con diferentes tipos de agarres, como pronado (con las palmas hacia abajo), supinado (con las palmas hacia arriba) o neutro (con las palmas mirándose entre sí).', 
    'url_del_video_remo_pronado', 
    'url_de_la_imagen_remo_pronado', 
    '{"precauciones": ["Asegúrate de mantener una buena técnica durante todo el movimiento.", "Varía los agarres para trabajar diferentes áreas de los romboides."]}', 
    3);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Face Pulls', 
    'Un ejercicio excelente para trabajar los romboides superiores y medios, así como los deltoides posteriores.', 
    'url_del_video_face_pulls_romboides', 
    'url_de_la_imagen_face_pulls_romboides', 
    '{"precauciones": ["Ajusta la máquina o la polea correctamente para evitar lesiones.", "Controla el rango de movimiento para maximizar la activación de los romboides."]}', 
    3);
    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Retracciones de Escápulas', 
    'Un ejercicio isométrico que trabaja los romboides de forma constante y efectiva. Se puede realizar con bandas de resistencia, pesas ligeras o incluso sin ningún tipo de material.', 
    'url_del_video_retracciones_escapulas', 
    'url_de_la_imagen_retracciones_escapulas', 
    '{"precauciones": ["Mantén una postura estable durante el ejercicio.", "Adapta la resistencia según tu nivel de habilidad."]}', 
    3);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Dominadas con Agarre Neutro', 
    'Un ejercicio multiarticular que trabaja los romboides, trapecios, dorsales y bíceps de forma simultánea. Se puede realizar con diferentes tipos de agarres, como pronado (con las palmas hacia abajo), supinado (con las palmas hacia arriba) o neutro (con las palmas mirándose entre sí).', 
    'url_del_video_dominadas_neutro', 
    'url_de_la_imagen_dominadas_neutro', 
    '{"precauciones": ["Asegúrate de tener la fuerza necesaria para realizar dominadas.", "Varía los agarres para trabajar diferentes áreas de los romboides."]}', 
    3);

--perctoral mayor superior
    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Press de Banca Inclinado', 
    'Este ejercicio es ideal para trabajar la parte superior del pecho de forma directa. Se puede realizar con barra, mancuernas o en máquina.', 
    'url_del_video_press_banca_inclinado', 
    'url_de_la_imagen_press_banca_inclinado', 
    '{"precauciones": ["Ajusta la inclinación del banco según tu comodidad.", "Varía los tipos de agarres para trabajar diferentes áreas del pectoral mayor superior."]}', 
    4);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Aperturas en Polea Alta', 
    'Este ejercicio es ideal para trabajar la parte superior del pecho de forma aislada. Se puede realizar con diferentes tipos de agarres para trabajar diferentes áreas del músculo.', 
    'url_del_video_aperturas_polea_alta', 
    'url_de_la_imagen_aperturas_polea_alta', 
    '{"precauciones": ["Ajusta la polea y el agarre según tus necesidades.", "Controla el rango de movimiento para evitar lesiones."]}', 
    4);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Elevaciones Frontales con Mancuernas', 
    'Este ejercicio es una buena opción para trabajar la parte superior del pecho de forma individualizada.', 
    'url_del_video_elevaciones_frontales_mancuernas', 
    'url_de_la_imagen_elevaciones_frontales_mancuernas', 
    '{"precauciones": ["Selecciona un peso adecuado para las mancuernas.", "Controla el rango de movimiento para maximizar la activación del pectoral mayor superior."]}', 
    4);

--pectoral mayor medio
   
    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Press de Banca Plano con Barra', 
    'Acuéstate boca arriba en un banco plano con los pies apoyados en el suelo. Sostén una barra con las manos a la anchura de los hombros, con las palmas hacia abajo. Baja la barra hasta que toque el pecho, manteniendo los codos cerca del cuerpo. Empuja la barra hacia arriba hasta que los brazos estén extendidos. Repite el movimiento.', 
    'url_del_video_press_banca_plano_barra', 
    'url_de_la_imagen_press_banca_plano_barra', 
    '{"precauciones": ["Asegúrate de mantener una buena técnica durante todo el movimiento.", "Varía la anchura del agarre para trabajar diferentes áreas del pectoral mayor."]}', 
    5);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Press de Banca Plano con Mancuernas', 
    'Acuéstate boca arriba en un banco plano con los pies apoyados en el suelo. Sostén una mancuerna en cada mano con las palmas hacia abajo. Baja las mancuernas hasta que toquen el pecho, manteniendo los codos cerca del cuerpo. Empuja las mancuernas hacia arriba hasta que los brazos estén extendidos. Repite el movimiento.', 
    'url_del_video_press_banca_plano_mancuernas', 
    'url_de_la_imagen_press_banca_plano_mancuernas', 
    '{"precauciones": ["Selecciona un peso adecuado para las mancuernas.", "Controla el rango de movimiento para maximizar la activación del pectoral mayor."]}', 
    5);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Pec Deck', 
    'Siéntate en la máquina pec deck con la espalda recta y los pies apoyados en el suelo. Coloca las manos en las empuñaduras con las palmas mirándose entre sí. Empuja las empuñaduras hacia delante hasta que se junten en el centro del pecho. Regresa lentamente a la posición inicial. Repite el movimiento.', 
    'url_del_video_pec_deck', 
    'url_de_la_imagen_pec_deck', 
    '{"precauciones": ["Ajusta el asiento y las empuñaduras según tus necesidades.", "Controla el movimiento para evitar lesiones

--pectoral mayor inferior

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Press de Banca Declinado', 
    'Acuéstate boca abajo en un banco declinado con los pies apoyados en el suelo. Sostén una barra con las manos a la anchura de los hombros, con las palmas hacia abajo. Baja la barra hasta que toque el pecho, manteniendo los codos cerca del cuerpo. Empuja la barra hacia arriba hasta que los brazos estén extendidos. Repite el movimiento.', 
    'url_del_video_press_banca_declinado', 
    'url_de_la_imagen_press_banca_declinado', 
    '{"precauciones": ["Asegúrate de utilizar un banco declinado seguro.", "Mantén una buena técnica durante todo el movimiento."]}', 
    6);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Fondos en Paralelas con las Piernas Elevadas', 
    'Ponte de pie frente a dos barras paralelas con las manos a la anchura de los hombros. Eleva las piernas y apóyalas en un banco o una silla. Baja el cuerpo hasta que los codos formen un ángulo de 90 grados. Empuja el cuerpo hacia arriba hasta que los brazos estén extendidos. Repite el movimiento.', 
    'url_del_video_fondos_paralelas_piernas_elevadas', 
    'url_de_la_imagen_fondos_paralelas_piernas_elevadas', 
    '{"precauciones": ["Ajusta la altura de las barras y el banco para un rango de movimiento seguro.", "Controla la intensidad del ejercicio según tu nivel de condición física."]}', 
    6);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Aperturas en Banco Declinado', 
    'Acuéstate boca abajo en un banco declinado con los pies apoyados en el suelo. Sostén una mancuerna en cada mano con las palmas hacia arriba. Extiende los brazos hacia arriba con las palmas mirándose entre sí. Baja las mancuernas hacia los lados hasta que formen un ángulo de 45 grados con el suelo. Regresa lentamente a la posición inicial. Repite el movimiento.', 
    'url_del_video_aperturas_banco_declinado', 
    'url_de_la_imagen_aperturas_banco_declinado', 
    '{"precauciones": ["Ajusta el banco para un ángulo declinado adecuado.", "Selecciona un peso que te permita controlar el movimiento."]}', 
    6);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Cruces con Polea Baja', 
    'Ponte de pie frente a una máquina de polea baja con los pies a la anchura de los hombros. Sostén un asa en cada mano con las palmas mirándose entre sí. Extiende los brazos hacia abajo con las palmas mirándose entre sí. Levanta las asas hacia arriba hasta que se junten en el centro del pecho. Regresa lentamente a la posición inicial. Repite el movimiento.', 
    'url_del_video_cruces_polea_baja', 
    'url_de_la_imagen_cruces_polea_baja', 
    '{"precauciones": ["Ajusta la altura y el peso de la polea para un rango de movimiento seguro.", "Mantén una postura estable durante el ejercicio."]}', 
    6);

--deltoides parte anterior
    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Elevaciones Laterales con Mancuernas', 
    'De pie, sostén una mancuerna en cada mano con las palmas mirándose entre sí. Eleva las mancuernas hacia los lados hasta que los brazos estén paralelos al suelo. Baja las mancuernas hasta la posición inicial. Repite el movimiento.', 
    'url_del_video_elevaciones_laterales_mancuernas', 
    'url_de_la_imagen_elevaciones_laterales_mancuernas', 
    '{"precauciones": ["Mantén una ligera flexión en los codos durante el ejercicio.", "Controla el movimiento para evitar lesiones en los hombros."]}', 
    7);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Elevaciones Laterales en Máquina', 
    'Siéntate en la máquina con la espalda contra el respaldo. Sujeta las empuñaduras con las manos y eleva los brazos hacia los lados hasta que estén paralelos al suelo. Baja los brazos hasta la posición inicial. Repite el movimiento.', 
    'url_del_video_elevaciones_laterales_maquina', 
    'url_de_la_imagen_elevaciones_laterales_maquina', 
    '{"precauciones": ["Ajusta la máquina para un rango de movimiento seguro.", "Controla la intensidad del ejercicio según tu nivel de condición física."]}', 
    7);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Elevaciones Frontales con Cuerda en Polea Baja', 
    'De pie frente a la polea baja, sujeta una cuerda con ambas manos y eleva los brazos hacia adelante hasta que estén paralelos al suelo. Baja los brazos hasta la posición inicial. Repite el movimiento.', 
    'url_del_video_elevaciones_frontales_cuerda_polea_baja', 
    'url_de_la_imagen_elevaciones_frontales_cuerda_polea_baja', 
    '{"precauciones": ["Mantén una postura estable durante todo el movimiento.", "Controla el rango de movimiento para enfocarte en la contracción del deltoides anterior."]}', 
    7);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Elevaciones Laterales con Polea Baja', 
    'De pie frente a la polea baja, sujeta una empuñadura con una mano y eleva el brazo hacia el lado hasta que esté paralelo al suelo. Baja el brazo hasta la posición inicial y repite el movimiento con el otro brazo.', 
    'url_del_video_elevaciones_laterales_polea_baja', 
    'url_de_la_imagen_elevaciones_laterales_polea_baja', 
    '{"precauciones": ["Ajusta el peso de la polea para un rango de movimiento seguro.", "Mantén el cuerpo en posición vertical durante el ejercicio."]}', 
    7);

--deltoides parte media

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Elevaciones Laterales con Mancuernas', 
    'De pie, sostén una mancuerna en cada mano con las palmas hacia abajo. Eleva las mancuernas hacia los lados hasta que los brazos estén paralelos al suelo. Baja las mancuernas hasta la posición inicial. Repite el movimiento.', 
    'url_del_video_elevaciones_laterales_mancuernas', 
    'url_de_la_imagen_elevaciones_laterales_mancuernas', 
    '{"precauciones": ["Mantén una ligera flexión en los codos durante el ejercicio.", "Controla el rango de movimiento para evitar lesiones en los hombros."]}', 
    8);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Elevaciones Laterales con Polea', 
    'Ponte de pie frente a una máquina de polea con los pies a la anchura de los hombros. Sostén un asa en cada mano con las palmas hacia abajo. Eleva las asas hacia los lados hasta que los brazos estén paralelos al suelo. Baja las asas hasta la posición inicial. Repite el movimiento.', 
    'url_del_video_elevaciones_laterales_polea', 
    'url_de_la_imagen_elevaciones_laterales_polea', 
    '{"precauciones": ["Ajusta el peso de la polea para un rango de movimiento seguro.", "Mantén una postura estable durante todo el ejercicio."]}', 
    8);

--deltoides parte posterior

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Remo Alto con Barra', 
    'De pie, inclina el torso hacia delante desde la cadera, manteniendo la espalda recta. Sostén una barra con las manos a la anchura de los hombros, con las palmas hacia abajo. Tira de la barra hacia arriba hasta que toque la parte superior del pecho, manteniendo los codos cerca del cuerpo. Baja la barra lentamente a la posición inicial. Repite el movimiento.', 
    'url_del_video_remo_alto_barra', 
    'url_de_la_imagen_remo_alto_barra', 
    '{"precauciones": ["Mantén una posición estable del torso durante el ejercicio.", "Evita el balanceo del cuerpo para concentrarte en los deltoides posteriores."]}', 
    9);
    
    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Remo Inclinado con Mancuernas', 
    'Ponte de pie con los pies a la anchura de los hombros y las rodillas ligeramente flexionadas. Inclina el torso hacia delante desde la cadera, manteniendo la espalda recta. Sostén una mancuerna en cada mano con las palmas hacia abajo. Tira de las mancuernas hacia arriba hasta que toquen la parte superior del pecho, manteniendo los codos cerca del cuerpo. Baja las mancuernas lentamente a la posición inicial. Repite el movimiento.', 
    'url_del_video_remo_inclinado_mancuernas', 
    'url_de_la_imagen_remo_inclinado_mancuernas', 
    '{"precauciones": ["Controla el rango de movimiento para evitar lesiones.", "Mantén una postura adecuada para enfocarte en los deltoides posteriores."]}', 
    9);

-- biceps braquial cabeza larga
    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Curl Inclinado en Banco', 
    'Acuéstate boca arriba en un banco inclinado con los pies apoyados en el suelo. Sostén una mancuerna en cada mano con las palmas hacia arriba. Flexiona los codos para levantar las mancuernas hasta que toquen el pecho. Extiende los codos para volver a la posición inicial. Repite el movimiento.', 
    'url_del_video_curl_inclinado_banco', 
    'url_de_la_imagen_curl_inclinado_banco', 
    '{"precauciones": ["Mantén una postura estable en el banco para evitar lesiones en la espalda.", "Controla el movimiento para concentrarte en la cabeza larga del bíceps."]}', 
    10);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Curl a una Mano en Cable o Polea', 
    'Ponte de pie frente a una máquina de cable o polea con los pies a la anchura de los hombros. Sostén un asa en cada mano con las palmas hacia arriba. Flexiona el codo de un brazo para levantar el asa hasta que toque el pecho. Extiende el codo para volver a la posición inicial. Repite el movimiento con el otro brazo.', 
    'url_del_video_curl_una_mano_polea', 
    'url_de_la_imagen_curl_una_mano_polea', 
    '{"precauciones": ["Mantén una posición adecuada para evitar lesiones en la espalda.", "Controla la resistencia para enfocarte en la cabeza larga del bíceps."]}', 
    10);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Curl con Barra Recta u Olímpica', 
    'De pie, sostén una barra con las manos a la anchura de los hombros, con las palmas hacia arriba. Flexiona los codos para levantar la barra hasta que toque el pecho. Extiende los codos para volver a la posición inicial. Repite el movimiento.', 
    'url_del_video_curl_barra_recta', 
    'url_de_la_imagen_curl_barra_recta', 
    '{"precauciones": ["Mantén una buena postura y control del movimiento.", "Utiliza un agarre adecuado para evitar lesiones en las muñecas."]}', 
    10);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Curl Martillo', 
    'De pie, sostén una mancuerna en cada mano con las palmas mirándose entre sí. Flexiona los codos para levantar las mancuernas hasta que toquen el pecho. Extiende los codos para volver a la posición inicial. Repite el movimiento.', 
    'url_del_video_curl_martillo', 
    'url_de_la_imagen_curl_martillo', 
    '{"precauciones": ["Mantén una postura estable durante el ejercicio.", "Controla el movimiento para trabajar eficazmente el braquial anterior y el bíceps braquial."]}', 
    10);

-- Biceps braquial cabeza corta
    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Curl con Barra Z', 
    'Este ejercicio coloca la cabeza corta en una posición de contracción máxima, lo que la hace trabajar más duro.', 
    'url_del_video_curl_barra_z', 
    'url_de_la_imagen_curl_barra_z', 
    '{"precauciones": ["Mantén una buena postura durante todo el ejercicio.", "Controla el movimiento para maximizar la contracción de la cabeza corta del bíceps."]}', 
    11);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Curl con Mancuernas', 
    'Este ejercicio es un ejercicio compuesto que trabaja botha la cabeza larga y la cabeza corta del bíceps braquial, con énfasis en la cabeza corta.', 
    'url_del_video_curl_mancuernas', 
    'url_de_la_imagen_curl_mancuernas', 
    '{"precauciones": ["Mantén una postura estable durante el ejercicio.", "Asegúrate de utilizar un rango de movimiento completo para activar ambas cabezas del bíceps."]}', 
    11);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Curl Predicador con Barra', 
    'Este ejercicio aísla la cabeza corta y la trabaja de forma directa.', 
    'url_del_video_curl_predicador_barra', 
    'url_de_la_imagen_curl_predicador_barra', 
    '{"precauciones": ["Ajusta el banco para garantizar una buena posición y evitar lesiones.", "Controla el movimiento para enfocarte en la cabeza corta del bíceps."]}', 
    11);

--Triceps braquial - cabeza larga 

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Press francés con barra Z', 
    'Trabajar la cabeza larga del tríceps braquial de forma directa.', 
    'url_del_video_press_frances_barra_z', 
    'url_de_la_imagen_press_frances_barra_z', 
    '{"precauciones": ["Mantén una postura estable durante el ejercicio.", "Utiliza un peso adecuado para evitar lesiones en las articulaciones."]}', 
    12);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Extensiones de tríceps en polea alta', 
    'Trabajar la cabeza larga del tríceps braquial de forma directa.', 
    'url_del_video_extensiones_triceps_polea_alta', 
    'url_de_la_imagen_extensiones_triceps_polea_alta', 
    '{"precauciones": ["Asegúrate de ajustar la polea a una altura adecuada.", "Controla el movimiento para maximizar la contracción del tríceps."]}', 
    12);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Fondos en paralelas o dips', 
    'Trabajar el tríceps braquial en general, con énfasis en la cabeza larga.', 
    'url_del_video_fondos_paralelas_dips', 
    'url_de_la_imagen_fondos_paralelas_dips', 
    '{"precauciones": ["Controla el descenso para evitar lesiones en los hombros.", "Mantén una buena postura durante todo el ejercicio."]}', 
    12);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Patada de tríceps con mancuerna', 
    'Trabajar la cabeza larga del tríceps braquial de forma individualizada.', 
    'url_del_video_patada_triceps_mancuerna', 
    'url_de_la_imagen_patada_triceps_mancuerna', 
    '{"precauciones": ["Mantén la espalda recta durante el ejercicio.", "Utiliza un peso que te permita realizar el movimiento de forma controlada."]}', 
    12);

--triceps braquial cabeza lateral

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Extensiones de tríceps en polea alta con agarre en V', 
    'Trabajar la cabeza lateral del tríceps braquial de forma directa.', 
    'url_del_video_extensiones_triceps_polea_alta_agarre_v', 
    'url_de_la_imagen_extensiones_triceps_polea_alta_agarre_v', 
    '{"precauciones": ["Asegúrate de ajustar la polea a una altura adecuada.", "Controla el movimiento para maximizar la contracción del tríceps.", "Mantén una buena postura durante todo el ejercicio."]}', 
    13);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Fondos en paralelas con agarre estrecho', 
    'Trabajar el tríceps braquial en general, con énfasis en la cabeza lateral.', 
    'url_del_video_fondos_paralelas_agarre_estrecho', 
    'url_de_la_imagen_fondos_paralelas_agarre_estrecho', 
    '{"precauciones": ["Controla el descenso para evitar lesiones en los codos.", "Mantén una buena postura durante todo el ejercicio."]}', 
    13);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Press francés con barra Z con agarre en V', 
    'Trabajar el tríceps braquial en general, con énfasis en la cabeza lateral.', 
    'url_del_video_press_frances_barra_z_agarre_v', 
    'url_de_la_imagen_press_frances_barra_z_agarre_v', 
    '{"precauciones": ["Mantén una postura estable durante el ejercicio.", "Utiliza un peso adecuado para evitar lesiones en las articulaciones.", "Controla el movimiento para maximizar la contracción del tríceps."]}', 
    13);

--Triceps braquial cabeza medial

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Extensiones de tríceps en polea alta con agarre en V', 
    'Este ejercicio coloca la cabeza medial en una posición de contracción máxima, lo que la hace trabajar más duro.', 
    'url_del_video_extensiones_triceps_polea_alta_agarre_v', 
    'url_de_la_imagen_extensiones_triceps_polea_alta_agarre_v', 
    '{"precauciones": ["Asegúrate de ajustar la polea a una altura adecuada.", "Controla el movimiento para maximizar la contracción del tríceps.", "Mantén una buena postura durante todo el ejercicio."]}', 
    14);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Fondos en paralelas con agarre estrecho', 
    'Este ejercicio trabaja la cabeza medial del tríceps braquial de forma directa.', 
    'url_del_video_fondos_paralelas_agarre_estrecho', 
    'url_de_la_imagen_fondos_paralelas_agarre_estrecho', 
    '{"precauciones": ["Controla el descenso para evitar lesiones en los codos.", "Mantén una buena postura durante todo el ejercicio."]}', 
    14);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Extensiones de tríceps con mancuerna acostado', 
    'Este ejercicio aísla la cabeza medial y la trabaja de forma directa.', 
    'url_del_video_extensiones_triceps_mancuerna_acostado', 
    'url_de_la_imagen_extensiones_triceps_mancuerna_acostado', 
    '{"precauciones": ["Utiliza un banco estable para evitar lesiones.", "Selecciona un peso adecuado para controlar el movimiento.", "Mantén una contracción controlada del tríceps durante todo el ejercicio."]}', 
    14);

--flexores del antebrazo

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Flexión de muñeca con barra', 
    'Este ejercicio trabaja todos los flexores del antebrazo de forma conjunta.', 
    'url_del_video_flexion_muneca_barra', 
    'url_de_la_imagen_flexion_muneca_barra', 
    '{"precauciones": ["Utiliza un peso adecuado para evitar lesiones.", "Mantén una buena postura durante todo el ejercicio.", "Realiza el movimiento de forma controlada para maximizar el trabajo en los flexores del antebrazo."]}', 
    15);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Flexión de muñeca con mancuerna', 
    'Este ejercicio permite trabajar cada brazo de forma individualizada.', 
    'url_del_video_flexion_muneca_mancuerna', 
    'url_de_la_imagen_flexion_muneca_mancuerna', 
    '{"precauciones": ["Selecciona un peso adecuado para controlar el movimiento.", "Mantén una buena postura durante todo el ejercicio.", "Asegúrate de realizar el ejercicio de forma simétrica para ambos brazos."]}', 
    15);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Flexión de muñeca con polea', 
    'Este ejercicio permite aislar los flexores del antebrazo y trabajarlos de forma más específica.', 
    'url_del_video_flexion_muneca_polea', 
    'url_de_la_imagen_flexion_muneca_polea', 
    '{"precauciones": ["Ajusta la altura de la polea para un rango de movimiento óptimo.", "Controla el movimiento para evitar lesiones en la muñeca.", "Mantén una contracción constante de los flexores del antebrazo durante el ejercicio."]}', 
    15);

--Extensores del antebrazo
    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Extensión de muñeca con barra', 
    'Este ejercicio trabaja todos los extensores del antebrazo de forma conjunta.', 
    'url_del_video_extension_muneca_barra', 
    'url_de_la_imagen_extension_muneca_barra', 
    '{"precauciones": ["Selecciona un peso adecuado para controlar el movimiento.", "Mantén una postura neutral de la muñeca para evitar lesiones.", "Realiza el ejercicio de forma controlada para maximizar la activación de los extensores del antebrazo."]}', 
    16);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Extensión de muñeca con mancuerna', 
    'Este ejercicio permite trabajar cada brazo de forma individualizada.', 
    'url_del_video_extension_muneca_mancuerna', 
    'url_de_la_imagen_extension_muneca_mancuerna', 
    '{"precauciones": ["Ajusta el peso de forma adecuada para un control total del movimiento.", "Mantén una postura estable durante todo el ejercicio.", "Evita movimientos bruscos para prevenir lesiones."]}', 
    16);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Extensión de muñeca con polea', 
    'Este ejercicio permite aislar los extensores del antebrazo y trabajarlos de forma más específica.', 
    'url_del_video_extension_muneca_polea', 
    'url_de_la_imagen_extension_muneca_polea', 
    '{"precauciones": ["Ajusta la altura de la polea para un rango de movimiento óptimo.", "Controla el peso para evitar lesiones en la muñeca.", "Mantén una contracción constante de los extensores del antebrazo durante todo el ejercicio."]}', 
    16);

--pronadores y supinadores del antebrazo

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Pronación de muñeca con barra', 
    'Este ejercicio trabaja todos los pronadores del antebrazo de forma conjunta.', 
    'url_del_video_pronacion_muneca_barra', 
    'url_de_la_imagen_pronacion_muneca_barra', 
    '{"precauciones": ["Selecciona un peso adecuado para controlar el movimiento.", "Mantén una postura neutral de la muñeca para evitar lesiones.", "Realiza el ejercicio de forma controlada para maximizar la activación de los pronadores del antebrazo."]}', 
    17);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Pronación de muñeca con mancuerna', 
    'Este ejercicio permite trabajar cada brazo de forma individualizada.', 
    'url_del_video_pronacion_muneca_mancuerna', 
    'url_de_la_imagen_pronacion_muneca_mancuerna', 
    '{"precauciones": ["Ajusta el peso de forma adecuada para un control total del movimiento.", "Mantén una postura estable durante todo el ejercicio.", "Evita movimientos bruscos para prevenir lesiones."]}', 
    17);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Pronación de muñeca con polea', 
    'Este ejercicio permite aislar los pronadores del antebrazo y trabajarlos de forma más específica.', 
    'url_del_video_pronacion_muneca_polea', 
    'url_de_la_imagen_pronacion_muneca_polea', 
    '{"precauciones": ["Ajusta la altura de la polea para un rango de movimiento óptimo.", "Controla el peso para evitar lesiones en la muñeca.", "Mantén una contracción constante de los pronadores del antebrazo durante todo el ejercicio."]}', 
    17);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Supinación de muñeca con barra', 
    'Este ejercicio trabaja todos los supinadores del antebrazo de forma conjunta.', 
    'url_del_video_supinacion_muneca_barra', 
    'url_de_la_imagen_supinacion_muneca_barra', 
    '{"precauciones": ["Selecciona un peso adecuado para controlar el movimiento.", "Mantén una postura neutral de la muñeca para evitar lesiones.", "Realiza el ejercicio de forma controlada para maximizar la activación de los supinadores del antebrazo."]}', 
    17);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Supinación de muñeca con mancuerna', 
    'Este ejercicio permite trabajar cada brazo de forma individualizada.', 
    'url_del_video_supinacion_muneca_mancuerna', 
    'url_de_la_imagen_supinacion_muneca_mancuerna', 
    '{"precauciones": ["Ajusta el peso de forma adecuada para un control total del movimiento.", "Mantén una postura estable durante todo el ejercicio.", "Evita movimientos bruscos para prevenir lesiones."]}', 
    17);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Supinación de muñeca con polea', 
    'Este ejercicio permite aislar los supinadores del antebrazo y trabajarlos de forma más específica.', 
    'url_del_video_supinacion_muneca_polea', 
    'url_de_la_imagen_supinacion_muneca_polea', 
    '{"precauciones": ["Ajusta la altura de la polea para un rango de movimiento óptimo.", "Controla el peso para evitar lesiones en la muñeca.", "Mantén una contracción constante de los supinadores del antebrazo durante todo el ejercicio."]}', 
    17);

--Recto abdominal
    
    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Abdominales clásicos', 
    'Este ejercicio trabaja todo el recto abdominal de forma conjunta.', 
    'url_del_video_abdominales_clasicos', 
    'url_de_la_imagen_abdominales_clasicos', 
    '{"precauciones": ["Realiza el ejercicio de forma controlada para maximizar la activación del recto abdominal.", "Mantén una postura adecuada para evitar la tensión en el cuello.", "No uses impulso excesivo para levantar el torso."]}', 
    18);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Elevaciones de piernas colgando', 
    'Este ejercicio trabaja la parte inferior del recto abdominal.', 
    'url_del_video_elevaciones_piernas_colgando', 
    'url_de_la_imagen_elevaciones_piernas_colgando', 
    '{"precauciones": ["Controla el movimiento para evitar balanceo excesivo.", "Mantén las piernas extendidas durante el ascenso y descenso.", "Evita arquear excesivamente la espalda baja."]}', 
    18);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Plancha abdominal', 
    'Este ejercicio trabaja todo el recto abdominal de forma isométrica.', 
    'url_del_video_plancha_abdominal', 
    'url_de_la_imagen_plancha_abdominal', 
    '{"precauciones": ["Mantén el cuerpo en línea recta desde la cabeza hasta los talones.", "Evita que la cadera se hunda o levante durante la posición de plancha.", "Controla la respiración y no retengas el aliento."]}', 
    18);

--oblicuos externos
    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Crunches laterales', 
    'Este ejercicio trabaja los oblicuos externos de forma directa.', 
    'url_del_video_crunches_laterales', 
    'url_de_la_imagen_crunches_laterales', 
    '{"precauciones": ["Realiza el movimiento de forma controlada para evitar tensiones en la zona lumbar.", "Mantén el cuello en posición neutral durante el ejercicio.", "Exhala al contraer los oblicuos y mantén la respiración constante."]}', 
    19);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Plancha lateral', 
    'Este ejercicio trabaja los oblicuos externos de forma isométrica.', 
    'url_del_video_plancha_lateral', 
    'url_de_la_imagen_plancha_lateral', 
    '{"precauciones": ["Mantén el cuerpo en línea recta desde la cabeza hasta los pies.", "Evita que la cadera se hunda o levante durante la posición de plancha lateral.", "Controla la respiración y no retengas el aliento."]}', 
    19);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Elevaciones de piernas laterales', 
    'Este ejercicio trabaja la parte inferior de los oblicuos externos.', 
    'url_del_video_elevaciones_piernas_laterales', 
    'url_de_la_imagen_elevaciones_piernas_laterales', 
    '{"precauciones": ["Controla el movimiento para evitar balanceo excesivo.", "Mantén las piernas extendidas durante el ascenso y descenso.", "Evita arquear excesivamente la espalda baja."]}', 
    19);


-- oblicuos internos

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Giros rusos con pelota suiza', 
    'Este ejercicio trabaja los oblicuos internos de forma directa.', 
    'url_del_video_giros_rusos_pelota_suiza', 
    'url_de_la_imagen_giros_rusos_pelota_suiza', 
    '{"precauciones": ["Realiza el giro controlado para evitar lesiones en la espalda baja.", "Mantén la pelota suiza estable durante el ejercicio.", "Ajusta la resistencia según tu nivel de condición física."]}', 
    20);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Plancha con rotación de cadera', 
    'Este ejercicio trabaja los oblicuos internos de forma isométrica.', 
    'url_del_video_plancha_rotacion_cadera', 
    'url_de_la_imagen_plancha_rotacion_cadera', 
    '{"precauciones": ["Mantén el cuerpo en posición de plancha estable.", "Evita que la cadera se hunda o levante durante la rotación.", "Controla la respiración y no retengas el aliento."]}', 
    20);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Elevaciones de piernas con rotación', 
    'Este ejercicio trabaja la parte inferior de los oblicuos internos.', 
    'url_del_video_elevaciones_piernas_rotacion', 
    'url_de_la_imagen_elevaciones_piernas_rotacion', 
    '{"precauciones": ["Realiza el movimiento con control para evitar la tensión en la espalda baja.", "Mantén las piernas extendidas durante el ascenso y descenso.", "Adapta la resistencia según tu nivel de condición física."]}', 
    20);

--transverso abdominal

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Vacío abdominal (hipopresivos)', 
    'Este ejercicio se puede realizar acostado, de rodillas o de pie. Para realizarlo, exhala todo el aire de tus pulmones y luego aprieta tu abdomen como si estuvieras tratando de succionarlo hacia adentro. Mantén la contracción durante unos segundos y luego relájate. Repite este proceso 10-15 veces.', 
    'url_del_video_elevaciones_piernas_rotacion', 
    'url_de_la_imagen_elevaciones_piernas_rotacion', 
    '{"precauciones": ["Asegúrate de exhalar completamente antes de contraer el abdomen.", "Evita contener la respiración durante la contracción.", "Adapta la intensidad del ejercicio según tu capacidad."]}', 
    21);

--cuadriceps recto femoral
   
    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Sentadillas', 
    'Las sentadillas son un ejercicio compuesto que trabaja varios grupos musculares, incluido el cuádriceps recto femoral. Para realizar una sentadilla con la forma correcta, coloca los pies a la anchura de los hombros, flexiona las rodillas y baja el cuerpo hasta que los muslos estén paralelos al suelo. Asegúrate de mantener la espalda recta y el pecho abierto.', 
    'url_del_video_elevaciones_piernas_rotacion', 
    'url_de_la_imagen_elevaciones_piernas_rotacion', 
    '{"precauciones": ["Asegúrate de mantener la forma correcta para evitar lesiones.", "Adapta la intensidad según tu capacidad.", "Consulta a un profesional si eres principiante o tienes alguna preocupación médica."]}', 
    22);
   
    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Extensiones de rodilla', 
    'Este ejercicio se puede realizar con una máquina de pesas o con una banda de resistencia. Para realizar una extensión de rodilla, siéntate en una máquina o en el suelo con las piernas extendidas. Luego, flexiona la rodilla y levanta la parte inferior de la pierna hacia el pecho. Mantén la posición durante unos segundos antes de bajar la pierna de nuevo.', 
    'url_del_video_elevaciones_piernas_rotacion', 
    'url_de_la_imagen_elevaciones_piernas_rotacion', 
    '{"precauciones": ["Ajusta la resistencia de acuerdo a tu nivel de condición física.", "Evita movimientos bruscos y controla el rango de movimiento.", "Si sientes dolor o molestias, detén el ejercicio y consulta a un profesional."]}', 
    22);
    
    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Prensa de piernas', 
    'La prensa de piernas es otro ejercicio que trabaja el cuádriceps recto femoral. Para realizar una prensa de piernas, siéntate en la máquina y coloca los pies en la plataforma. Luego, empuja la plataforma hacia arriba con las piernas hasta que las rodillas estén extendidas. Mantén la posición durante unos segundos antes de bajar la plataforma de nuevo.', 
    'url_del_video_elevaciones_piernas_rotacion', 
    'url_de_la_imagen_elevaciones_piernas_rotacion', 
    '{"precauciones": ["Ajusta la máquina según tu altura y posición cómoda.", "Controla el rango de movimiento y evita bloquear las rodillas en la posición extendida.", "Consulta a un profesional para aprender la técnica adecuada si eres principiante."]}', 
    22);

--cuadriceps  vasto lateral

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Sentadillas con los pies abiertos', 
    'Las sentadillas con los pies abiertos trabajan el vasto lateral de forma más específica que las sentadillas tradicionales. Para realizar una sentadilla con los pies abiertos, coloca los pies a una anchura mayor que la de los hombros, flexiona las rodillas y baja el cuerpo hasta que los muslos estén paralelos al suelo. Asegúrate de mantener la espalda recta y el pecho abierto.', 
    'url_del_video_elevaciones_piernas_rotacion', 
    'url_de_la_imagen_elevaciones_piernas_rotacion', 
    '{"precauciones": ["Ajusta la anchura de los pies según tu comodidad.", "Mantén la forma correcta para evitar lesiones.", "Adapta la intensidad según tu nivel de condición física."]}', 
    23);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Extensiones de rodilla con los pies girados hacia fuera', 
    'url_del_video_elevaciones_piernas_rotacion', 
    'url_de_la_imagen_elevaciones_piernas_rotacion', 'Este ejercicio se puede realizar con una máquina de pesas o con una banda de resistencia. Para realizar una extensión de rodilla con los pies girados hacia fuera, siéntate en una máquina o en el suelo con las piernas extendidas. Luego, flexiona la rodilla y levanta la parte inferior de la pierna hacia el pecho, con los pies girados hacia fuera. Mantén la posición durante unos segundos antes de bajar la pierna de nuevo.', 
    '{"precauciones": ["Ajusta la resistencia según tu nivel de condición física.", "Controla el rango de movimiento y evita movimientos bruscos.", "Si sientes dolor, detén el ejercicio y consulta a un profesional."]}', 
    23);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Prensa de piernas con los pies girados hacia fuera', 
    'La prensa de piernas con los pies girados hacia fuera es otro ejercicio que trabaja el vasto lateral de forma específica. Para realizar una prensa de piernas con los pies girados hacia fuera, siéntate en la máquina y coloca los pies en la plataforma con los dedos de los pies apuntando hacia fuera. Luego, empuja la plataforma hacia arriba con las piernas hasta que las rodillas estén extendidas. Mantén la posición durante unos segundos antes de bajar la plataforma de nuevo.', 
    'url_del_video_elevaciones_piernas_rotacion', 
    'url_de_la_imagen_elevaciones_piernas_rotacion', 
    '{"precauciones": ["Ajusta la máquina según tu altura y posición cómoda.", "Controla el rango de movimiento y evita bloquear las rodillas en la posición extendida.", "Consulta a un profesional para aprender la técnica adecuada si eres principiante."]}', 
    23);


--cuadriceps vasto medial
 
    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Sentadillas con los pies juntos', 
    'Las sentadillas con los pies juntos trabajan el vasto medial de forma más específica que las sentadillas tradicionales. Para realizar una sentadilla con los pies juntos, coloca los pies juntos, flexiona las rodillas y baja el cuerpo hasta que los muslos estén paralelos al suelo. Asegúrate de mantener la espalda recta y el pecho abierto.', 
    'url_del_video_elevaciones_piernas_rotacion', 
    'url_de_la_imagen_elevaciones_piernas_rotacion', 
    '{"precauciones": ["Ajusta la postura según tu comodidad y nivel de habilidad.", "Controla la profundidad de la sentadilla para evitar lesiones.", "Mantén una técnica adecuada para maximizar la efectividad y minimizar el riesgo de lesiones."]}', 
    24);
   
    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Extensiones de rodilla con los pies girados hacia dentro', 
    'Este ejercicio se puede realizar con una máquina de pesas o con una banda de resistencia. Para realizar una extensión de rodilla con los pies girados hacia dentro, siéntate en una máquina o en el suelo con las piernas extendidas. Luego, flexiona la rodilla y levanta la parte inferior de la pierna hacia el pecho, con los pies girados hacia dentro. Mantén la posición durante unos segundos antes de bajar la pierna de nuevo.', 
    '{"precauciones": ["Ajusta la resistencia según tu nivel de condición física.", "Controla el rango de movimiento y evita movimientos bruscos.", "Si sientes dolor, detén el ejercicio y consulta a un profesional."]}', 
    24);
  
    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Prensa de piernas con los pies girados hacia dentro', 
    'La prensa de piernas con los pies girados hacia dentro es otro ejercicio que trabaja el vasto medial de forma específica. Para realizar una prensa de piernas con los pies girados hacia dentro, siéntate en la máquina y coloca los pies en la plataforma con los dedos de los pies apuntando hacia dentro. Luego, empuja la plataforma hacia arriba con las piernas hasta que las rodillas estén extendidas. Mantén la posición durante unos segundos antes de bajar la plataforma de nuevo.', 
    'url_del_video_elevaciones_piernas_rotacion', 
    'url_de_la_imagen_elevaciones_piernas_rotacion', 
    '{"precauciones": ["Ajusta la máquina según tu altura y posición cómoda.", "Controla el rango de movimiento y evita bloquear las rodillas en la posición extendida.", "Consulta a un profesional para aprender la técnica adecuada si eres principiante."]}', 
    24);

--cuadriceps vasto intermedio

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Extensiones de rodilla', 
    'Este ejercicio se puede realizar con una máquina de pesas o con una banda de resistencia. Para realizar una extensión de rodilla, siéntate en una máquina o en el suelo con las piernas extendidas. Luego, flexiona la rodilla y levanta la parte inferior de la pierna hacia el pecho. Mantén la posición durante unos segundos antes de bajar la pierna de nuevo.', 
    'url_del_video_elevaciones_piernas_rotacion', 
    'url_de_la_imagen_elevaciones_piernas_rotacion', 
    '{"precauciones": ["Ajusta la resistencia según tu nivel de condición física.", "Controla el rango de movimiento y evita movimientos bruscos.", "Si sientes dolor, detén el ejercicio y consulta a un profesional."]}', 
    25);
    
    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen,datos_cientificos, id_musculo) VALUES
    ('Prensa de piernas', 
    'La prensa de piernas es otro ejercicio que trabaja el vasto intermedio. Para realizar una prensa de piernas, siéntate en la máquina y coloca los pies en la plataforma. Luego, empuja la plataforma hacia arriba con las piernas hasta que las rodillas estén extendidas. Mantén la posición durante unos segundos antes de bajar la plataforma de nuevo.', 
    'url_del_video_elevaciones_piernas_rotacion', 
    'url_de_la_imagen_elevaciones_piernas_rotacion',
    '{"precauciones": ["Ajusta la máquina según tu altura y posición cómoda.", "Controla el rango de movimiento y evita bloquear las rodillas en la posición extendida.", "Consulta a un profesional para aprender la técnica adecuada si eres principiante."]}', 
    25);

--Biceps femoral
    
    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Curl femoral sentado', 
    'El curl femoral sentado es un ejercicio efectivo para aislar y fortalecer el bíceps femoral, el músculo grande en la parte posterior del muslo. Para realizarlo, siéntate en una máquina de pesas designada para este ejercicio. Ajusta el asiento y las almohadillas según tu altura y posición. Coloca las piernas bajo las almohadillas, flexiona las rodillas y baja el peso hacia el suelo. Luego, extiende las piernas levantando el peso. Asegúrate de mantener la espalda recta durante todo el movimiento.', 
    'url_del_video_elevaciones_piernas_rotacion', 
    'url_de_la_imagen_elevaciones_piernas_rotacion',
    '{"precauciones": ["Ajusta la máquina según tu altura y posición.", "Controla el rango de movimiento y evita movimientos bruscos.", "Mantén la espalda recta para evitar tensiones innecesarias."]}' , 
    26);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Curl femoral tumbado', 
    'El curl femoral tumbado es un ejercicio efectivo para aislar y fortalecer el bíceps femoral, el músculo grande en la parte posterior del muslo. Para realizarlo, acuéstate boca abajo en una máquina o en el suelo con las piernas extendidas. Luego, flexiona la rodilla y levanta la parte inferior de la pierna hacia el pecho. Mantén la posición durante unos segundos antes de bajar la pierna de nuevo.', 
    'url_del_video_elevaciones_piernas_rotacion', 
    'url_de_la_imagen_elevaciones_piernas_rotacion',
    '{"precauciones": ["Ajusta la máquina o la resistencia según tu nivel de condición física.", "Controla el rango de movimiento y evita movimientos bruscos.", "Si sientes dolor, detén el ejercicio y consulta a un profesional."]}', 
    26);
 
    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Peso muerto', 
    'El peso muerto es un ejercicio compuesto que trabaja varios grupos musculares, incluido el bíceps femoral. Para realizar un peso muerto con la forma correcta, coloca los pies a la anchura de las caderas, flexiona las rodillas y baja el torso hasta que los muslos estén paralelos al suelo. Asegúrate de mantener la espalda recta y el pecho abierto.', 
    'url_del_video_elevaciones_piernas_rotacion', 
    'url_de_la_imagen_elevaciones_piernas_rotacion',
    '{"precauciones": ["Utiliza un peso adecuado para tu nivel de condición física.", "Mantén la técnica adecuada para evitar lesiones.", "Consulta a un profesional si eres principiante o tienes alguna preocupación."]}' , 
    26);

--semitendinoso
    
    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Peso muerto rumano', 
    'El peso muerto rumano es un ejercicio compuesto que trabaja varios grupos musculares, incluido el semitendinoso. Para realizar un peso muerto rumano con la forma correcta, coloca los pies a la anchura de las caderas, flexiona ligeramente las rodillas y baja el torso manteniendo la espalda recta hasta que sientas estiramiento en los músculos posteriores del muslo. Luego, regresa a la posición inicial levantando el torso y extendiendo las caderas. Asegúrate de mantener la espalda recta y el pecho abierto durante todo el movimiento.', 
    'url_del_video_elevaciones_piernas_rotacion', 
    'url_de_la_imagen_elevaciones_piernas_rotacion',
    '{"precauciones": ["Asegúrate de mantener la espalda recta para evitar tensiones innecesarias.", "Controla el rango de movimiento y evita movimientos bruscos.", "No uses un peso excesivo que comprometa la forma."]}' , 
    27);

--semimembranoso

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Curl femoral tumbado con los pies girados hacia dentro', 
    'Este ejercicio se puede realizar con una máquina de pesas o con una banda de resistencia. Para realizar un curl femoral tumbado con los pies girados hacia dentro, acuéstate boca abajo en una máquina o en el suelo con las piernas extendidas. Luego, flexiona la rodilla y levanta la parte inferior de la pierna hacia el pecho, con los pies girados hacia dentro. Mantén la posición durante unos segundos, sintiendo la contracción en los músculos isquiotibiales, antes de bajar la pierna de nuevo.', 
    'url_del_video_elevaciones_piernas_rotacion', 
    'url_de_la_imagen_elevaciones_piernas_rotacion',
    '{"precauciones": ["Ajusta la resistencia o el peso de la máquina de acuerdo con tu nivel de fuerza y condición física.", "Controla el movimiento para evitar tensiones innecesarias en las articulaciones.", "Realiza el ejercicio de forma controlada y sin balanceos."]}' , 
    27);

--glueteo mayor

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Hip Thrust', 
    'El hip thrust es un ejercicio que se realiza generalmente con una barra y un banco. Para realizarlo, siéntate en el suelo con la espalda apoyada en el banco y la barra colocada sobre las caderas. Coloca los pies a la anchura de los hombros y flexiona las rodillas. Luego, levanta las caderas hacia arriba hasta que el cuerpo forme una línea recta desde los hombros hasta las rodillas. Asegúrate de contraer los glúteos en la parte superior del movimiento antes de bajar las caderas de nuevo.', 
    'url_del_video_elevaciones_piernas_rotacion', 
    'url_de_la_imagen_elevaciones_piernas_rotacion',
    '{"precauciones": ["Asegúrate de utilizar una barra y un banco adecuados para tu nivel de fuerza y condición física.", "Mantén la espalda apoyada en el banco durante todo el movimiento.", "Controla el movimiento para evitar tensiones innecesarias en la zona lumbar."]}' , 
    28);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Puente de Glúteos', 
    'El puente de glúteos es un ejercicio específico para trabajar el glúteo mayor. Para realizarlo, acuéstate boca arriba con las rodillas flexionadas y los pies apoyados en el suelo. Luego, levanta la cadera del suelo hasta que tu cuerpo forme una línea recta desde las rodillas hasta los hombros. Mantén la posición durante unos segundos antes de bajar la cadera de nuevo.', 
    'url_del_video_elevaciones_piernas_rotacion', 
    'url_de_la_imagen_elevaciones_piernas_rotacion',
    '{"precauciones": ["Asegúrate de mantener los pies firmemente apoyados en el suelo.", "Evita arquear la espalda baja excesivamente durante el movimiento.", "Concentra la contracción en los glúteos para maximizar el beneficio del ejercicio."]}' , 
    28);

--gluteo medio
   
    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Elevación Lateral de Pierna Tumbado (Clamshell)', 
    'Este ejercicio se realiza tumbado de lado con las rodillas flexionadas y los pies apoyados en el suelo. Levanta la pierna superior hacia el techo mientras mantienes la pelvis estable. Baja la pierna con control y repite con la otra pierna.', 
    'url_del_video_elevaciones_piernas_rotacion', 
    'url_de_la_imagen_elevaciones_piernas_rotacion',
    '{"precauciones": ["Mantén la pelvis estable durante el movimiento.", "Evita arquear la espalda baja excesivamente.", "Realiza el ejercicio con control y concentrándote en la activación del glúteo medio."]}' , 
    29);
   
    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Caminata Lateral con Banda de Resistencia', 
    'Coloca una banda de resistencia alrededor de los muslos, justo por encima de las rodillas. Mantén la espalda recta y da pasos hacia un lado, sintiendo la activación del glúteo medio. Repite hacia el otro lado.', 
    'url_del_video_elevaciones_piernas_rotacion', 
    'url_de_la_imagen_elevaciones_piernas_rotacion',
    '{"precauciones": ["Mantén una postura adecuada con la espalda recta.", "Ajusta la resistencia de la banda según tu nivel de fuerza.", "Concéntrate en activar el glúteo medio durante todo el movimiento."]}' , 
    29);

--glueteo menor
    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Elevación Lateral de Pierna de Pie (Fire Hydrant)', 
    'Ponte de pie de lado con las rodillas flexionadas a 90 grados. Levanta la pierna superior hacia un lado, manteniendo la rodilla flexionada y el pie flexionado. Baja la pierna con control y repite con la otra pierna.', 
    'url_del_video_elevaciones_piernas_rotacion', 
    'url_de_la_imagen_elevaciones_piernas_rotacion',
    '{"precauciones": ["Mantén las rodillas flexionadas a 90 grados durante el ejercicio.", "Evita inclinar demasiado el torso hacia adelante o hacia atrás.", "Controla el movimiento para evitar balanceos innecesarios."]}' , 
    30);

--gastrocnemio

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Elevaciones de Talones de Pie', 
    'Este es un ejercicio clásico para trabajar el gastrocnemio. Para realizarlo, ponte de pie con los pies a la anchura de las caderas y levanta los talones del suelo hasta que las puntas de los pies estén apoyadas en el suelo. Mantén la posición durante unos segundos antes de bajar los talones de nuevo.',
    'url_del_video_elevaciones_piernas_rotacion', 
    'url_de_la_imagen_elevaciones_piernas_rotacion',
    '{"precauciones": ["Mantén los pies a la anchura de las caderas durante el ejercicio.", "Evita bloquear las rodillas en la posición elevada.", "Controla el movimiento para evitar movimientos bruscos."]}' , 
    30);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Elevaciones de Talones Sentado', 
    'Este ejercicio es similar al anterior, pero se realiza sentado. Para realizarlo, siéntate en una silla con los pies apoyados en el suelo y levanta los talones del suelo hasta que las puntas de los pies estén apoyadas en el suelo. Mantén la posición durante unos segundos antes de bajar los talones de nuevo.',
    'url_del_video_elevaciones_piernas_rotacion', 
    'url_de_la_imagen_elevaciones_piernas_rotacion',
    '{"precauciones": ["Siéntate con la espalda recta y los pies planos en el suelo.", "Evita bloquear las rodillas en la posición elevada.", "Controla el movimiento para evitar movimientos bruscos."]}' , 
    30);

--soleo
    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Elevaciones de Talones con las Rodillas Flexionadas', 
    'Este ejercicio es similar a las elevaciones de talones de pie, pero se realiza con las rodillas flexionadas. Para realizarlo, ponte de pie con las rodillas flexionadas y los pies apoyados en el suelo. Levanta los talones del suelo hasta que las puntas de los pies estén apoyadas en el suelo. Mantén la posición durante unos segundos antes de bajar los talones de nuevo.',
    'url_del_video_elevaciones_piernas_rotacion', 
    'url_de_la_imagen_elevaciones_piernas_rotacion',
    '{"precauciones": ["Mantén las rodillas ligeramente flexionadas durante el ejercicio.", "Evita bloquear las rodillas en la posición elevada.", "Controla el movimiento para evitar movimientos bruscos."]}' , 
    31);

    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Elevaciones de Talones con una Pierna y la Rodilla Flexionada', 
    'Este ejercicio es más desafiante que los anteriores y trabaja el sóleo de forma más unilateral. Para realizarlo, ponte de pie sobre una pierna con la otra pierna extendida hacia atrás y flexiona la rodilla de la pierna de apoyo. Levanta el talón del suelo hasta que la parte inferior de la pierna esté paralela al suelo. Mantén la posición durante unos segundos antes de bajar el talón de nuevo.',
    'url_del_video_elevaciones_piernas_rotacion', 
    'url_de_la_imagen_elevaciones_piernas_rotacion',
    '{"precauciones": ["Mantén la espalda recta durante el ejercicio.", "Controla el movimiento para evitar movimientos bruscos.", "Asegúrate de realizar el ejercicio de forma simétrica con ambas piernas."]}' , 
    31);

--**EJECICIOS EN CASA**

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen, datos_cientificos, zona_ejercicio)
VALUES
    ('Dominadas deslizantes',
    'Las dominadas son el ejercicio estrella para la espalda, pero necesitamos una barra donde poder colgarnos y en muchas ocasiones no disponemos de ella. En el vídeo se muestran seis variaciones según el nivel de entrenamiento, para que empieces desde el nivel que se adecúe a ti, y progreses hasta el último escalón. Si necesitas deslizarte mejor por el suelo, pon una toalla en tu pecho y abdomen y la fricción será menor. Esa misma toalla va a serte útil para otros ejercicios que veremos a continuación.',
    'https://ejemplo.com/video_dominadas_deslizantes',
    'https://ejemplo.com/imagen_dominadas_deslizantes',
    '{"musculos": ["Dorsal ancho", "Trapecio"], "precauciones": ["Evitar balanceo excesivo", "Mantener una técnica adecuada"], "modo_de_hacerlo": "Colócate debajo de una barra de puerta y sujeta la toalla. Realiza el movimiento de dominadas, enfocándote en la contracción de la espalda."}',
    1), -- Espalda completa

    ('Remo invertido en la mesa',
    'El remo invertido en la mesa es un ejercicio efectivo para trabajar los músculos de la espalda, especialmente los romboides. Utilizando una mesa como apoyo, puedes realizar este ejercicio en casa para fortalecer tu espalda.',
    'https://ejemplo.com/video_remo_invertido_mesa',
    'https://ejemplo.com/imagen_remo_invertido_mesa',
    '{"musculos": ["Romboides"], "precauciones": ["Mantener una postura adecuada", "Evitar movimientos bruscos"], "modo_de_hacerlo": "Colócate debajo de una mesa resistente y sujeta el borde con las manos. Levanta tu cuerpo hacia la mesa, manteniendo la espalda recta y los codos cerca del cuerpo."}',
    1), -- Espalda completa

    ('Empujes del codo contra el suelo',
    'Los empujes del codo contra el suelo son un ejercicio efectivo para fortalecer los músculos de la espalda, especialmente los romboides. Este ejercicio se puede realizar en casa sin necesidad de equipo adicional.',
    'https://ejemplo.com/video_empujes_codo_suelo',
    'https://ejemplo.com/imagen_empujes_codo_suelo',
    '{"musculos": ["Romboides"], "precauciones": ["Realizar el movimiento de manera controlada", "Evitar arquear la espalda"], "modo_de_hacerlo": "Colócate boca abajo en el suelo con los codos doblados y las manos apoyadas. Empuja hacia abajo con los codos, manteniendo la espalda recta."}',
    1), -- Espalda completa

    ('Remo con toalla',
    'El remo con toalla es un ejercicio efectivo para trabajar los músculos de la espalda, incluidos el dorsal ancho y el trapecio. Puedes realizar este ejercicio en casa utilizando una toalla como resistencia.',
    'https://ejemplo.com/video_remo_con_toalla',
    'https://ejemplo.com/imagen_remo_con_toalla',
    '{"musculos": ["Dorsal ancho", "Trapecio"], "precauciones": ["Asegurar una buena sujeción de la toalla", "Mantener la espalda recta"], "modo_de_hacerlo": "Colócate de pie, sosteniendo firmemente una toalla con ambas manos. Tira de la toalla hacia ti, manteniendo los codos cerca del cuerpo y contrayendo los músculos de la espalda."}',
    1), -- Espalda completa

    ('Plancha',
    'La plancha es un ejercicio de core que también trabaja los músculos de la espalda, incluidos el dorsal ancho, el trapecio y los romboides. Mantén una posición de tabla recta para maximizar el beneficio.',
    'https://ejemplo.com/video_plancha',
    'https://ejemplo.com/imagen_plancha',
    '{"musculos": ["Dorsal ancho", "Trapecio", "Romboides"], "precauciones": ["Mantener el cuerpo alineado", "Evitar hundir la espalda"], "modo_de_hacerlo": "Colócate en posición de plancha con los antebrazos y los dedos de los pies apoyados en el suelo. Mantén el cuerpo recto y contrae los músculos abdominales y de la espalda."}',
    1), -- Espalda completa

    ('Extensiones de espalda con pelota suiza',
    'Las extensiones de espalda con pelota suiza son excelentes para fortalecer la espalda baja y los músculos de la espalda. Mantén la pelota suiza bajo tu abdomen mientras levantas el torso del suelo.',
    'https://ejemplo.com/video_extensiones_espalda_pelota_suiza',
    'https://ejemplo.com/imagen_extensiones_espalda_pelota_suiza',
    '{"musculos": ["Dorsal ancho", "Trapecio", "Romboides"], "precauciones": ["Controlar el movimiento", "Evitar hiperextensión"], "modo_de_hacerlo": "Colócate boca abajo sobre una pelota suiza con las manos detrás de la cabeza. Levanta lentamente el torso hacia arriba, contrayendo los músculos de la espalda baja y media."}',
    1); -- Espalda completa

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen, datos_cientificos, zona_ejercicio)
VALUES
    ('Flexiones con palmada',
    'Las flexiones con palmada son un ejercicio fantástico para tonificar el tren superior y trabajar la potencia. Requieren fuerza y velocidad, lo que ayuda a ejercitar el pecho, brazos, hombros y el núcleo.',
    'https://ejemplo.com/video_flexiones_palmada',
    'https://ejemplo.com/imagen_flexiones_palmada',
    '{"musculos": ["Pectoral superior", "Brazos", "Hombros", "Core"], "precauciones": ["Realizar un calentamiento previo", "Mantener una postura alineada"], "modo_de_hacerlo": "Colócate en el suelo con las manos más abiertas que los hombros. Baja el cuerpo hacia el suelo, y cuando toques el suelo con el pecho, estira rápidamente los brazos para elevarte y dar una palmada en el aire."}',
    2), -- Pecho

    ('Flexiones inclinadas',
    'Las flexiones inclinadas son un excelente ejercicio para el pectoral superior que se puede realizar en casa. Se pueden realizar con las manos colocadas en una superficie elevada, como un banco o una silla.',
    'https://ejemplo.com/video_flexiones_inclinadas',
    'https://ejemplo.com/imagen_flexiones_inclinadas',
    '{"musculos": ["Pectoral superior", "Hombros"], "precauciones": ["Encontrar una superficie segura para apoyarse", "Mantener la cadera alineada"], "modo_de_hacerlo": "Colócate con las manos apoyadas en una superficie elevada y el cuerpo en una posición inclinada. Realiza flexiones manteniendo la forma adecuada del cuerpo."}',
    2), -- Pecho

    ('Flexiones abiertas',
    'Las flexiones abiertas son ideales para trabajar la parte externa del pecho. Se realizan con las manos colocadas más anchas que la anchura de los hombros.',
    'https://ejemplo.com/video_flexiones_abiertas',
    'https://ejemplo.com/imagen_flexiones_abiertas',
    '{"musculos": ["Pectoral externo", "Hombros"], "precauciones": ["Mantener una postura alineada", "Evitar movimientos bruscos"], "modo_de_hacerlo": "Realiza flexiones con las manos más abiertas que la anchura de los hombros para enfocar el trabajo en los pectorales y los hombros."}',
    2), -- Pecho

    ('Flexiones declinadas',
    'Las flexiones declinadas son excelentes para trabajar el pectoral inferior en casa. Se realizan con los pies elevados sobre una superficie y las manos en el suelo.',
    'https://ejemplo.com/video_flexiones_declinadas',
    'https://ejemplo.com/imagen_flexiones_declinadas',
    '{"musculos": ["Pectoral inferior", "Tríceps"], "precauciones": ["Asegurar una postura correcta", "Controlar el movimiento"], "modo_de_hacerlo": "Colócate con los pies elevados en una superficie y las manos en el suelo. Realiza flexiones manteniendo la alineación del cuerpo."}',
    2); -- Pecho


INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen_url, datos_cientificos, zona_ejercicio)
VALUES (
    'Flexiones de hombro sin carga',
    'Trabaja la parte delantera del hombro. Colócate boca abajo con las manos apoyadas en el suelo y las puntas de los pies. Dobla los codos y desciende el cuerpo, concentrando la tensión en los hombros.',
    'https://ejemplo.com/video_flexiones_hombro_sin_carga',
    'https://ejemplo.com/imagen_flexiones_hombro_sin_carga',
    '{"musculos": ["Parte delantera del hombro"], "precauciones": ["Mantener una alineación adecuada del cuerpo"], "modo_de_hacerlo": "Boca abajo con manos en el suelo y pies en punta. Desciende el cuerpo doblando los codos y luego vuelve a la posición inicial."}',
    3);--hombros


INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen_url, datos_cientificos, zona_ejercicio)
VALUES (
    'Press de hombro con carga (una mochila)',
    'Trabaja la parte exterior del hombro. De pie, eleva una mochila por encima de la cabeza manteniendo el movimiento en el plano lateral.',
    'https://ejemplo.com/video_press_hombro_con_carga',
    'https://ejemplo.com/imagen_press_hombro_con_carga',
    '{"musculos": ["Parte exterior del hombro"], "precauciones": ["Mantener la espalda recta"], "modo_de_hacerlo": "De pie, eleva la mochila por encima de la cabeza en el plano lateral."}',
    3);--hombros


INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen_url, datos_cientificos, zona_ejercicio)
VALUES (
    'Elevaciones laterales de hombro con carga (una mochila o bolsas)',
    'Trabaja la parte lateral del hombro. De pie, eleva las bolsas lateralmente con los codos ligeramente flexionados.',
    'https://ejemplo.com/video_elevaciones_laterales_hombro_con_carga',
    'https://ejemplo.com/imagen_elevaciones_laterales_hombro_con_carga',
    '{"musculos": ["Parte lateral del hombro"], "precauciones": ["Mantener la espalda recta"], "modo_de_hacerlo": "De pie, eleva las bolsas lateralmente con los codos ligeramente flexionados."}',
    3);--hombros


INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen_url, datos_cientificos, zona_ejercicio)
VALUES (
    'Elevaciones frontales de hombro con carga (una mochila o bolsa)',
    'Trabaja la parte frontal del hombro. De pie, eleva la carga por delante hasta la altura de los hombros.',
    'https://ejemplo.com/video_elevaciones_frontales_hombro_con_carga',
    'https://ejemplo.com/imagen_elevaciones_frontales_hombro_con_carga',
    '{"musculos": ["Parte frontal del hombro"], "precauciones": ["Mantener la espalda recta"], "modo_de_hacerlo": "De pie, eleva la carga por delante hasta la altura de los hombros."}',
    3);--hombros


INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen_url, datos_cientificos, zona_ejercicio)
VALUES (
    'Push up supinos de hombro con nuestro propio peso',
    'Trabaja la parte trasera del hombro. Túmbate boca arriba con las piernas dobladas y los talones apoyados en el suelo. Eleva el pecho hacia arriba, separando la parte trasera de los hombros del suelo.',
    'https://ejemplo.com/video_push_up_supinos_hombro_propio_peso',
    'https://ejemplo.com/imagen_push_up_supinos_hombro_propio_peso',
    '{"musculos": ["Parte trasera del hombro"], "precauciones": ["Mantener la espalda apoyada en el suelo"], "modo_de_hacerlo": "Túmbate boca arriba con las piernas dobladas y los talones apoyados en el suelo. Eleva el pecho hacia arriba."}',
    3);--hombros

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen_url, datos_cientificos, zona_ejercicio)
VALUES (
    'Curl de bíceps con barra',
    'Trabaja ambos haces del bíceps de forma equilibrada. Se realiza desde una posición de pie, con un agarre en la barra a la anchura de los hombros, flexionando los codos para llevar la barra lo más cerca posible del pecho mientras se mantienen los codos pegados a las costillas.',
    'https://ejemplo.com/video_curl_biceps_barra',
    'https://ejemplo.com/imagen_curl_biceps_barra',
    '{"musculos": ["Cabeza larga del bíceps", "Cabeza corta del bíceps"], "precauciones": ["Mantener los codos pegados al cuerpo"], "modo_de_hacerlo": "Desde una posición de pie, con un agarre en la barra a la anchura de los hombros, flexionar los codos para llevar la barra lo más cerca posible del pecho mientras se mantienen los codos pegados a las costillas."}',
    4);--biceps

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen_url, datos_cientificos, zona_ejercicio)
VALUES (
    'Curl de bíceps con mancuernas con agarre prono',
    'Enfatiza la cabeza larga del bíceps. Se realiza un curl de bíceps con mancuernas mientras se mantiene un agarre pronado, con las palmas de las manos mirando hacia fuera.',
    'https://ejemplo.com/video_curl_biceps_mancuernas_prone',
    'https://ejemplo.com/imagen_curl_biceps_mancuernas_prone',
    '{"musculos": ["Cabeza larga del bíceps", "Cabeza corta del bíceps"], "precauciones": ["Mantener una postura correcta"], "modo_de_hacerlo": "Realizar un curl de bíceps con mancuernas mientras se mantiene un agarre pronado, con las palmas de las manos mirando hacia fuera."}',
    4);--biceps

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen_url, datos_cientificos, zona_ejercicio)
VALUES (
    'Curl de bíceps tipo martillo',
    'Enfatiza la cabeza externa del bíceps (braquial anterior). Se realiza un curl de bíceps con mancuernas mientras se mantiene un agarre neutro, con las palmas de las manos mirándose entre sí.',
    'https://ejemplo.com/video_curl_biceps_martillo',
    'https://ejemplo.com/imagen_curl_biceps_martillo',
    '{"musculos": ["Cabeza larga del bíceps", "Braquial anterior"], "precauciones": ["Mantener una postura adecuada"], "modo_de_hacerlo": "Realizar un curl de bíceps con mancuernas mientras se mantiene un agarre neutro, con las palmas de las manos mirándose entre sí."}',
    4);--biceps

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen_url, datos_cientificos, zona_ejercicio)
VALUES (
    'Curl concentrado de bíceps',
    'Aísla y trabaja la cabeza larga del bíceps. Se realiza sentado en un banco con una mancuerna, manteniendo el codo del brazo que se trabaja en la parte interna del muslo y flexionando el codo para llevar la mancuerna hacia el pecho.',
    'https://ejemplo.com/video_curl_concentrado_biceps',
    'https://ejemplo.com/imagen_curl_concentrado_biceps',
    '{"musculos": ["Cabeza larga del bíceps"], "precauciones": ["Mantener una respiración controlada"], "modo_de_hacerlo": "Sentarse en un banco con una mancuerna, manteniendo el codo del brazo que se trabaja en la parte interna del muslo y flexionar el codo para llevar la mancuerna hacia el pecho."}',
    4);--biceps

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen_url, datos_cientificos, zona_ejercicio)
VALUES (
    'Curl de bíceps estilo araña',
    'Trabaja ambos haces del bíceps desde un ángulo diferente. Se realiza colocándose boca abajo en un banco inclinado y realizando un curl de bíceps mientras se mantiene un agarre prono de la barra.',
    'https://ejemplo.com/video_curl_biceps_estilo_arana',
    'https://ejemplo.com/imagen_curl_biceps_estilo_arana',
    '{"musculos": ["Cabeza larga del bíceps", "Cabeza corta del bíceps"], "precauciones": ["Mantener el abdomen contraído"], "modo_de_hacerlo": "Colocarse boca abajo en un banco inclinado y realizar un curl de bíceps mientras se mantiene un agarre prono de la barra."}',
    4);--biceps

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen_url, datos_cientificos, zona_ejercicio)
VALUES (
    'El 21',
    'Fatiga muscular y resistencia del bíceps. Realizar tres series de siete repeticiones cada una, dividiendo el movimiento del curl de bíceps en tres partes diferentes, con un total de 21 repeticiones por serie.',
    'https://ejemplo.com/video_el_21',
    'https://ejemplo.com/imagen_el_21',
    '{"musculos": ["Cabeza larga del bíceps", "Cabeza corta del bíceps"], "precauciones": ["Mantener una respiración controlada"], "modo_de_hacerlo": "Realizar tres series de siete repeticiones cada una, dividiendo el movimiento del curl de bíceps en tres partes diferentes, con un total de 21 repeticiones por serie."}',
    4);--biceps

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen_url, datos_cientificos, zona_ejercicio)
VALUES (
    'Fondos en banco',
    'Ejercicio para trabajar los tríceps. Realizado con el cuerpo apoyado en un banco, silla u orilla de la cama, con las manos por detrás de la espalda y estirando totalmente las piernas.',
    'https://ejemplo.com/video_fondos_en_banco',
    'https://ejemplo.com/imagen_fondos_en_banco',
    '{"musculos": ["Tríceps"], "precauciones": ["Mantener la espalda cerca del banco o del objeto utilizado"], "modo_de_hacerlo": "Flexionar los brazos y bajar el cuerpo hasta formar un ángulo de 90 grados entre los antebrazos y los tríceps."}',
    5); --triceps

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen_url, datos_cientificos, zona_ejercicio)
VALUES (
    'Copa a dos manos',
    'Ejercicio para trabajar los tríceps. Realizado de pie con las piernas separadas a la altura de los hombros, sujetando una mancuerna o objeto de peso con ambas manos y elevándolo sobre la cabeza.',
    'https://ejemplo.com/video_copa_dos_manos',
    'https://ejemplo.com/imagen_copa_dos_manos',
    '{"musculos": ["Cabeza larga del tríceps"], "precauciones": ["Mantener los codos cerrados y pegados a la cabeza"], "modo_de_hacerlo": "Flexionar los brazos lentamente llevando el peso por detrás de la nuca y luego estirar los brazos hacia arriba."}',
    5); --triceps

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen_url, datos_cientificos, zona_ejercicio)
VALUES (
    'Patadas de tríceps con mancuernas',
    'Ejercicio para trabajar los tríceps. Realizado de pie con las piernas separadas, inclinando el torso hacia adelante y flexionando los brazos hacia atrás con mancuernas.',
    'https://ejemplo.com/video_patadas_triceps_mancuernas',
    'https://ejemplo.com/imagen_patadas_triceps_mancuernas',
    '{"musculos": ["Cabeza larga del tríceps"], "precauciones": ["Mantener los codos pegados al cuerpo"], "modo_de_hacerlo": "Flexionar los brazos hacia adelante y luego estirarlos hacia atrás subiendo el peso en dirección al techo."}',
    5); --triceps

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen_url, datos_cientificos, zona_ejercicio)
VALUES (
    'Crunch',
    'Trabaja principalmente en la zona superior del abdomen. Túmbate boca arriba con las rodillas flexionadas y los pies apoyados en el suelo. Contrae el abdomen y levanta la parte superior de la espalda del suelo hacia las rodillas, manteniendo la parte baja de la espalda apoyada en el suelo.',
    'https://ejemplo.com/video_crunch',
    'https://ejemplo.com/imagen_crunch',
    '{"musculos": ["Zona superior del abdomen"], "precauciones": ["Mantener la parte baja de la espalda apoyada en el suelo"], "modo_de_hacerlo": "Túmbate boca arriba con las rodillas flexionadas y los pies apoyados en el suelo. Contrae el abdomen y levanta la parte superior de la espalda del suelo hacia las rodillas."}',
    6);--abs

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen_url, datos_cientificos, zona_ejercicio)
VALUES (
    'Heel taps',
    'Trabaja en los oblicuos. Túmbate boca arriba con los pies apoyados en el suelo y los brazos a los lados del cuerpo. Realiza un ligero encogimiento hacia delante y hacia los lados, tocando el talón izquierdo con la mano izquierda y viceversa.',
    'https://ejemplo.com/video_heel_taps',
    'https://ejemplo.com/imagen_heel_taps',
    '{"musculos": ["Oblicuos"], "precauciones": ["Mantener la parte superior de la espalda ligeramente levantada del suelo"], "modo_de_hacerlo": "Realiza un ligero encogimiento hacia delante y hacia los lados, tocando el talón izquierdo con la mano izquierda y viceversa."}',
    6);--abs

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen_url, datos_cientificos, zona_ejercicio)
VALUES (
    'Plancha isométrica',
    'Trabaja en la estabilidad del core. Empieza en posición de flexión apoyando los antebrazos en el suelo. Mantén el cuerpo en línea recta desde los hombros hasta los tobillos, contrayendo los glúteos y el abdomen. Mantén la postura durante el tiempo indicado sin perder la alineación.',
    'https://ejemplo.com/video_plancha_isometrica',
    'https://ejemplo.com/imagen_plancha_isometrica',
    '{"musculos": ["Estabilidad del core"], "precauciones": ["Mantener la alineación del cuerpo"], "modo_de_hacerlo": "Empieza en posición de flexión apoyando los antebrazos en el suelo. Mantén el cuerpo en línea recta desde los hombros hasta los tobillos."}',
    6);--abs

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen_url, datos_cientificos, zona_ejercicio)
VALUES (
    'Mountain climbers',
    'Trabaja en la estabilización del core. Ponte en posición de flexión con los brazos estirados. Alterna el movimiento de las piernas, llevando las rodillas hacia el pecho en un movimiento rápido. Mantén la espalda recta y contrae el abdomen durante todo el ejercicio.',
    'https://ejemplo.com/video_mountain_climbers',
    'https://ejemplo.com/imagen_mountain_climbers',
    '{"musculos": ["Estabilización del core"], "precauciones": ["Mantener la espalda recta"], "modo_de_hacerlo": "Ponte en posición de flexión con los brazos estirados. Alterna el movimiento de las piernas, llevando las rodillas hacia el pecho en un movimiento rápido."}',
    6);--abs

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen_url, datos_cientificos, zona_ejercicio)
VALUES (
    'Elevaciones de piernas',
    'Trabaja en la parte baja del abdomen. Levanta las piernas juntas hasta que las plantas de los pies miren hacia el techo. Baja las piernas de forma controlada, evitando tocar el suelo.',
    'https://ejemplo.com/video_elevaciones_piernas',
    'https://ejemplo.com/imagen_elevaciones_piernas',
    '{"musculos": ["Parte baja del abdomen"], "precauciones": ["Evitar tocar el suelo con las piernas"], "modo_de_hacerlo": "Levanta las piernas juntas hasta que las plantas de los pies miren hacia el techo."}',
    6);--abs

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen_url, datos_cientificos, zona_ejercicio)
VALUES (
    'Bicicletas',
    'Trabaja en los oblicuos y en el recto abdominal. Tumbado en el suelo, levanta una pierna y flexiona la rodilla hacia el pecho mientras giras la cintura para tocar el codo opuesto. Alterna el movimiento de las piernas y los brazos en un movimiento fluido.',
    'https://ejemplo.com/video_bicicletas',
    'https://ejemplo.com/imagen_bicicletas',
    '{"musculos": ["Oblicuos", "Recto abdominal"], "precauciones": ["Realizar el movimiento de forma fluida"], "modo_de_hacerlo": "Levanta una pierna y flexiona la rodilla hacia el pecho mientras giras la cintura para tocar el codo opuesto."}',
    6);--abs

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen_url, datos_cientificos, zona_ejercicio)
VALUES (
    'Pike crunch',
    'Trabaja en el recto abdominal. Túmbate boca arriba con las piernas levantadas en un ángulo de 45 grados y los brazos extendidos hacia arriba. Levanta la parte alta de la espalda del suelo hacia las piernas, manteniendo la zona lumbar apoyada en el suelo.',
    'https://ejemplo.com/video_pike_crunch',
    'https://ejemplo.com/imagen_pike_crunch',
    '{"musculos": ["Recto abdominal"], "precauciones": ["Mantener la zona lumbar apoyada en el suelo"], "modo_de_hacerlo": "Levanta la parte alta de la espalda del suelo hacia las piernas."}',
    6);--abs

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen_url, datos_cientificos, zona_ejercicio)
VALUES (
    'Encogimientos invertidos',
    'Trabaja en la parte baja del abdomen. Túmbate boca arriba con las piernas flexionadas y levanta la zona lumbar del suelo. Mantén la contracción en los abdominales inferiores durante todo el ejercicio.',
    'https://ejemplo.com/video_encogimientos_invertidos',
    'https://ejemplo.com/imagen_encogimientos_invertidos',
    '{"musculos": ["Parte baja del abdomen"], "precauciones": ["Mantener la contracción en los abdominales inferiores"], "modo_de_hacerlo": "Levanta la zona lumbar del suelo."}',
    6);-abs

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen_url, datos_cientificos, zona_ejercicio)
VALUES (
    'Hollow hold',
    'Trabaja en la estabilización del core y en los abdominales superiores e inferiores. Tumbado boca arriba, levanta los brazos y las piernas en un ángulo de 45 grados con el suelo. Mantén la posición sin despegar la zona lumbar del suelo.',
    'https://ejemplo.com/video_hollow_hold',
    'https://ejemplo.com/imagen_hollow_hold',
    '{"musculos": ["Estabilización del core", "Abdominales superiores e inferiores"], "precauciones": ["Mantener la posición sin despegar la zona lumbar del suelo"], "modo_de_hacerlo": "Levanta los brazos y las piernas en un ángulo de 45 grados con el suelo."}',
    6);--abs

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen_url, datos_cientificos, zona_ejercicio)
VALUES (
    'Sentadillas',
    'Ejercicio para trabajar cuádriceps, isquiotibiales, glúteos y pantorrillas. De pie, flexiona las rodillas para bajar el cuerpo, manteniendo la espalda recta, y luego regresa a la posición inicial.',
    'https://ejemplo.com/video_sentadillas',
    'https://ejemplo.com/imagen_sentadillas',
    '{"musculos": ["Cuádriceps", "Isquiotibiales", "Glúteos", "Pantorrillas"], "precauciones": ["Mantener la espalda recta"], "modo_de_hacerlo": "Flexiona las rodillas para bajar el cuerpo, manteniendo la espalda recta, y luego regresa a la posición inicial."}',
    7);--piernas y gluteos

-- Sentadillas laterales
INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen_url, datos_cientificos, zona_ejercicio)
VALUES (
    'Sentadillas laterales',
    'Ejercicio para trabajar las mismas áreas que las sentadillas, con un enfoque adicional en los abductores. De pie, da un paso lateral y flexiona la rodilla para bajar el cuerpo, luego regresa a la posición inicial y repite del otro lado.',
    'https://ejemplo.com/video_sentadillas_laterales',
    'https://ejemplo.com/imagen_sentadillas_laterales',
    '{"musculos": ["Cuádriceps", "Isquiotibiales", "Glúteos", "Abductores"], "precauciones": ["Mantener la espalda recta"], "modo_de_hacerlo": "Da un paso lateral y flexiona la rodilla para bajar el cuerpo, luego regresa a la posición inicial y repite del otro lado."}',
    7);--piernas y gluteos

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen_url, datos_cientificos, zona_ejercicio)
VALUES (
    'Sentadillas con salto',
    'Ejercicio para trabajar cuádriceps, isquiotibiales, glúteos y pantorrillas, con un enfoque en la potencia explosiva. De pie, flexiona las rodillas para bajar el cuerpo y luego realiza un salto, aterrizando suavemente y volviendo a la posición inicial.',
    'https://ejemplo.com/video_sentadillas_con_salto',
    'https://ejemplo.com/imagen_sentadillas_con_salto',
    '{"musculos": ["Cuádriceps", "Isquiotibiales", "Glúteos", "Pantorrillas"], "precauciones": ["Aterrizar suavemente"], "modo_de_hacerlo": "Flexiona las rodillas para bajar el cuerpo y luego realiza un salto, aterrizando suavemente y volviendo a la posición inicial."}',
    7);--piernas y gluteos

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen_url, datos_cientificos, zona_ejercicio)
VALUES (
    'Burpees',
    'Ejercicio de cuerpo completo que involucra cuádriceps, isquiotibiales, glúteos, pantorrillas y músculos del tronco. Desde posición de pie, baja al suelo en flexión, realiza una flexión de brazos, salta con los pies hacia adelante y realiza un salto vertical.',
    'https://ejemplo.com/video_burpees',
    'https://ejemplo.com/imagen_burpees',
    '{"musculos": ["Cuádriceps", "Isquiotibiales", "Glúteos", "Pantorrillas", "Músculos del tronco"], "precauciones": ["Realizar el movimiento de forma controlada"], "modo_de_hacerlo": "Desde posición de pie, baja al suelo en flexión, realiza una flexión de brazos, salta con los pies hacia adelante y realiza un salto vertical."}',
    7);--piernas y gluteos

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen_url, datos_cientificos, zona_ejercicio)
VALUES (
    'Zancadas con mancuernas',
    'Ejercicio para trabajar cuádriceps y glúteos. De pie, da un paso adelante y flexiona ambas rodillas para bajar el cuerpo, manteniendo la espalda recta. Luego, regresa a la posición inicial y repite con la otra pierna.',
    'https://ejemplo.com/video_zancadas_con_mancuernas',
    'https://ejemplo.com/imagen_zancadas_con_mancuernas',
    '{"musculos": ["Cuádriceps", "Glúteos"], "precauciones": ["Mantener la espalda recta"], "modo_de_hacerlo": "Da un paso adelante y flexiona ambas rodillas para bajar el cuerpo, manteniendo la espalda recta. Luego, regresa a la posición inicial y repite con la otra pierna."}',
    7);--piernas y gluteos

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen_url, datos_cientificos, zona_ejercicio)
VALUES (
    'Zancadas con salto',
    'Ejercicio para trabajar cuádriceps y glúteos con un componente adicional de trabajo cardiovascular y explosividad. De pie, da un paso adelante y flexiona ambas rodillas para bajar el cuerpo, luego realiza un salto y alterna las piernas en cada repetición.',
    'https://ejemplo.com/video_zancadas_con_salto',
    'https://ejemplo.com/imagen_zancadas_con_salto',
    '{"musculos": ["Cuádriceps", "Glúteos"], "precauciones": ["Realizar el movimiento de forma controlada"], "modo_de_hacerlo": "Da un paso adelante y flexiona ambas rodillas para bajar el cuerpo, luego realiza un salto y alterna las piernas en cada repetición."}',
    7);--piernas y gluteos

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen_url, datos_cientificos, zona_ejercicio)
VALUES (
    'Cohete (ejercicio con silla)',
    'Ejercicio para trabajar cuádriceps y glúteos, con un enfoque en el equilibrio y la estabilidad. Desde posición de pie, baja el cuerpo como si fueras a sentarte en una silla y luego regresa a la posición inicial.',
    'https://ejemplo.com/video_cohete',
    'https://ejemplo.com/imagen_cohete',
    '{"musculos": ["Cuádriceps", "Glúteos"], "precauciones": ["Mantener el equilibrio"], "modo_de_hacerlo": "Desde posición de pie, baja el cuerpo como si fueras a sentarte en una silla y luego regresa a la posición inicial."}',
    7);--piernas y gluteos

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen_url, datos_cientificos, zona_ejercicio)
VALUES (
    'Jumping jacks',
    'Ejercicio cardiovascular que involucra a los músculos de las piernas y los glúteos. Desde posición de pie, salta extendiendo las piernas hacia los lados mientras llevas los brazos por encima de la cabeza, luego regresa a la posición inicial.',
    'https://ejemplo.com/video_jumping_jacks',
    'https://ejemplo.com/imagen_jumping_jacks',
    '{"musculos": ["Piernas", "Glúteos"], "precauciones": ["Realizar el movimiento de forma controlada"], "modo_de_hacerlo": "Desde posición de pie, salta extendiendo las piernas hacia los lados mientras llevas los brazos por encima de la cabeza, luego regresa a la posición inicial."}',
    7);--piernas y gluteos

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen_url, datos_cientificos, zona_ejercicio)
VALUES (
    'Burrolls de Crossfit',
    'Ejercicio de cuerpo completo, con énfasis en la potencia explosiva de las piernas. Desde posición de pie, baja al suelo en flexión, realiza una flexión de brazos, un salto hacia adelante y una extensión completa del cuerpo.',
    'https://ejemplo.com/video_burrolls_crossfit',
    'https://ejemplo.com/imagen_burrolls_crossfit',
    '{"musculos": ["Piernas", "Glúteos", "Músculos del tronco"], "precauciones": ["Realizar el movimiento de forma controlada"], "modo_de_hacerlo": "Desde posición de pie, baja al suelo en flexión, realiza una flexión de brazos, un salto hacia adelante y una extensión completa del cuerpo."}',
    7);--piernas y gluteos

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen_url, datos_cientificos, zona_ejercicio)
VALUES (
    'Medio puente',
    'Ejercicio para trabajar glúteos y parte baja de la espalda. Acuéstate boca arriba con las rodillas flexionadas, levanta la cadera hacia arriba manteniendo los hombros en el suelo, luego regresa a la posición inicial.',
    'https://ejemplo.com/video_medio_puente',
    'https://ejemplo.com/imagen_medio_puente',
    '{"musculos": ["Glúteos", "Parte baja de la espalda"], "precauciones": ["Mantener los hombros en el suelo"], "modo_de_hacerlo": "Acuéstate boca arriba con las rodillas flexionadas, levanta la cadera hacia arriba manteniendo los hombros en el suelo, luego regresa a la posición inicial."}',
    7);--pierna y gluteos

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen_url, datos_cientificos, zona_ejercicio)
VALUES (
    'Puente con elevación de pierna',
    'Ejercicio para trabajar glúteos, con un enfoque adicional en la estabilidad de una pierna. Acuéstate boca arriba con las rodillas flexionadas, levanta la cadera hacia arriba y luego levanta una pierna hacia el techo, manteniendo la cadera elevada.',
    'https://ejemplo.com/video_puente_elevacion_pierna',
    'https://ejemplo.com/imagen_puente_elevacion_pierna',
    '{"musculos": ["Glúteos"], "precauciones": ["Mantener la cadera elevada"], "modo_de_hacerlo": "Acuéstate boca arriba con las rodillas flexionadas, levanta la cadera hacia arriba y luego levanta una pierna hacia el techo, manteniendo la cadera elevada."}',
    7);--piernas y gluteo

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen_url, datos_cientificos, zona_ejercicio)
VALUES (
    'Escalador',
    'Ejercicio cardiovascular que involucra a los músculos de las piernas y los glúteos. Desde posición de flexión, alterna el movimiento de las piernas llevándolas hacia el pecho en un movimiento rápido y controlado.',
    'https://ejemplo.com/video_escalador',
    'https://ejemplo.com/imagen_escalador',
    '{"musculos": ["Piernas", "Glúteos"], "precauciones": ["Mantener la espalda recta"], "modo_de_hacerlo": "Desde posición de flexión, alterna el movimiento de las piernas llevándolas hacia el pecho en un movimiento rápido y controlado."}',
    7);--piernas y gluteos

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen_url, datos_cientificos, zona_ejercicio)
VALUES (
    'Patada de burro',
    'Ejercicio para trabajar la parte superior del glúteo. Desde posición de cuatro patas, eleva una pierna hacia atrás manteniendo el glúteo contraído y luego baja de forma controlada, repitiendo con la otra pierna.',
    'https://ejemplo.com/video_patada_burro',
    'https://ejemplo.com/imagen_patada_burro',
    '{"musculos": ["Glúteos"], "precauciones": ["Mantener el glúteo contraído"], "modo_de_hacerlo": "Desde posición de cuatro patas, eleva una pierna hacia atrás manteniendo el glúteo contraído y luego baja de forma controlada, repitiendo con la otra pierna."}',
    7);--piernas y gluteos

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen_url, datos_cientificos, zona_ejercicio)
VALUES (
    'Sentadilla sumo',
    'Ejercicio similar a las sentadillas estándar, con mayor énfasis en los abductores y aductores de las piernas. De pie, con los pies más anchos que los hombros y los dedos de los pies hacia afuera, flexiona las rodillas para bajar el cuerpo, manteniendo la espalda recta.',
    'https://ejemplo.com/video_sentadilla_sumo',
    'https://ejemplo.com/imagen_sentadilla_sumo',
    '{"musculos": ["Cuádriceps", "Isquiotibiales", "Glúteos", "Abductores", "Aductores"], "precauciones": ["Mantener la espalda recta"], "modo_de_hacerlo": "De pie, con los pies más anchos que los hombros y los dedos de los pies hacia afuera, flexiona las rodillas para bajar el cuerpo, manteniendo la espalda recta."}',
    7);--piernas y gluteos

--**RUTINAS*

INSERT INTO rutinas (ejercicio, especificaciones)
VALUES 
    (1, '3 sets de 10 repeticiones'), -- Dominadas (Dorsal Mayor)
    (3, '4 sets de 12 repeticiones'), -- Remo con Mancuerna (Dorsal Mayor)
    (7, '3 sets de 15 repeticiones'), -- Encogimientos de Hombros con Mancuernas (Trapecio)
    (12, '4 sets de 12 repeticiones'), -- Face Pulls (Romboides)
    (14, '3 sets de 10 repeticiones'); -- Dominadas con Agarre Neutro (Romboides)

INSERT INTO rutinas (ejercicio, especificaciones)
VALUES 
    (1, '3 sets de 10 repeticiones'), -- Dominadas (Dorsal Mayor)
    (7, '3 sets de 15 repeticiones'), -- Encogimientos de Hombros con Mancuernas (Trapecio)
    (12, '4 sets de 12 repeticiones'), -- Face Pulls (Romboides)
    (2, '4 sets de 10 repeticiones'), -- Remo con Barra (Dorsal Mayor)
    (11, '3 sets de 12 repeticiones'); -- Remo con Agarre Pronado (Romboides)

INSERT INTO rutinas (ejercicio, especificaciones)
VALUES 
    (15, '4 sets de 10 repeticiones'), -- Press de Banca Inclinado (Pectoral Mayor Superior)
    (19, '3 sets de 12 repeticiones'), -- Press de Banca Plano con Mancuernas (Pectoral Mayor Medio)
    (21, '3 sets de 8 repeticiones'), -- Press de Banca Declinado (Pectoral Mayor Inferior)
    (16, '3 sets de 12 repeticiones'), -- Aperturas en Polea Alta (Pectoral Mayor Superior)
    (22, '4 sets de 10 repeticiones'); -- Fondos en Paralelas con las Piernas Elevadas (Pectoral Mayor Inferior)

INSERT INTO rutinas (ejercicio, especificaciones)
VALUES 
    (16, '3 sets de 12 repeticiones'), -- Aperturas en Polea Alta (Pectoral Mayor Superior)
    (18, '4 sets de 10 repeticiones'), -- Press de Banca Plano con Barra (Pectoral Mayor Medio)
    (24, '3 sets de 12 repeticiones'), -- Cruces con Polea Baja (Pectoral Mayor Inferior)
    (17, '3 sets de 12 repeticiones'), -- Elevaciones Frontales con Mancuernas (Pectoral Mayor Superior)
    (20, '4 sets de 12 repeticiones'); -- Pec Deck (Pectoral Mayor Medio)

INSERT INTO rutinas (ejercicio, especificaciones)
VALUES 
    (27, '3 sets de 12 repeticiones'), -- Elevaciones Frontales con Cuerda en Polea Baja
    (25, '4 sets de 12 repeticiones'), -- Elevaciones Laterales con Mancuernas
    (31, '3 sets de 10 repeticiones'), -- Remo Alto con Barra
    (32, '3 sets de 12 repeticiones'), -- Remo Inclinado con Mancuernas
    (30, '3 sets de 15 repeticiones'); -- Elevaciones Laterales con Polea

INSERT INTO rutinas (ejercicio, especificaciones)
VALUES 
    (27, '3 sets de 12 repeticiones'), -- Elevaciones Frontales con Cuerda en Polea Baja
    (30, '3 sets de 15 repeticiones'), -- Elevaciones Laterales con Polea
    (31, '3 sets de 10 repeticiones'), -- Remo Alto con Barra
    (32, '3 sets de 12 repeticiones'), -- Remo Inclinado con Mancuernas
    (25, '4 sets de 12 repeticiones'); -- Elevaciones Laterales con Mancuernas

INSERT INTO rutinas (ejercicio, especificaciones)
VALUES 
    (33, '3 sets de 12 repeticiones'), -- Curl Inclinado en Banco
    (34, '3 sets de 12 repeticiones'), -- Curl a una Mano en Cable o Polea
    (38, '4 sets de 10 repeticiones'), -- Curl con Mancuernas
    (39, '3 sets de 10 repeticiones'); -- Curl Predicador con Barra

INSERT INTO rutinas (ejercicio, especificaciones)
VALUES 
    (3, '3 sets de 12 repeticiones'), -- Curl a una Mano en Cable o Polea
    (36, '3 sets de 12 repeticiones'), -- Curl Martillo
    (38, '4 sets de 10 repeticiones'), -- Curl con Mancuernas
    (39, '3 sets de 10 repeticiones'); -- Curl Predicador con Barra

INSERT INTO rutinas (ejercicio, especificaciones)
VALUES 
    (46, '3 sets de 12 repeticiones'), -- Press Francés con Barra Z con Agarre en V
    (45, '3 sets de 10 repeticiones'), -- Fondos en Paralelas con Agarre Estrecho
    (49, '4 sets de 12 repeticiones'), -- Extensiones de Tríceps con Mancuerna Acostado
    (41, '3 sets de 12 repeticiones'), -- Extensiones de Tríceps en Polea Alta
    (44, '3 sets de 12 repeticiones'); -- Extensiones de Tríceps en Polea Alta con Agarre en V

INSERT INTO rutinas (ejercicio, especificaciones)
VALUES 
    (50, '3 sets de 12 repeticiones'), -- Flexión de Muñeca con Barra
    (55, '3 sets de 12 repeticiones'), -- Extensión de Muñeca con Polea
    (57, '3 sets de 12 repeticiones'), -- Pronación de Muñeca con Mancuerna
    (61, '3 sets de 12 repeticiones'), -- Supinación de Muñeca con Polea
    (51, '3 sets de 12 repeticiones'); -- Flexión de Muñeca con Mancuerna

INSERT INTO rutinas (ejercicio, especificaciones)
VALUES 
    (72, '4 sets de 12 repeticiones'), -- Sentadillas
    (73, '3 sets de 15 repeticiones'), -- Extensiones de Rodilla
    (77, '4 sets de 10 repeticiones'), -- Prensa de Piernas con los Pies Girados hacia Fuera
    (78, '4 sets de 12 repeticiones'), -- Sentadillas con los Pies Juntos
    (79, '3 sets de 15 repeticiones'), -- Extensiones de Rodilla con los Pies Girados hacia Dentro
    (80, '3 sets de 10 repeticiones'); -- Prensa de Piernas con los Pies Girados hacia Dentro

INSERT INTO rutinas (ejercicio, especificaciones)
VALUES 
    (62, '3 sets de 15 repeticiones'), -- Abdominales Clásicos
    (63, '3 sets de 12 repeticiones'), -- Elevaciones de Piernas Colgando
    (64, '3 sets de 30 segundos'), -- Plancha abdominal
    (65, '3 sets de 15 repeticiones por lado'), -- Crunches Laterales
    (68, '3 sets de 15 repeticiones por lado'); -- Giros Rusos con Pelota Suiza

INSERT INTO rutinas (ejercicio, especificaciones)
VALUES 
    (86, '4 sets de 10 repeticiones'), -- Peso Muerto Rumano
    (83, '3 sets de 12 repeticiones'), -- Curl Femoral Sentado
    (87, '3 sets de 12 repeticiones'); -- Curl Femoral Tumbado con los Pies Girados hacia Dentro


INSERT INTO rutinas (ejercicio, especificaciones)
VALUES 
    (88, '4 sets de 12 repeticiones'), -- Hip Thrust
    (90, '3 sets de 15 repeticiones por lado'), -- Elevación Lateral de Pierna Tumbado (Clamshell)
    (92, '3 sets de 15 repeticiones por lado'); -- Elevación Lateral de Pierna de Pie (Fire Hydrant)

INSERT INTO rutinas (ejercicio, especificaciones)
VALUES 
    (93, '4 sets de 15 repeticiones'), -- Elevaciones de Talones de Pie
    (94, '4 sets de 15 repeticiones'); -- Elevaciones de Talones Sentado

