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
    datos_cientificos JSON,
    id_musculo INT,
    FOREIGN KEY (id_musculo) REFERENCES musculos(id_musculo)
);

CREATE TABLE ejercicios_en_casa (
    ejercicio_en_casa_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT,
    video_url VARCHAR(255),
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
('Braquiorradial', 'El músculo braquiorradial o supinador largo es un músculo largo del brazo en la región externa y superficial del antebrazo. Actúa flexionando el codo y es capaz también de pronación y supinación, dependiendo de su posición en el antebrazo.', 'https://imgs.search.brave.com/wCfrpGAFCZ1dBZ5Vqn9IKrMadA3Af4OpgR7NrVUXbAQ/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9jZG4u/bGVjdHVyaW8uY29t/L2Fzc2V0cy9SYWRp/YWwtbmVydmUtYXMt/aXQtcGFzc2VzLXRo/cm91Z2gtdGhlLWZv/cmVhcm0tZmVhdHVy/aW5nLXRoZS1tdXNj/bGVzLWl0LWlubmVy/dmF0ZXMtMTIwMHg1/MjkuanBn');

-- Músculos abdominales
INSERT INTO musculos (nombre, descripcion, imagen) VALUES 
('Recto Abdominal seccion alta', 'El recto abdominal es el músculo principal de la pared abdominal. Se extiende desde el esternón hasta la sínfisis púbica y es responsable de la flexión del tronco. Puedes trabajar el recto abdominal con ejercicios como crunches y abdominales.', 'https://imgs.search.brave.com/ZeOMph-43jwMwThdj1NvLKctfVd9fYSFE8r5rR8zO68/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9lcmVz/ZGVwb3J0aXN0YS5j/b20vd3AtY29udGVu/dC91cGxvYWRzLzIw/MTkvMDEvYWJkb21p/bmFsZXMtdG9kb3Mt/bG9zLW11c2N1bG9z/LmpwZz9hdXRvPXdl/YnAmcXVhbGl0eT02/MCZ3aWR0aD0xOTIw/JmNyb3A9MTY6OSxz/bWFydCxzYWZl'),
('Recto Abdominal seccion baja', 'El recto abdominal es el músculo principal de la pared abdominal. Se extiende desde el esternón hasta la sínfisis púbica y es responsable de la flexión del tronco. Puedes trabajar el recto abdominal con ejercicios como crunches y abdominales.', 'https://imgs.search.brave.com/ZeOMph-43jwMwThdj1NvLKctfVd9fYSFE8r5rR8zO68/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9lcmVz/ZGVwb3J0aXN0YS5j/b20vd3AtY29udGVu/dC91cGxvYWRzLzIw/MTkvMDEvYWJkb21p/bmFsZXMtdG9kb3Mt/bG9zLW11c2N1bG9z/LmpwZz9hdXRvPXdl/YnAmcXVhbGl0eT02/MCZ3aWR0aD0xOTIw/JmNyb3A9MTY6OSxz/bWFydCxzYWZl'),
('Oblicuos Externos', 'Los oblicuos externos son músculos ubicados en los lados del abdomen. Ayudan en la rotación y flexión lateral del tronco. Puedes fortalecer los oblicuos externos con ejercicios como las torsiones y los crunches oblicuos.', 'https://imgs.search.brave.com/ZeOMph-43jwMwThdj1NvLKctfVd9fYSFE8r5rR8zO68/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9lcmVz/ZGVwb3J0aXN0YS5j/b20vd3AtY29udGVu/dC91cGxvYWRzLzIw/MTkvMDEvYWJkb21p/bmFsZXMtdG9kb3Mt/bG9zLW11c2N1bG9z/LmpwZz9hdXRvPXdl/YnAmcXVhbGl0eT02/MCZ3aWR0aD0xOTIw/JmNyb3A9MTY6OSxz/bWFydCxzYWZl'),
('Oblicuos Internos', 'Los oblicuos internos están ubicados debajo de los oblicuos externos y también contribuyen a la rotación y flexión lateral del tronco. Ejercicios como las torsiones y los ejercicios de oblicuos ayudan a trabajar estos músculos.', 'https://imgs.search.brave.com/ZeOMph-43jwMwThdj1NvLKctfVd9fYSFE8r5rR8zO68/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9lcmVz/ZGVwb3J0aXN0YS5j/b20vd3AtY29udGVu/dC91cGxvYWRzLzIw/MTkvMDEvYWJkb21p/bmFsZXMtdG9kb3Mt/bG9zLW11c2N1bG9z/LmpwZz9hdXRvPXdl/YnAmcXVhbGl0eT02/MCZ3aWR0aD0xOTIw/JmNyb3A9MTY6OSxz/bWFydCxzYWZl'),
('Transverso Abdominal', 'El transverso abdominal es el músculo más profundo de la pared abdominal y actúa como un corsé natural que ayuda a estabilizar la columna vertebral. Puedes fortalecer el transverso abdominal con ejercicios de contracción y respiración profunda.', 'https://imgs.search.brave.com/ZeOMph-43jwMwThdj1NvLKctfVd9fYSFE8r5rR8zO68/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9lcmVz/ZGVwb3J0aXN0YS5j/b20vd3AtY29udGVu/dC91cGxvYWRzLzIw/MTkvMDEvYWJkb21p/bmFsZXMtdG9kb3Mt/bG9zLW11c2N1bG9z/LmpwZz9hdXRvPXdl/YnAmcXVhbGl0eT02/MCZ3aWR0aD0xOTIw/JmNyb3A9MTY6OSxz/bWFydCxzYWZl');

-- Músculos de las piernas
INSERT INTO musculos (nombre, descripcion, imagen) VALUES 
('Cuádriceps - Recto Femoral', 'El recto femoral es parte del cuádriceps y se encuentra en la parte frontal del muslo. Es responsable de la extensión de la rodilla y ayuda en la flexión de la cadera. Puedes trabajar el recto femoral con ejercicios como sentadillas y extensiones de piernas.', 'https://imgs.search.brave.com/7ltSKTSQW5pO565DmkVDhQAztkXgUoJGOR2nAms9srE/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9sYWZp/c2lvdGVyYXBpYS5u/ZXQvd3AtY29udGVu/dC91cGxvYWRzLzIw/MjAvMDkvbXVzY3Vs/by1jdWFkcmljZXBz/LTcyNHgxMDI0LnBu/Zw'),
('Cuádriceps - Vasto externo', 'El vasto lateral es uno de los tres músculos que conforman el cuádriceps. Se encuentra en la parte externa del muslo y contribuye a la extensión de la rodilla. Ejercicios como sentadillas y prensa de piernas fortalecen el vasto lateral.', 'https://imgs.search.brave.com/7ltSKTSQW5pO565DmkVDhQAztkXgUoJGOR2nAms9srE/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9sYWZp/c2lvdGVyYXBpYS5u/ZXQvd3AtY29udGVu/dC91cGxvYWRzLzIw/MjAvMDkvbXVzY3Vs/by1jdWFkcmljZXBz/LTcyNHgxMDI0LnBu/Zw'),
('Cuádriceps - Vasto interno', 'El vasto medial es otro componente del cuádriceps y se encuentra en la parte interna del muslo. Participa en la extensión de la rodilla y es esencial para la estabilidad de la rótula. Ejercicios como sentadillas y prensa de piernas trabajan el vasto medial.', 'https://imgs.search.brave.com/7ltSKTSQW5pO565DmkVDhQAztkXgUoJGOR2nAms9srE/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9sYWZp/c2lvdGVyYXBpYS5u/ZXQvd3AtY29udGVu/dC91cGxvYWRzLzIw/MjAvMDkvbXVzY3Vs/by1jdWFkcmljZXBz/LTcyNHgxMDI0LnBu/Zw'),
('aductores', 'El vasto intermedio es el tercer músculo del cuádriceps y se encuentra entre el vasto lateral y el vasto medial. También contribuye a la extensión de la rodilla. Puedes fortalecer el vasto intermedio con ejercicios de extensión de piernas y sentadillas.', 'https://imgs.search.brave.com/7ltSKTSQW5pO565DmkVDhQAztkXgUoJGOR2nAms9srE/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9sYWZp/c2lvdGVyYXBpYS5u/ZXQvd3AtY29udGVu/dC91cGxvYWRzLzIw/MjAvMDkvbXVzY3Vs/by1jdWFkcmljZXBz/LTcyNHgxMDI0LnBu/Zw');

INSERT INTO musculos (nombre, descripcion, imagen) VALUES 
('Bíceps Femoral', 'El bíceps femoral es uno de los músculos principales de los isquiotibiales y se encuentra en la parte posterior del muslo. Contribuye a la flexión de la rodilla y la extensión de la cadera. Puedes trabajar el bíceps femoral con ejercicios como curls de piernas y peso muerto.', 'https://imgs.search.brave.com/D_FfXGVaim7T191rwlGZlwZx8sKXfiD8IQDJXSmUjDM/rs:fit:860:0:0/g:ce/aHR0cHM6Ly90dWN1/ZXJwb2h1bWFuby5j/b20vd3AtY29udGVu/dC91cGxvYWRzLzIw/MTgvMDkvSXNxdWlv/dGliaWFsZXMtZmFj/dG9yZXMtZGUtcmll/c2dvLXF1ZS1jYXVz/YW4tbGVzaW9uZXMt/ZW4tZXN0b3MtbXVz/Y3Vsb3MtMS0zMDB4/MjcyLmpwZw'),
('Semitendinoso', 'El semitendinoso es otro músculo de los isquiotibiales y se encuentra en la parte interna del muslo. Ayuda en la flexión de la rodilla y la extensión de la cadera. Ejercicios como curls de piernas y peso muerto trabajan el semitendinoso.', 'https://imgs.search.brave.com/D_FfXGVaim7T191rwlGZlwZx8sKXfiD8IQDJXSmUjDM/rs:fit:860:0:0/g:ce/aHR0cHM6Ly90dWN1/ZXJwb2h1bWFuby5j/b20vd3AtY29udGVu/dC91cGxvYWRzLzIw/MTgvMDkvSXNxdWlv/dGliaWFsZXMtZmFj/dG9yZXMtZGUtcmll/c2dvLXF1ZS1jYXVz/YW4tbGVzaW9uZXMt/ZW4tZXN0b3MtbXVz/Y3Vsb3MtMS0zMDB4/MjcyLmpwZw'),
('Semimembranoso', 'El semimembranoso es un músculo profundo de los isquiotibiales y también se encuentra en la parte interna del muslo. Contribuye a la flexión de la rodilla y la extensión de la cadera. Puedes fortalecer el semimembranoso con ejercicios como curls de piernas y peso muerto.', 'https://imgs.search.brave.com/D_FfXGVaim7T191rwlGZlwZx8sKXfiD8IQDJXSmUjDM/rs:fit:860:0:0/g:ce/aHR0cHM6Ly90dWN1/ZXJwb2h1bWFuby5j/b20vd3AtY29udGVu/dC91cGxvYWRzLzIw/MTgvMDkvSXNxdWlv/dGliaWFsZXMtZmFj/dG9yZXMtZGUtcmll/c2dvLXF1ZS1jYXVz/YW4tbGVzaW9uZXMt/ZW4tZXN0b3MtbXVz/Y3Vsb3MtMS0zMDB4/MjcyLmpwZw');

-- Músculos de glúteos
INSERT INTO musculos (nombre, descripcion, imagen) VALUES 
('Glúteo Mayor', 'El glúteo mayor es el músculo más grande de los glúteos y se encuentra en la parte posterior de las nalgas. Es responsable de la extensión y abducción de la cadera. Puedes fortalecer el glúteo mayor con ejercicios como sentadillas, peso muerto y elevaciones de cadera.', 'https://imgs.search.brave.com/ejASDzmEkTmzSWlM7ss_MxY0VfJCHCwHsStxUH6PLf8/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/aG91c2VvZnBlYWNo/LmNvbS93cC1jb250/ZW50L3VwbG9hZHMv/MjAyMC8wNS9nbHV0/ZS1tdXNjbGVzLTEu/anBn'),
('Glúteo medio', 'El glúteo medio es un músculo ubicado en la parte lateral de la cadera y desempeña un papel crucial en la estabilidad de la pelvis, así como en la abducción y rotación externa de la cadera. ', 'https://imgs.search.brave.com/ejASDzmEkTmzSWlM7ss_MxY0VfJCHCwHsStxUH6PLf8/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/aG91c2VvZnBlYWNo/LmNvbS93cC1jb250/ZW50L3VwbG9hZHMv/MjAyMC8wNS9nbHV0/ZS1tdXNjbGVzLTEu/anBn');

-- Músculos de las pantorrillas
INSERT INTO musculos (nombre, descripcion, imagen) VALUES 
('Gemelo interno', 'Gemelo interno del músculo gastrocnemio es una de las dos cabezas que componen este músculo grande y poderoso de la pantorrilla', 'https://imgs.search.brave.com/o90XC8DxBgz7DYFBIEf691hli6QVx42JmBZ7vLiu_6s/rs:fit:500:0:0/g:ce/aHR0cHM6Ly93d3cu/cXVpbnRhbmFtYXNz/YWdlcy5jb20vd3At/Y29udGVudC91cGxv/YWRzLzIwMjIvMDcv/Q29udHJhY3R1cmEt/bXVzY3VsYXItZGUt/cGFudG9ycmlsbGEu/anBn'),
('Gemelo externo', 'Gemelo externo del gastrocnemio se encuentra en la parte externa o lateral de la pantorrilla. ', 'https://imgs.search.brave.com/o90XC8DxBgz7DYFBIEf691hli6QVx42JmBZ7vLiu_6s/rs:fit:500:0:0/g:ce/aHR0cHM6Ly93d3cu/cXVpbnRhbmFtYXNz/YWdlcy5jb20vd3At/Y29udGVudC91cGxv/YWRzLzIwMjIvMDcv/Q29udHJhY3R1cmEt/bXVzY3VsYXItZGUt/cGFudG9ycmlsbGEu/anBn');

-- Dorsal mayor
   INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES (
    'Dominadas', 
    'Agarra la barra con un agarre en pronación, los brazos y los hombros completamente extendidos. Levanta tu cuerpo hasta que tu barbilla esté por encima de la barra. Baja tu cuerpo de nuevo a la posición inicial.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-bodyweight-pullup-front.mp4#t=0.1',  
    '{"precauciones": ["Mantén una buena forma durante todo el ejercicio para evitar lesiones.", "Evita balancear el cuerpo para obtener un impulso adicional."]}', 
    1);

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES (
    'Remo con Barra Inclinado', 
    'Toma una barra con un agarre pronado o supinado al ancho de los hombros. Inclínate hacia adelante desde las caderas manteniendo la espalda recta. Jala el peso hacia tu abdomen superior. Baja el peso de manera controlada y repite.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-barbell-bent-over-row-side.mp4#t=0.1',  
    '{"precauciones": ["Mantén una postura adecuada para proteger tu espalda baja.", "Evita realizar el movimiento con un peso excesivo que comprometa tu técnica."]}', 
    1);

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Remo con Mancuerna', 
    'Toma ambas mancuernas y haz una inclinación hacia adelante desde las caderas. Asegúrate de mantener la espalda recta.2Cuanto más cerca esté tu torso de estar paralelo al suelo, mayor será el rango de movimiento en tu hombro. Cuanto mejor sean los resultados que obtendrás del ejercicio.3 Deja que tus brazos cuelguen libremente y luego tira de tu codo hacia atrás, directamente hacia el techo.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Dumbbells-dumbbell-row-unilateral-side.mp4#t=0.1',  
    '{"precauciones": ["Asegúrate de mantener una buena postura durante el ejercicio.", "Varía los agarres para enfocarte en diferentes áreas del dorsal mayor."]}', 
    1);

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES (
    'Pull de Máquina', 
    'Agarra la barra con las palmas hacia adelante, tus manos deben estar separadas a una distancia mayor que el ancho de tus hombros. Mientras tienes ambos brazos extendidos frente a ti sosteniendo la barra, inclina tu torso hacia atrás unos 30 grados mientras sacas el pecho. Tira de la barra hacia abajo hasta aproximadamente el nivel de la barbilla o un poco más abajo en un movimiento suave mientras aprietas los omóplatos juntos. Después de un segundo de apretar, levante lentamente la barra hasta volver a la posición inicial cuando tus brazos estén completamente extendidos.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-machine-pulldown-side.mp4#t=0.1',  
    '{"precauciones": ["Ajusta el peso de la máquina de acuerdo a tu capacidad.", "Mantén una postura adecuada para evitar lesiones en la espalda baja.", "Controla el movimiento en todo momento y evita usar impulso para tirar de la barra."]}', 
    1);

I   INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES (
    'Remo Sentado en Máquina con Cable', 
    'Siéntate con la espalda recta en la máquina y agarra las manijas. Tira de las manijas hacia atrás utilizando tus brazos. Tus piernas y torso deben formar un ángulo de 90°. Empuja tu pecho hacia afuera. Tira de las manijas hacia tu cuerpo hasta que tus manos estén al lado de tu abdomen.', 
    'url_del_video_remo_sentado_en_maquina_con_cable',  
    '{"precauciones": ["Mantén una postura adecuada durante todo el ejercicio para evitar lesiones en la espalda.", "Controla la respiración y evita contener la respiración durante el movimiento.", "Utiliza un peso que te permita mantener la técnica correcta."]}', 
    1;


    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES (
    'Pullover Inclinado con Barra y Cable', 
    'Puedes usar cualquier accesorio. El cable debe ajustarse hasta la parte más alta de la máquina. Toma tu accesorio y da unos pasos hacia atrás. Empuja tus glúteos hacia atrás hasta que estés inclinado hacia delante un poco. Inicia el movimiento con tus hombros y no con tus codos. Imagina intentar tirar del accesorio a través de tus muslos en la parte inferior.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Cables-cable-pullover-front.mp4#t=0.1',  
    '{"precauciones": ["Asegúrate de mantener una buena forma durante todo el ejercicio para evitar lesiones.", "Controla la respiración y evita contener la respiración durante el movimiento.", "Utiliza un peso adecuado para tu nivel de fuerza y experiencia."]}', 
    1);


--trapecio
    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES (
    'Encogimiento a 30 Grados con Cable', 
    'Utiliza un accesorio de asa en ambos lados del crossover. Con el accesorio de cable ajustado hasta el fondo. Agarra ambos mangos y asegúrate de estar centrado en la máquina. Deja que tus brazos cuelguen libremente. Eleva tus omóplatos hacia arriba y hacia tus oídos. Deja que tus omóplatos vuelvan a deprimirse hasta la posición inicial.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Cables-cable-30-degree-shrug-front.mp4#t=0.1',  
    '{"precauciones": ["Mantén una postura estable y evita balancear el cuerpo durante el ejercicio.", "Controla el movimiento en todo momento para evitar lesiones en los hombros y la espalda.", "Utiliza un peso adecuado que te permita realizar el ejercicio correctamente y sin comprometer la técnica."]}', 
    2);

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES (
    'Encogimiento de Hombros Sentado con Mancuernas', 
    'Siéntate en un banco con mancuernas en ambas manos, las palmas mirando hacia tu cuerpo, la espalda recta. Eleva tus hombros y mantén la posición contraída en el punto máximo del movimiento. Baja lentamente tus hombros hasta volver a la posición inicial.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-dumbbell-seated-shrug-front.mp4#t=0.1',  
    '{"precauciones": ["Mantén una postura estable y evita balancear el cuerpo durante el ejercicio.", "Controla el movimiento en todo momento para evitar lesiones en los hombros y la espalda.", "Utiliza un peso adecuado que te permita realizar el ejercicio correctamente y sin comprometer la técnica."]}', 
    2);


--romboide
    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES (
    'Remo  Pronado con Barra', 
    'Comienza inclinándote hacia adelante con la espalda recta y las placas descansando en el suelo. Asegúrate de que tus codos estén completamente extendidos. Jala la barra hasta tu esternón. Regresa las placas al suelo y deja que la barra llegue a una parada completa. Luego inicia la siguiente repetición.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-barbell-pronated-pendlay-row-front.mp4#t=0.1',  
    '{"precauciones": ["Mantén la espalda recta y el núcleo comprometido para evitar lesiones en la parte baja de la espalda.", "Utiliza una técnica adecuada para evitar balancear el cuerpo y mantener el enfoque en los músculos trabajados.", "No utilices un peso excesivo que comprometa tu forma o cause lesiones."]}', 
    3);


    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES (
    'Remo en Máquina con Agarre en Pronación', 
    'Siéntate en la máquina con los pies planos y agarra las manijas con las palmas hacia abajo, manteniendo la espalda recta. Tira de las manijas hacia tu abdomen inferior, apretando los omóplatos y manteniendo los codos cerca del cuerpo. Regresa lentamente a la posición inicial, extendiendo completamente tus brazos sin bloquear los codos. Repite para las repeticiones deseadas.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Machine-machine-overhand-row-front.mp4#t=0.1',  
    '{"precauciones": ["Mantén una postura estable y controlada durante todo el ejercicio para evitar lesiones.", "No bloquees los codos al extender completamente los brazos al volver a la posición inicial.", "Utiliza un peso adecuado que te permita realizar el ejercicio con la técnica correcta y sin comprometer la seguridad."]}', 
    3);



--perctoral mayor superior
    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES (
    'Press de Banca Inclinado con Barra', 
    'Posiciona el banco entre 30 y 45 grados. Túmbate completamente en el banco con los pies en el suelo. Con los brazos estirados, desencaja la barra. Baja la barra hasta el medio de tu pecho. Sube la barra (lenta y controladamente) hasta que hayas bloqueado tus codos.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Barbell-barbell-incline-bench-press-side.mp4#t=0.1',  
    '{"precauciones": ["Ajusta el banco correctamente para evitar lesiones en los hombros o la espalda baja.", "Utiliza un agarre seguro y mantén la barra estable en todo momento.", "Controla el movimiento en todo momento y evita cargar más peso del que puedas manejar adecuadamente."]}', 
    4);


    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES (
    'Press de Banca Inclinada con Mancuernas', 
    'Recuéstate completamente en el banco inclinado con los pies en el suelo. Levanta las mancuernas hasta tener los brazos rectos. Baja las mancuernas hasta la mitad de tu pecho. Levanta las mancuernas hasta que tengas los codos bloqueados.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-dumbbell-incline-bench-press-front_q2q0T12.mp4#t=0.1',  
    '{"precauciones": ["Mantén una postura estable y controlada en todo momento para evitar lesiones.", "No utilices un peso excesivo que comprometa tu forma o cause lesiones.", "Asegúrate de respirar adecuadamente durante el ejercicio para mantener una buena oxigenación muscular."]}', 
    4);


--pectoral mayor medio
   
    INSERT INTO ejercicios (nombre, descripcion, video_url, imagen, datos_cientificos, id_musculo) VALUES
    ('Press de Banca Plano con Barra', 
    'Acuéstate boca arriba en un banco plano con los pies apoyados en el suelo. Sostén una barra con las manos a la anchura de los hombros, con las palmas hacia abajo. Baja la barra hasta que toque el pecho, manteniendo los codos cerca del cuerpo. Empuja la barra hacia arriba hasta que los brazos estén extendidos. Repite el movimiento.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-barbell-bench-press-front.mp4#t=0.1',  
    '{"precauciones": ["Asegúrate de mantener una buena técnica durante todo el movimiento.", "Varía la anchura del agarre para trabajar diferentes áreas del pectoral mayor."]}', 
    5);

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Press de Banca Plano con Mancuernas', 
    'Acuéstate boca arriba en un banco plano con los pies apoyados en el suelo. Sostén una mancuerna en cada mano con las palmas hacia abajo. Baja las mancuernas hasta que toquen el pecho, manteniendo los codos cerca del cuerpo. Empuja las mancuernas hacia arriba hasta que los brazos estén extendidos. Repite el movimiento.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-dumbbell-bench-press-front_y8zKZJl.mp4#t=0.1', 
    '{"precauciones": ["Selecciona un peso adecuado para las mancuernas.", "Controla el rango de movimiento para maximizar la activación del pectoral mayor."]}', 
    5);
    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Cruces de Cable en la Máquina', 
    'Utiliza un accesorio de asa ajustado hasta el fondo de la máquina. Lleva ambas asas a tu pecho y asegúrate de estar en el centro de la máquina de cruces de cables. Camina unos pasos hacia adelante. Luego, empuja el peso hacia adelante. A partir de ahí, tus hombros deben abducir y aducir horizontalmente mientras tus codos permanecen en una posición fija.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-cable-pec-fly-front.mp4#t=0.1', 
    '{"precauciones": ["Ajusta el peso de la máquina de cruces de cables adecuadamente.", "Mantén una posición estable y controlada durante todo el movimiento."]}', 
    5);

--pectoral mayor inferior

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Press de Banca en Declive con Mancuernas', 
    'Acuéstate en un banco inclinado con ambos brazos extendidos frente a ti. Flexiona los codos y lleva tus brazos superiores hacia tu costado. Una vez que tus brazos superiores hayan llegado a tu costado, presiona las mancuernas de nuevo hacia el techo.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-dumbbell-decline-bench-press-side.mp4#t=0.1', 
    '{"precauciones": ["Asegúrate de utilizar un banco inclinado adecuado y seguro.", "Selecciona un peso de mancuerna apropiado para tu nivel de fuerza."]}', 
    6);

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Press de Banca en Declive con Cable', 
    'Usa un accesorio con mango. Acerca un banco a los cables. Los cables deben estar configurados por encima de la altura. Lleva ambos mangos a tu pecho y asegúrate de que estás en el centro de la cruzada de cables. Desde allí, deberías flexionar y extender simultáneamente tanto los hombros como los codos.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Cables-cable-decline-bench-press-side.mp4#t=0.1', 
    '{"precauciones": ["Ajusta la altura de los cables para evitar lesiones.", "Mantén una postura adecuada durante todo el ejercicio."]}', 
    6);

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Fondos en Barras Paralelas', 
    'Agarra las barras con los brazos estirados, los hombros sobre las manos. Mantén las piernas estiradas o dobladas. Baja lentamente hasta que los codos estén a 90 grados. Empuja hacia arriba hasta volver a la posición inicial, extendiendo completamente los brazos.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Bodyweight-parralel-bar-dips-side.mp4#t=0.1', 
    '{"precauciones": ["Asegúrate de mantener una buena técnica durante todo el ejercicio.", "Evita el balanceo excesivo del cuerpo para reducir el riesgo de lesiones."]}', 
    6);

--deltoides parte anterior
    
    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Elevación Frontal con Mancuerna', 
    'Toma dos mancuernas mientras estás de pie con las mancuernas a tu lado. Levanta las dos mancuernas con tus codos completamente extendidos hasta que las mancuernas estén a la altura de tus ojos. Baja las pesas de manera controlada a la posición inicial y repite.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Dumbbells-dumbbell-front-raise-front.mp4#t=0.1', 
    '{"precauciones": ["Utiliza un peso adecuado para evitar lesiones.", "Mantén los codos ligeramente flexionados para reducir la tensión en los codos y las articulaciones."]}', 
    7);

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Elevación Frontal de Placa', 
    'Párate con los pies al ancho de los hombros y la placa frente al torso, con las palmas mirando hacia los muslos. Manteniendo los codos ligeramente flexionados, levanta la placa hasta el frente del cuerpo. Levanta la placa hasta que los brazos estén completamente extendidos, manteniendo el control de la placa. Baja la placa a la posición inicial y repite las veces que desees.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-plate-front-raise-side.mp4#t=0.1', 
    '{"precauciones": ["Mantén una postura estable y controlada durante todo el ejercicio.", "Utiliza una placa con un peso adecuado para evitar lesiones."]}', 
    7);

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Press de Hombros Sentado con Mancuernas', 
    'Siéntate en un banco con soporte para la espalda. Levanta las mancuernas hasta la altura de los hombros con las palmas hacia adelante. Levanta las mancuernas hacia arriba y haz una pausa en la posición contraída. Vuelve a bajar las pesas a la posición inicial.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-dumbbell-seated-overhead-press-front.mp4#t=0.1', 
    '{"precauciones": ["Selecciona un peso adecuado para evitar lesiones.", "Mantén una postura erguida y controlada durante todo el ejercicio."]}', 
    7);

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Press de Hombros con Cable', 
    'Usa un accesorio de agarre con el cable ajustado en la parte inferior de la máquina. Mantente de pie asegurándote de mantener la espalda recta. Tu posición inicial deberá tener las palmas de las manos mirando hacia adelante. Utiliza tanto tus codos como tus hombros para levantar el peso directamente por encima de tu cabeza.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-cable-overhead-press-front.mp4#t=0.1', 
    '{"precauciones": ["Mantén una postura estable y controlada durante todo el ejercicio.", "Selecciona un peso adecuado para evitar lesiones."]}', 
    7);

--deltoides parte media

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Elevación Lateral con Mancuernas', 
    'Párate derecho con las mancuernas a cada lado, las palmas frente a tus caderas. Levanta los brazos a ambos lados con una ligera flexión en el codo hasta que estén paralelos al suelo. Haz una pausa en la parte superior del movimiento. Regresa lentamente tus brazos a la posición inicial.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Dumbbells-dumbbell-lateral-raise-front.mp4#t=0.1', 
    '{"precauciones": ["Utiliza un peso adecuado para evitar lesiones.", "Mantén una buena técnica de levantamiento durante todo el ejercicio."]}', 
   8);

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Elevación Lateral de Brazo Individual con Polea Baja', 
    'Utiliza un accesorio de asa con el cable ajustado hasta abajo en la máquina. Deberías realizar una abducción vertical en el hombro levantando tu brazo directamente hacia un lado. Levanta hasta que tu brazo esté paralelo al suelo y luego regresa a la posición inicial.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Cables-cable-lateral-raise-side.mp4#t=0.1', 
    '{"precauciones": ["Mantén una postura estable y controlada durante todo el ejercicio.", "Utiliza un peso adecuado para evitar lesiones."]}', 
    8);

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Elevación Lateral Sentado', 
    'Siéntate derecho en el banco o caja. Sostén las mancuernas a los lados. Levanta los brazos hasta la altura de los hombros.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Dumbbells-seated-lateral-raise-front.mp4#t=0.1', 
    '{"precauciones": ["Mantén una postura erguida y controlada durante todo el ejercicio.", "Utiliza un peso adecuado para evitar lesiones."]}', 
    8);


--deltoides parte posterior
    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Vuelo Posterior del Deltoides con Mancuernas', 
    'Con unas mancuernas en cada mano, dobla las rodillas con los pies ligeramente hacia afuera. Arquea tu espalda por encima de tus rodillas, y comienza con las pesas tocándose frente a tu pecho. Con los codos doblados, levanta tus brazos hasta el nivel de los hombros, haciendo una pausa al final del movimiento. Baja lentamente tus brazos hasta volver a la posición inicial.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Dumbbells-dumbbell-rear-delt-fly-side.mp4#t=0.1', 
    '{"precauciones": ["Utiliza un peso adecuado para evitar lesiones.", "Mantén una buena postura y control durante todo el ejercicio."]}', 
    9);
    
    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Cable Elevado con Rotación Interna y Vuelo Inverso', 
    'Usa un accesorio de asa o ningún accesorio en absoluto. El cable debe estar ajustado en la parte superior. Camina unos pasos alejándote con el cable que viene del lado opuesto de los brazos con los que estás trabajando. Rota internamente los hombros. A partir de ahí, tus hombros deben abducir y aducir horizontalmente, mientras tus codos permanecen en una posición fija.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Cables-cable-high-internally-rotated-reverse-fly-front.mp4#t=0.1', 
    '{"precauciones": ["Mantén una postura adecuada para evitar lesiones.", "Utiliza un peso apropiado y controla el movimiento para evitar lesiones."]}', 
    9);

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Elevación Posterior de Deltoides Sentado con Mancuernas', 
    'Con una mancuerna en cada mano, dobla tus rodillas con los pies ligeramente arqueados hacia afuera. Arquea tu espalda por encima de tus rodillas, y comienza con las pesas tocándose frente a tu pecho. Con los codos doblados, levanta tus brazos hasta el nivel de los hombros, haciendo una pausa al final del movimiento. Baje lentamente los brazos de nuevo a la posición inicial.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Dumbbells-dumbbell-seated-rear-delt-fly-side.mp4#t=0.1', 
    '{"precauciones": ["Utiliza un peso adecuado para evitar lesiones.", "Mantén una buena técnica y control durante todo el ejercicio."]}', 
    9);
    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Jalón de Cuerda con Polea de Rodillas hacia el Rostro', 
    'Comienza con los cables en la parte superior. Usa un accesorio de cuerda. Cae en una posición de medio arrodillamiento. Tira de la pieza de metal en el medio de la cuerda hasta el puente de tu nariz.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Cables-cable-rope-kneeling-face-pull-front.mp4#t=0.1', 
    '{"precauciones": ["Mantén una postura adecuada para evitar lesiones.", "Controla el movimiento y evita usar un peso excesivo que pueda comprometer tu forma."]}', 
    9);



-- biceps braquial cabeza larga
    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Curl de Martillo en Banco Inclinado con Mancuerna', 
    'Sostén las mancuernas con un agarre neutro (pulgares apuntando al techo). Sentado en un banco inclinado. Levanta lentamente la mancuerna hasta la altura del pecho. Regresa a la posición inicial y repite.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-dumbbell-incline-hammer-curl-side.mp4#t=0.1', 
    '{"precauciones": ["Mantén una postura adecuada para evitar lesiones.", "Controla el movimiento y evita usar un peso excesivo que pueda comprometer tu forma."]}', 
    10);


    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Curl Bayesian de Cable', 
    'Utiliza un accesorio de agarre. El cable debe estar ajustado hasta el fondo de la máquina. Dale la espalda a la máquina de poleas. Separa tus pies para tener una mejor base de apoyo. Enfrente tu palma hacia adelante. Flexiona en el codo y extiende.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Cables-cable-bilateral-bayesian-curl-side.mp4#t=0.1', 
    '{"precauciones": ["Ajusta el peso adecuado para tu nivel de fuerza.", "Mantén una postura estable durante todo el ejercicio."]}', 
    10);

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Curl de Martillo con Cuerda de Cable', 
    'Utiliza un accesorio de cuerda. El cable debe estar ajustado hasta la parte más baja de la máquina. Dale la espalda a la máquina de poleas. Alterna tu posición para que tengas una base de apoyo más sólida. Usa un agarre neutro (pulgar mirando hacia arriba, meñique hacia abajo). Flexiona en el codo y extiende.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Cables-cable-rope-hammer-curl-front.mp4#t=0.1', 
    '{"precauciones": ["Ajusta el peso adecuado para tu nivel de fuerza.", "Mantén una postura estable durante todo el ejercicio."]}', 
    10);

-- Biceps braquial cabeza corta
    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Curl de Barra', 
    'Manteniendo los brazos superiores inmóviles, levanta las pesas hacia adelante mientras contraes los bíceps al exhalar. Continúa el movimiento hasta que tus bíceps estén completamente contraídos y la barra esté al nivel de los hombros. Mantén la posición contraída durante un segundo y aprieta fuertemente los bíceps. Baja lentamente el peso hasta la posición inicial.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Barbell-barbell-curl-side.mp4#t=0.1', 
    '{"precauciones": ["Utiliza un peso apropiado para tu nivel de fuerza.", "Mantén una forma adecuada y evita balancear el cuerpo durante el ejercicio."]}', 
    11);

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Curl con Mancuerna', 
    'Manténgase erguido con una mancuerna en cada mano a la longitud del brazo. Levanta una pesa y gira tu antebrazo hasta que esté vertical y la palma de tu mano esté mirando hacia el hombro. Baja a la posición original y repite con el brazo contrario.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Dumbbells-dumbbell-curl-front.mp4#t=0.1', 
    '{"precauciones": ["Utiliza un peso apropiado para tu nivel de fuerza.", "Mantén una postura adecuada y evita balancear el cuerpo durante el ejercicio."]}', 
    11);

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Curl de predicador con barra Z', 
    'Ubícate en el banco para predicador; agarra la barra Z con un agarre por debajo, codos extendidos. Lentamente dobla la barra hacia los hombros; mantén los brazos superiores inmóviles, enfócate en los bíceps. Baje la barra a la posición inicial; mantenga el control, repita para las repeticiones.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Barbell-ez-bar-preacher-curl-front.mp4#t=0.1', 
    '{"precauciones": ["Utiliza un peso adecuado para tu nivel de fuerza.", "Mantén una postura adecuada y controla el movimiento durante todo el ejercicio."]}', 
    11);


--Triceps braquial - cabeza larga 
    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Extensión de Tríceps con Mancuerna', 
    'Comienza de pie con los pies separados al ancho de tus hombros y sujetando una mancuerna en una mano. Inclínate por la cintura y coloca tu mano opuesta en tu rodilla para apoyarte. Desde esta posición inicial, extiende tu brazo hacia atrás para que la mancuerna quede detrás de tu cuerpo. Asegúrate de mantener tu codo cerca de tu cuerpo y tu core activado durante todo el movimiento.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-dumbbell-tricep-kickback-side.mp4#t=0.1', 
    '{"precauciones": ["Utiliza un peso adecuado para tu nivel de fuerza.", "Mantén una postura estable y controla el movimiento para evitar lesiones."]}', 
    12);
    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Extensión de Tríceps por Encima de la Cabeza con Cuerda de Cable', 
    'Puedes usar cualquier accesorio. El cable debe estar totalmente en la parte inferior de la máquina. Da la espalda a la máquina. Apunta tus codos directamente hacia el techo. Desde allí, extiende tus codos hasta que tus puños estén apuntando directamente hacia el techo.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Cables-cable-overhead-tricep-extension-side.mp4#t=0.1', 
    '{"precauciones": ["Selecciona un peso adecuado para tus capacidades.", "Mantén una postura estable y controla el movimiento para evitar lesiones."]}', 
    12);

--triceps braquial cabeza lateral

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Empuje hacia abajo con cuerda de cable', 
    'El cable debe ajustarse hasta la parte superior de la máquina. Asegúrate de mantener tu brazo superior pegado a tu costado. Extiende tus codos hasta que sientas que tus tríceps se contraen.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Cables-cable-push-down-front.mp4#t=0.1', 
    '{"precauciones": ["Selecciona un peso adecuado para tu nivel de fuerza.", "Mantén una postura estable durante todo el ejercicio."]}', 
    13);

INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Fondos en Banco', 
    'Agarra el borde del banco con tus manos, mantén tus pies juntos y las piernas rectas. Baja tu cuerpo recto hacia abajo. Presiona lentamente hacia arriba hasta volver al punto de inicio. CONSEJO: Hazlo más difícil levantando tus pies del suelo y añadiendo peso.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-bodyweight-tricep-dips-side.mp4#t=0.1', 
    '{"precauciones": ["Mantén una postura adecuada durante todo el ejercicio.", "Controla el movimiento para evitar lesiones."]}', 
    13);

--Triceps braquial cabeza medial

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Flexiones Diamante', 
    'Coloca tus dedos índices y pulgares de manera que se toquen, formando una forma de diamante. Utiliza la posición estándar de flexión de brazos. Baja el pecho hacia tus manos, mantén los codos cerca de tu cuerpo. Detente justo antes de que tu pecho toque el suelo, luego empuja hacia arriba para volver a la posición inicial.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Bodyweight-diamond-push-ups-front.mp4#t=0.1', 
    '{"precauciones": ["Mantén una alineación adecuada del cuerpo durante todo el movimiento.", "Controla la respiración y evita arquear la espalda."]}', 
    14);


--flexores del antebrazo
   
    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Extensión de Muñeca con Mancuerna', 
    'Agarra dos mancuernas con un agarre por encima de la mano y coloca tus antebrazos sobre tus rodillas. Permite que tus muñecas se flexionen completamente, luego extiende tus muñecas.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-dumbbell-wrist-extension-side.mp4#t=0.1', 
    '{"precauciones": ["Selecciona un peso adecuado para tu nivel de fuerza.", "Realiza el movimiento de forma controlada y sin balancear los brazos."]}', 
    15);

--Extensores del antebrazo
    
    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Curl de Muñeca con Barra', 
    'Agarra una barra recta con un agarre supinado (de revés). Arrodíllate junto a un banco plano y coloca tus antebrazos sobre el banco con las muñecas justo al borde del mismo. Deja que la barra tire hacia abajo de tus muñecas hasta que estén extendidas. Dobla la barra hasta que tus muñecas estén completamente flexionadas. Baja de forma controlada y repite.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Barbell-barbell-wrist-curl-side.mp4#t=0.1', 
    '{"precauciones": ["Selecciona un peso adecuado para tu nivel de fuerza.", "Mantén una postura estable y controla el movimiento para evitar lesiones."]}', 
    16);

--braquiorradial
    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Curl Inverso con Mancuernas', 
    'Agarra las mancuernas con un agarre pronado (de arriba hacia abajo). Puedes hacer este ejercicio sin utilizar el pulgar si te resulta más cómodo para tus muñecas. Dobla los codos hasta que tus bíceps toquen tus antebrazos. Intenta no dejar que tus codos se abran hacia afuera.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Dumbbells-dumbbell-reverse-curl-front.mp4#t=0.1', 
    '{"precauciones": ["Selecciona un peso adecuado para tu nivel de fuerza.", "Mantén una postura estable y controla el movimiento para evitar lesiones."]}', 
    17);

--Recto abdominal seccion alta
    
    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Crunch de Rodillas con Barra en Polea', 
    'Usa un accesorio de doble asa y ajusta el cable hasta la parte superior. Da unos pasos adelante y luego cae en una posición de rodillas. Empuja tus caderas hacia atrás y tensa tus abdominales, luego empuja las caderas hacia adelante hasta volver a la posición inicial.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Cables-cable-kneeling-crunch-side.mp4#t=0.1', 
    '{"precauciones": ["Ajusta el peso de la máquina según tu nivel de fuerza.", "Mantén una postura adecuada y controla el movimiento para evitar lesiones."]}', 
    18);

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Abdominales', 
    'Recuéstate sobre tu espalda con las rodillas dobladas y los pies apoyados en el suelo, aproximadamente a un pie de distancia de tu zona lumbar. Coloca las yemas de tus dedos en tus sienes con las palmas hacia afuera. Contrae el abdomen hacia la base de tu columna para activar los músculos, luego levanta la cabeza y los hombros del suelo. Regresa a la posición inicial y repite.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-bodyweight-crunch-side.mp4#t=0.1', 
    '{"precauciones": ["Realiza el movimiento de manera controlada para evitar lesiones.", "Mantén una respiración constante durante todo el ejercicio."]}', 
    18);

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Plancha de Manos', 
    'Comienza en una posición de rodillas con las manos apoyadas en el suelo. Levanta las rodillas del suelo. Mantén esta posición con la espalda recta.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-bodyweight-hand-plank-side_GnZ2NZh.mp4#t=0.1', 
    '{"precauciones": ["Mantén la posición con la espalda recta para evitar lesiones.", "No dejes que tus caderas caigan hacia abajo."]}', 
    18);

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Sostén Hueco', 
    'Túmbate boca abajo en el suelo con los brazos extendidos sobre la cabeza. Levanta tu espalda superior y tus piernas del suelo. Tu cuerpo debería tener forma de plátano. Mantén esta posición.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-bodyweight-hollow-hold-side.mp4#t=0.1', 
    '{"precauciones": ["Mantén la posición con la espalda recta para evitar lesiones.", "No dejes que tus caderas caigan hacia abajo."]}', 
    18);
    
    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Crunch de Rodillas con Cuerda de Cable', 
    'Utiliza un accesorio de cuerda y ajusta el cable completamente hasta arriba. Da unos pasos hacia adelante y luego cae en una posición de rodillas. Empuja tus caderas hacia atrás y tensa tus abdominales, luego empuja las caderas hacia adelante hasta volver a la posición inicial.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Cables-cable-rope-kneeling-crunch-side.mp4#t=0.1', 
    '{"precauciones": ["Mantén una alineación adecuada del cuerpo para evitar lesiones.", "Controla el movimiento y evita balancear las caderas para mantener la efectividad del ejercicio."]}', 
    18);



--recto abdominal seccion baja
    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Elevaciones de Rodilla Colgando', 
    'Agarra la barra y cuélgate, mantén tu cuerpo quieto y tus piernas rectas. Levanta lentamente tus rodillas hacia tu pecho. Una vez que hayas levantado las rodillas lo más alto posible, baja las piernas y repite. La duración de estos movimientos debe ser lenta para que no utilices el impulso, permitiéndote obtener el máximo beneficio del ejercicio.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-bodyweight-hanging-knee-raises-side.mp4#t=0.1', 
    '{"precauciones": ["Mantén una postura estable y controla el movimiento para evitar lesiones.", "Evita balancear el cuerpo para obtener el máximo beneficio del ejercicio."]}', 
    19);

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Elevaciones de Pierna Acostado', 
    'Acuéstate boca arriba con las palmas de tus brazos hacia abajo a ambos lados. Mantén tus piernas juntas y lo más rectas posible. Levanta lentamente tus piernas hasta un ángulo de 90°, haz una pausa en esta posición, o tan alto como puedas llegar con tus piernas, y luego bájalas lentamente de nuevo. La duración de estos movimientos debería ser lenta para que no utilices el impulso, permitiéndote obtener el máximo provecho del ejercicio.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-bodyweight-leg-raises-side.mp4#t=0.1', 
    '{"precauciones": ["Mantén una postura estable y controla el movimiento para evitar lesiones.", "Realiza el movimiento de forma controlada y evita balancear el cuerpo para obtener el máximo beneficio del ejercicio."]}', 
    19);

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Escalador de Montañas', 
    'Para realizar un escalador de montaña con peso corporal, comienza en posición de plancha con las manos colocadas directamente debajo de tus hombros. Acerca tu rodilla derecha hacia tu pecho, manteniendo el pie cerca de tu mano. Cambia rápidamente de pierna, llevando tu rodilla izquierda hacia tu pecho. Continúa con este movimiento, alternando las piernas, a un ritmo rápido durante un tiempo determinado o una cantidad establecida de repeticiones.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-bodyweight-mountain-climber-side.mp4#t=0.1', 
    '{"precauciones": ["Mantén una postura estable y controla el movimiento para evitar lesiones.", "Realiza el ejercicio a un ritmo adecuado para ti y evita movimientos bruscos que puedan causar lesiones."]}', 
    19);
    
    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Despliegues con Máquina', 
    'Sostén el Rodillo Abdominal con ambas manos y arrodíllate en el suelo con los pies levantados y cruzados. Desplaza lentamente el rodillo abdominal hacia adelante, estirando tu cuerpo hasta conseguir una posición recta. Después de una pausa en la posición estirada, comienza a retornar a la posición inicial. Este debería ser un movimiento lento y controlado.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-machine-roll-outs-side.mp4#t=0.1', 
    '{"precauciones": ["Asegúrate de mantener una postura adecuada para evitar lesiones en la espalda baja.", "Controla el movimiento y evita realizarlo con impulso para maximizar la efectividad del ejercicio."]}', 
    19);

--oblicuos externos
    
    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Plancha Lateral con la Mano', 
    'Presiona tu mano contra el suelo y levanta la cadera del suelo. Abre el pecho y mantén esta posición durante el tiempo asignado.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-bodyweight-hand-side-plank-front.mp4#t=0.1', 
    '{"precauciones": ["Mantén una alineación adecuada del cuerpo para evitar lesiones en la espalda.", "Controla la respiración durante el ejercicio para mantener la estabilidad."]}', 
    20);


    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Giro Ruso con Mancuerna', 
    'Siéntate en el suelo y flexiona tus rodillas y caderas a un ángulo de 90 grados. Tus pies deberían estar flotando sobre el suelo. (Si eso es demasiado difícil, comienza con los talones en el piso). Gira tu columna vertebral superior para activar tus oblicuos.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Dumbbells-dumbbell-russian-twist-side.mp4#t=0.1', 
    '{"precauciones": ["Mantén una postura adecuada para evitar lesiones en la espalda baja.", "Realiza el movimiento de forma controlada y evita el impulso excesivo."]}', 
    20);

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Cortador de Madera con Cable', 
    'Ajusta el cable a la altura aproximada de los pezones. Usa un accesorio de manija. Ponte de lado, luego gira tu torso con los brazos extendidos contra la resistencia. Después de completar el número asignado de repeticiones, mira en la dirección opuesta y repite.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-cable-woodchopper-front.mp4#t=0.1', 
    '{"precauciones": ["Ajusta la altura del cable y selecciona el peso adecuado para tu nivel de fuerza.", "Mantén una postura estable y controla el movimiento para evitar lesiones."]}', 
    20);

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Giro Ruso con Mancuernas y Palanca Larga', 
    'Comienza sentándote en el suelo con las rodillas dobladas y los pies apoyados completamente en el suelo. Sostén una mancuerna con ambas manos con los brazos extendidos rectos frente a ti. Gira tu torso hacia la derecha, llevando la mancuerna hacia el suelo, luego regresa al centro. Repite en el lado izquierdo, girando hacia la izquierda y llevando la mancuerna hacia el suelo. Continúa con este movimiento de torsión, alternando los lados, hasta completar el número de repeticiones deseado. Mantén tu core activado y evita balancear tus brazos para generar impulso.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-dumbbell-long-lever-russian-twist-front.mp4#t=0.1', 
    '{"precauciones": ["Mantén una postura adecuada y controla el movimiento para evitar lesiones.", "No fuerces el movimiento y trabaja dentro de tu rango de movimiento cómodo."]}', 
    20);

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Plancha Lateral con Mancuerna Arriba Abajo', 
    'Comienza acostándote de lado con los pies apilados uno encima del otro y una mancuerna sobre la cadera. Coloca tu codo inferior en el suelo debajo de tu hombro y contrae tu abdomen para levantar las caderas del suelo. Tus caderas harán todo el movimiento. Piensa, caderas arriba, caderas abajo.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-dumbbell-side-plank-up-down-side.mp4#t=0.1', 
    '{"precauciones": ["Mantén una alineación adecuada del cuerpo para evitar lesiones.", "Controla el movimiento y evita balancear las caderas para mantener la efectividad del ejercicio."]}', 
    20);


-- oblicuos internos

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Inclinación Lateral con Mancuerna', 
    'Párate con los pies separados a la anchura de las caderas y coloca tu mano derecha en la cadera derecha. Sostén una mancuerna con la mano izquierda. Inclínate desde las caderas hacia un lado. Asegúrate de no empezar a inclinarte hacia adelante para intentar forzar un mayor rango de movimiento.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-dumbbell-side-bend-front.mp4#t=0.1', 
    '{"precauciones": ["Mantén una postura adecuada y controla el movimiento para evitar lesiones.", "Evita la inclinación hacia adelante excesiva y trabaja dentro de tu rango de movimiento cómodo."]}', 
    21);

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Inclinación Lateral de Agarre con Placas', 
    'Párate derecho con la placa sostenida a tu lado. Mantén tus caderas y hombros mirando hacia adelante, inclínate lentamente hacia un lado. Regresa a la posición vertical. Cambia de mano y repite.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-plate-pinch-grip-side-bend-side.mp4#t=0.1', 
    '{"precauciones": ["Mantén una postura adecuada y controla el movimiento para evitar lesiones.", "No fuerces el movimiento y trabaja dentro de tu rango de movimiento cómodo."]}', 
    21);

--transverso abdominal

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Vacío abdominal (hipopresivos)', 
    'Este ejercicio se puede realizar acostado, de rodillas o de pie. Para realizarlo, exhala todo el aire de tus pulmones y luego aprieta tu abdomen como si estuvieras tratando de succionarlo hacia adentro. Mantén la contracción durante unos segundos y luego relájate. Repite este proceso 10-15 veces.', 
    'https://www.youtube.com/watch?v=2_SA8rRxS04',
    '{"precauciones": ["Asegúrate de exhalar completamente antes de contraer el abdomen.", "Evita contener la respiración durante la contracción.", "Adapta la intensidad del ejercicio según tu capacidad."]}', 
    22);

--cuadriceps recto femoral
    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Extensión de Pierna de Pie con Cable', 
    'Párate derecho enfrentado en dirección opuesta a la máquina de cable crossover con el cable ajustado a la altura de tus caderas. Utiliza un accesorio para tobillo/muñeca. Estira la rodilla contra el cable.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Cables-cable-standing-leg-extension-front.mp4#t=0.1', 
    '{"precauciones": ["Asegúrate de mantener una postura estable y controlada durante todo el ejercicio.", "Controla la cantidad de peso utilizada para evitar lesiones y asegurar un movimiento adecuado."]}', 
    23);

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Sentadilla Sissy con Máquina de Copa', 
    'Coloca la almohadilla de la sentadilla femenina justo detrás de las rodillas y la almohadilla delantera completamente contra tus tobillos. Sostén una mancuerna en posición de cáliz. Siéntate derecho en una posición de sentadilla. Luego empuja tus pantorrillas contra la parte trasera de la almohadilla y extiende tus rodillas hasta volver a la posición original.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Machine-goblet-sissy-squat-side.mp4#t=0.1', 
    '{"precauciones": ["Ajusta el peso de la máquina de acuerdo a tu capacidad y nivel de entrenamiento.", "Mantén una postura adecuada durante todo el ejercicio para prevenir lesiones en las rodillas o la espalda."]}', 
    23);

--cuadriceps  vasto externo

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Sentadilla con Barra', 
    'Párate con los pies al ancho de tus hombros. Mantén la curvatura natural de tu espalda, apretando tus omóplatos y levantando tu pecho. Sujeta la barra a lo largo de tus hombros y apóyala en la parte superior de tu espalda. Desencaja la barra estirando las piernas y da un paso hacia atrás. Dobla tus rodillas mientras bajas el peso sin alterar la forma de tu espalda hasta que tus caderas estén por debajo de tus rodillas. Levanta la barra hasta la posición inicial, levanta con tus piernas y exhala en la parte superior.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Barbell-barbell-squat-side.mp4#t=0.1', 
    '{"precauciones": ["Calienta adecuadamente antes de realizar este ejercicio para prevenir lesiones.", "Mantén una técnica adecuada durante todo el movimiento para evitar lesiones en la espalda o las rodillas."]}', 
    24);
    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Sentadilla Búlgara con Mancuernas', 
    'Busca una caja o un banco que tenga aproximadamente la altura de la rodilla o unos centímetros más bajo. (Cuanto más bajo sea el banco, menor será el requisito de movilidad). Puedes colocar ya sea tus dedos de los pies o la parte superior de tu pie en la caja. Apunta tu pie delantero hacia adelante o ligeramente hacia afuera y dobla simultáneamente las rodillas y las caderas. Apunta a que tu pierna delantera alcance una profundidad paralela (el tendón de la corva paralelo al suelo) o inferior. Cuanto más adelante esté tu pie delantero, mayor será el Rango de Movimiento en tus caderas. Cuanto más atrás esté tu pie delantero, mayor será el ROM en tus rodillas.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Dumbbells-dumbbell-bulgarian-split-squat-side.mp4#t=0.1', 
    '{"precauciones": ["Realiza el ejercicio con cuidado para evitar lesiones en las rodillas.", "Utiliza una carga adecuada y controla el movimiento en todo momento."]}', 
    24);

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Zancadas hacia adelante', 
    'Avanza con una pierna. Baja tu cuerpo hasta que tu rodilla trasera casi toque el suelo. Asegúrate de permanecer erguido y que tu rodilla delantera se mantenga por encima del pie delantero. Empuja el suelo con tu pie delantero hasta que vuelvas a la posición inicial. Cambia de pierna.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Bodyweight-forward-lunges-side.mp4#t=0.1', 
    '{"precauciones": ["Mantén una buena postura durante todo el ejercicio para evitar lesiones en la espalda.", "Controla el movimiento descendente para no golpear la rodilla contra el suelo con fuerza.", "Asegúrate de que tu rodilla delantera no se extienda más allá de tu pie para evitar lesiones en la articulación."]}', 
    24);

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Prensa de Piernas en Máquina', 
    'Coloca tus piernas en la plataforma con tus pies al ancho de tus hombros. Suelta el peso y extiende completamente tus piernas, sin bloquear tus rodillas. Baja el peso hasta que tus piernas estén en un ángulo de 90° (pero NO permitas que tus glúteos y la parte inferior de la espalda se levanten del cojín. Esto pondrá tu espalda baja en una posición redondeada, lo cual es muy peligroso). Levanta el peso nuevamente a la posición inicial.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-machine-leg-press-side.mp4#t=0.1', 
    '{"precauciones": ["Evita bloquear las rodillas al extender las piernas para evitar lesiones en las articulaciones.", "No permitas que tus glúteos y la parte inferior de la espalda se levanten del cojín para mantener una buena alineación de la columna vertebral.", "Controla el movimiento en todo momento y evita cargar más peso del que puedas manejar adecuadamente."]}', 
    24);

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES 
    ('Hack Squat en Máquina',
    'Ubícate en la máquina de sentadillas hack con tu espalda contra el cojín y los hombros debajo de las almohadillas para los hombros. Coloca los pies a la anchura de los hombros sobre la plataforma. Mantén la espalda recta y baja lentamente hasta una posición de sentadilla. Presiona a través de tus talones para volver a la posición inicial, manteniendo tu core activado. Repite para las repeticiones y series deseadas.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Machine-machine-hack-squat-side.mp4#t=0.1',
    '{"precauciones": ["Asegúrate de ajustar correctamente la máquina para evitar lesiones.", "Mantén la espalda recta en todo momento para evitar lesiones en la columna vertebral.", "Controla el movimiento en todo momento y no permitas que tus rodillas se extiendan más allá de los dedos de los pies para evitar lesiones en las articulaciones."]}',
    24);
   

--cuadriceps vasto interno
    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES
    ('Extensión de Piernas en Máquina con pies girados hacia afuera', 
    'Siéntate en la máquina con la espalda contra el cojín y ajusta la máquina que estás utilizando de manera que tus rodillas estén en un ángulo de 90 grados en la posición inicial. Levante el peso extendiendo sus rodillas hacia afuera, luego baje su pierna a la posición inicial. Ambos movimientos deben realizarse de manera lenta y controlada.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-machine-leg-extension-side.mp4#t=0.1', 
    '{"precauciones": ["Ajusta el peso de la máquina de acuerdo a tu capacidad y nivel de entrenamiento.", "Mantén una postura adecuada durante todo el ejercicio para prevenir lesiones en la espalda o las rodillas."]}', 
    25);

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES 
    ('Sentadilla en Máquina Smith con pies abiertos',
    'Párate con los pies a la anchura de tus hombros. Mantén la curvatura natural de tu espalda y coloca la barra en tu espalda. Aprieta tus omoplatos y levanta el pecho. Agarra la barra a lo ancho de tus hombros y apóyala en la parte superior de tu espalda. Descoloca la máquina Smith estirando tus piernas. Dobla tus rodillas mientras bajas el peso sin alterar la forma de tu espalda hasta que tus caderas estén por debajo de tus rodillas. Levanta la barra hasta la posición de inicio, levanta con tus piernas y exhala en la parte superior.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Smithmachine-squat-side.mp4#t=0.1',
    '{"precauciones": ["Asegúrate de ajustar correctamente la máquina para evitar lesiones.", "Mantén la espalda recta en todo momento para evitar lesiones en la columna vertebral.", "Controla el movimiento en todo momento y no permitas que tus rodillas se extiendan más allá de los dedos de los pies para evitar lesiones en las articulaciones."]}',
    25);


--aductores
    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES 
    ('Aducción de Cadera en Máquina',
    'Siéntate en la máquina con las piernas separadas, las almohadillas contra tus muslos externos. Ajusta la posición del asiento y de la almohadilla de manera cómoda. Aprieta lentamente tus piernas, enfocándote en usar los músculos de tu muslo interno. Haz una pausa cuando las almohadillas estén cerca una de la otra. Regresa lentamente a la posición inicial, manteniendo el control. Evita dejar caer las pesas bruscamente. Repite según las repeticiones y series deseadas.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Machine-machine-hip-adduction-front.mp4#t=0.1',
    '{"precauciones": ["Ajusta la máquina correctamente para evitar lesiones.", "Mantén una postura erguida y controlada durante todo el ejercicio.", "No permitas que las pesas caigan bruscamente para evitar lesiones."]}',
    26);
    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES 
    ('Máquina de Aducción de Cadera y Glúteo', 
    'Párate en la plataforma y coloca la almohadilla justo sobre la cadera de la pierna que estás trabajando. Coloca la pierna de trabajo sobre la almohadilla. Presiona tu pierna hacia adentro. Intenta obtener el mayor rango de movimiento posible.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Machine-machine-hip-and-glute-adduction-front.mp4#t=0.1', 
    '{"nivel": "novice"}', 
    26);

--Biceps femoral
    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES 
    ('Prensa de Piernas en Máquina', 
    'Coloca tus piernas en la plataforma con tus pies al ancho de tus hombros. Suelta el peso y extiende completamente tus piernas, sin bloquear tus rodillas. Baja el peso hasta que tus piernas estén en un ángulo de 90° (pero NO permitas que tus glúteos y la parte inferior de la espalda se levanten del cojín. Esto pondrá tu espalda baja en una posición redondeada, lo cual es muy peligroso). Levanta el peso nuevamente a la posición inicial.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-machine-hamstring-curl-front.mp4#t=0.1', 
    '{"precauciones": ["Evita bloquear las rodillas al extender las piernas para evitar lesiones en las articulaciones.", "No permitas que tus glúteos y la parte inferior de la espalda se levanten del cojín para mantener una buena alineación de la columna vertebral.", "Controla el movimiento en todo momento y evita cargar más peso del que puedas manejar adecuadamente."]}', 
    27);
    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos,  id_musculo) VALUES 
    ('Curl de Isquiotibiales con Cable', 
    'Utiliza un accesorio para el tobillo con el cable ajustado completamente hasta la parte inferior de la máquina. Manténgase erguido o intente inclinarse ligeramente hacia adelante. Dobla la rodilla y tira de tu tobillo hacia atrás recto.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-cable-hamstring-curl-front.mp4#t=0.1', 
    '{"precauciones": ["Controla el movimiento en todo momento para evitar lesiones.", "Ajusta adecuadamente el peso para evitar excesos que puedan causar lesiones."]}', 
    27);

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos,  id_musculo) VALUES (
    'Curl de Piernas Sentado', 
    'Siéntate en la máquina. Ajusta el respaldo de manera que la almohadilla para las piernas quede justo por encima de tus rodillas. Ajusta la almohadilla de la pierna que va en tu pantorrilla hasta que esté sobre tu tendón de Aquiles. Usa las dos asas para empujarte hacia atrás en la silla. Enrolla tus piernas lo más lejos posible y luego extiende tus rodillas. (No hiperextiendas)', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Machine-seated-leg-curl-side.mp4#t=0.1', 
    '{"precauciones": ["Evita hiperextender las rodillas al realizar el ejercicio para prevenir lesiones.", "Asegúrate de ajustar correctamente la máquina para evitar tensiones innecesarias en las articulaciones."]}', 
    27);

--semitendinoso
    
    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES (
    'Levantamiento Rumano con Mancuernas', 
    'Párate con los pies a la anchura de los hombros. Empuja tu trasero hacia atrás mientras dejas tus rodillas PRINCIPALMENTE extendidas. Deberías sentir un estiramiento en los tendones de la corva. Cuando sientas el estiramiento, empuja tus caderas hacia adelante para completar la repetición. No empujes tus caderas completamente hacia adelante. Esto hiperextenderá tu columna vertebral. Solo ve a una posición de pie normal.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Dumbbells-dumbbell-romanian-deadlift-side.mp4#t=0.1', 
    '{"precauciones": ["Evita hiperextender la columna vertebral al final del movimiento para prevenir lesiones.", "Mantén la espalda recta y el núcleo comprometido durante todo el ejercicio para una técnica adecuada."]}', 
    28);

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES (
    'Levantamientos de Peso Muerto con Piernas Rígidas y Barra', 
    'Párate con una barra a la altura de tus espinillas, con los pies separados al ancho de tus hombros. Inclínate hacia adelante desde las caderas y mantén las rodillas lo más extendidas posible. Agarra la barra y luego extiende tus caderas manteniendo la espalda recta. Desde la posición de pie, baja el peso de manera controlada. Puedes bajar el peso hasta el suelo o antes de tocar el suelo, dependiendo de tu movilidad.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-barbell-stiff-leg-deadlift-side.mp4#t=0.1', 
    '{"precauciones": ["Mantén la espalda recta durante todo el movimiento para evitar lesiones en la columna vertebral.", "No realices el levantamiento con demasiado peso que comprometa tu técnica y aumente el riesgo de lesiones.", "Controla la velocidad del movimiento y evita hacerlo demasiado rápido para mantener el control y la técnica adecuada."]}', 
    28);


--semimembranoso

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos,id_musculo) VALUES (
    'Peso Muerto Elevado con Cable', 
    'Comienza con las asas ajustadas a la parte inferior de la máquina. Toma una caja, párate encima de ella, levanta el peso en una sentadilla hasta llegar a una posición de pie. Empuja tu trasero hacia atrás para iniciar el movimiento y luego empuja tu trasero hacia adelante hasta que vuelvas a la posición de pie.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Cables-cable-elevated-deadlift-side.mp4#t=0.1', 
    '{"precauciones": ["Mantén la espalda recta durante todo el movimiento para evitar lesiones en la columna vertebral.", "Asegúrate de usar una caja resistente y estable para elevarte y bajar el peso de manera segura.", "No utilices un peso excesivo que comprometa tu técnica y aumente el riesgo de lesiones."]}', 
    29);


--glueteo mayor

   INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES (
    'Empuje de Cadera con Barra', 
    'Siéntate en el suelo con un banco detrás de ti. Coloca la barra sobre tus piernas, justo por encima de tus caderas. Recuéstate contra el banco de manera que tus hombros estén apoyados en él, estira los brazos a ambos lados utilizando el banco como soporte. Levanta el peso impulsándote a través de tus pies y extendiendo tus caderas hacia arriba. Soporta el peso con tus hombros y pies. Extiende lentamente hasta donde puedas, y luego regresa lentamente a la posición inicial.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Barbell-barbell-hip-thrust-side.mp4#t=0.1', 
    '{"precauciones": ["Asegúrate de mantener una buena alineación de la columna vertebral durante todo el movimiento.", "No utilices un peso excesivo que comprometa tu técnica y aumente el riesgo de lesiones en la espalda.", "Controla el movimiento en todo momento para evitar lesiones y maximizar la efectividad del ejercicio."]}', 
    30);

INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES (
    'Puente de Glúteos con Barra', 
    'Recuéstate boca arriba en el suelo con las rodillas dobladas y los pies apoyados en el suelo. Coloca una barra de pesas sobre tus caderas y agárrala con ambas manos. Manteniendo los brazos rectos, empuja a través de tus talones para levantar las caderas del suelo y levanta la barra. Mantén la posición de puente por un momento, luego baja lentamente las caderas hasta volver a la posición inicial.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-barbell-glute-bridge-side.mp4#t=0.1', 
    '{"precauciones": ["Asegúrate de mantener una buena alineación de la columna vertebral durante todo el ejercicio.", "Evita arquear la espalda demasiado hacia atrás para prevenir lesiones en la parte baja de la espalda.", "Controla el movimiento en todo momento para maximizar la efectividad del ejercicio y prevenir lesiones."]}', 
    30);


--gluteo medio
   
  INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos, id_musculo) VALUES (
    'Abducción de Cadera de Pie con Cable', 
    'Utiliza un accesorio para el tobillo. El cable debe estar ajustado hasta el fondo. Ponte de lado con el accesorio de tobillo en tu pierna exterior. Camina unos pasos hacia atrás. Abduce en las caderas y levanta la pierna hacia un lado. Regresa a la posición inicial y detente justo antes de que tu pie toque de nuevo el suelo (para mantener la tensión en el músculo).', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Cables-cable-hip-abduction-side.mp4#t=0.1', 
    '{"precauciones": ["Asegúrate de mantener una buena alineación corporal durante todo el ejercicio, evitando inclinaciones excesivas hacia adelante o hacia atrás.", "No realices movimientos bruscos al levantar la pierna para evitar lesiones.", "Controla la respiración y mantén el abdomen contraído para estabilizar el cuerpo durante el movimiento."]}', 
    31);

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos,id_musculo) VALUES (
    'Abducción de Cadera en Máquina', 
    'Ajusta la configuración de la máquina para que se adecue a tu altura. Siéntate con la espalda plana contra la almohadilla, manteniendo las piernas juntas. Presiona lentamente las piernas hacia afuera contra la resistencia. Haz una pausa en el punto máximo. Vuelve lentamente las piernas a la posición inicial. Repite las veces que desees.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Machine-machine-hip-abduction-front.mp4#t=0.1', 
    '{"precauciones": ["Asegúrate de ajustar correctamente la configuración de la máquina para evitar lesiones.", "Mantén la espalda plana contra la almohadilla durante todo el ejercicio para evitar tensiones indebidas en la columna vertebral.", "Controla el movimiento y no uses un peso excesivo que pueda comprometer la técnica."]}',
    31);


--gemelo externo

  INSERT INTO ejercicios (nombre, descripcion, video_url,datos_cientificos,id_musculo) VALUES (
    'Elevaciones de Pantorrilla Sentado en Máquina', 
    'Ponte cómodo en la máquina, luego coloca tus muslos inferiores debajo de la palanca acolchada. Pon tus dedos de los pies y la parte delantera de tus pies sobre los soportes para los pies. Evita que el peso se deslice hacia adelante sujetando las asas y suelta la barra de seguridad. Baja el peso hasta que tus pantorrillas estén extendidas. Empuja tus talones hacia arriba para levantar la palanca acolchada y mantén la posición contraída, luego baja lentamente hasta la posición inicial. Repite.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-machine-seated-calf-raise-side.mp4#t=0.1', 
    '{"precauciones": ["Ajusta correctamente el equipo para tu tamaño y posición para evitar lesiones.", "Mantén la espalda recta y los pies firmes en los soportes para evitar lesiones en los tobillos.", "Controla el movimiento en todo momento y evita usar un peso excesivo que pueda comprometer la técnica."]}',
    32);


--gemelo interno
   
   INSERT INTO ejercicios (nombre, descripcion, video_url,datos_cientificos,id_musculo) VALUES (
    'Elevaciones de Pantorrilla en Máquina de Pie', 
    'Ajusta la máquina de acuerdo a tu altura y coloca tus hombros debajo de la palanca acolchada. Las puntas de tus pies deben estar sosteniendo tu peso en el bloque para pantorrillas, con los talones extendiéndose fuera de él. Extiende tus talones hacia arriba manteniendo tus rodillas inmóviles, y haz una pausa en la posición contraída. Regrese lentamente a la posición inicial. Repite.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-machine-standing-calf-raises-side.mp4#t=0.1', 
    '{"precauciones": ["Ajusta adecuadamente la máquina para tu altura y tamaño para evitar lesiones.", "Mantén las rodillas estables y no dejes que se balanceen durante el ejercicio para evitar lesiones en las articulaciones.", "Controla el movimiento en todo momento y evita usar un peso excesivo que pueda causar lesiones o comprometer la técnica."]}',
    33);

    INSERT INTO ejercicios (nombre, descripcion, video_url, datos_cientificos,id_musculo) VALUES (
    'Elevaciones de Pantorrilla con Barra', 
    'Coloca la barra en tu espalda. Comienza con los pies apoyados completamente en el suelo. Extiende tus talones hacia arriba mientras mantienes tus rodillas inmóviles, y haz una pausa en la posición contraída. Regresa lentamente a la posición inicial. Repite.', 
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Barbell-barbell-calf-raises-side.mp4#t=0.1', 
    '{"precauciones": ["Asegúrate de colocar la barra de manera segura y equilibrada en tu espalda para evitar lesiones.", "Mantén las rodillas estables y no dejes que se balanceen durante el ejercicio para evitar lesiones en las articulaciones.", "Controla el movimiento en todo momento y evita usar un peso excesivo que pueda causar lesiones o comprometer la técnica."]}',
    33);


--**EJERCICIOS EN CASA**

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Dominadas',
    'Las dominadas son un ejercicio fundamental para fortalecer la espalda y los brazos. En este video, se muestra una variante intermedia de dominadas con agarre en pronación. Sigue los pasos cuidadosamente para garantizar una ejecución correcta y segura del ejercicio.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-bodyweight-pullup-front.mp4#t=0.1',
    '{"musculos": ["Dorsal ancho", "Trapecio"], "precauciones": ["Evitar balanceo excesivo", "Mantener una técnica adecuada"], "modo_de_hacerlo": "1. Agarra la barra con un agarre en pronación, con los brazos y los hombros completamente extendidos. 2. Levanta tu cuerpo hasta que tu barbilla esté por encima de la barra. 3. Baja tu cuerpo de nuevo a la posición inicial."}',
    1); -- Espalda completa

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Flexiones de Barbilla',
    'Las flexiones de barbilla son un excelente ejercicio para fortalecer la espalda y los brazos. Este video te muestra una variante intermedia de flexiones de barbilla con un agarre supinado. Sigue los pasos detallados para realizar el ejercicio de manera segura y efectiva.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-bodyweight-chinup-front.mp4#t=0.1',
    '{"musculos": ["Dorsal ancho", "Bíceps"], "precauciones": ["Evitar balanceo excesivo", "Mantener una técnica adecuada"], "modo_de_hacerlo": "1. Sujeta la barra a la anchura de los hombros con un agarre supinado (las palmas mirando hacia ti). 2. Con tu cuerpo colgando y los brazos completamente extendidos, levántate hasta que tu barbilla sobrepase la barra. 3. Regresa lentamente a la posición inicial. Repite."}',
    1); -- Espalda completa

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Remo con Banda',
    'Párate sobre tu banda con ambos pies. Inclínate hacia adelante desde las caderas mientras mantienes la espalda recta. Deja que tus brazos cuelguen libremente, luego tira de tus codos hacia atrás en dirección al techo.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-band-row-side.mp4#t=0.1',
    '{"musculos": ["Dorsal ancho", "Bíceps"], "precauciones": ["Mantener la espalda recta para evitar lesiones", "Controlar el movimiento para evitar tirar excesivamente de los codos"], "modo_de_hacerlo": "1. Párate sobre tu banda con ambos pies. 2. Inclínate hacia adelante desde las caderas mientras mantienes la espalda recta. 3. Deja que tus brazos cuelguen libremente, luego tira de tus codos hacia atrás en dirección al techo. Este ejercicio se centra en el trabajo del dorsal ancho y los bíceps, con precauciones importantes para evitar lesiones y garantizar una técnica adecuada."}',
    1); -- Espalda completa

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Estiramiento de Banda',
    'Coloca la banda justo por encima de nuestro nivel. Retrocede unos pasos hasta que la banda esté tensa. Retrocede ligeramente las caderas. Extiende y flexiona en la articulación del hombro.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-band-pull-over-side.mp4#t=0.1',
    '{"musculos": ["Dorsal ancho"], "precauciones": ["Evitar forzar en exceso la articulación del hombro"], "modo_de_hacerlo": "1. Coloca la banda justo por encima de nuestro nivel. Retrocede unos pasos hasta que la banda esté tensa. 2. Retrocede ligeramente las caderas. Extiende y flexiona en la articulación del hombro. Este ejercicio ayuda a mejorar la flexibilidad y movilidad de los hombros."}',
    1); -- Espalda completa

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Estiramiento de un Solo Brazo con Banda en Posición de Rodillas',
    'Para realizar el estiramiento de un solo brazo con banda en posición de rodillas en nivel principiante, sigue estos pasos: 1. Coloca la banda a la altura de los ojos y ponte en una posición de rodillas. 2. Asegúrate de que la rodilla que está en el suelo esté del mismo lado que el brazo que está trabajando. Mantén el pecho hacia afuera. 3. Luego, estira tu codo hacia atrás. Flexiona tus dorsales y luego vuelve a la posición inicial.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-band-kneeling-single-arm-pulldown-front.mp4#t=0.1',
    '{"musculos": ["Dorsal Ancho"], "precauciones": ["Realizar el estiramiento de forma suave y controlada para evitar lesiones"], "modo_de_hacerlo": "1. Coloca la banda a la altura de los ojos y ponte en una posición de rodillas. 2. Asegúrate de que la rodilla que está en el suelo esté del mismo lado que el brazo que está trabajando. Mantén el pecho hacia afuera. 3. Luego, estira tu codo hacia atrás. Flexiona tus dorsales y luego vuelve a la posición inicial."}',
    1); -- Espalda completa


INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, imagen, datos_cientificos, zona_ejercicio)
VALUES
   INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Lagartija',
    'La lagartija es un ejercicio fundamental para fortalecer el torso, brazos y hombros. Sigue estos pasos para realizarla correctamente en nivel principiante: 1. Coloca tus manos firmemente en el suelo, directamente debajo de los hombros. 2. Aplana tu espalda de manera que todo tu cuerpo esté recto y baja lentamente tu cuerpo. 3. Recoja las escápulas hacia atrás y hacia abajo, manteniendo los codos pegados a su cuerpo. 4. Exhala mientras vuelves a la posición inicial.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Bodyweight-push-up-front.mp4#t=0.1',
    '{"musculos": ["Pectorales", "Deltoides", "Tríceps"], "precauciones": ["Evitar arquear excesivamente la espalda baja", "Controlar el movimiento para evitar lesiones en los hombros"], "modo_de_hacerlo": "1. Coloca tus manos firmemente en el suelo, directamente debajo de los hombros. 2. Aplana tu espalda de manera que todo tu cuerpo esté recto y baja lentamente tu cuerpo. 3. Recoja las escápulas hacia atrás y hacia abajo, manteniendo los codos pegados a tu cuerpo. 4. Exhala mientras vuelves a la posición inicial."}',
    2); -- Pecho 

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Fondos en Caja',
    'Los fondos en caja son un ejercicio excelente para trabajar los músculos del pecho, los tríceps y los hombros. Sigue estos pasos para realizarlos correctamente en nivel intermedio: 1. Mantén tu cuerpo con los brazos bloqueados por encima del equipo. 2. Baja tu cuerpo lentamente mientras te inclinas hacia adelante, saca tus codos hacia afuera. 3. Eleva tu cuerpo por encima de las barras hasta que tus brazos estén completamente extendidos.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Bodyweight-dips-front.mp4#t=0.1',
    '{"musculos": ["Pectorales", "Tríceps", "Deltoides"], "precauciones": ["Evitar arquear excesivamente la espalda", "Controlar el movimiento para evitar lesiones en los hombros"], "modo_de_hacerlo": "1. Mantén tu cuerpo con los brazos bloqueados por encima del equipo. 2. Baja tu cuerpo lentamente mientras te inclinas hacia adelante, saca tus codos hacia afuera. 3. Eleva tu cuerpo por encima de las barras hasta que tus brazos estén completamente extendidos."}',
    2); -- Pecho

 INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Flexión Inclinada',
    'Las flexiones inclinadas son una excelente variante para principiantes que desean fortalecer el pecho inferior, los hombros y los brazos. Sigue estos pasos para realizarlas correctamente: 1. Párate frente al banco o a una plataforma elevada resistente. 2. Coloca las manos en el borde del banco o plataforma, un poco más anchas que el ancho de los hombros. 3. Baja lentamente tu cuerpo hasta que tu pecho casi toque el banco. 4. Empuja el cuerpo hacia arriba hasta que los brazos estén extendidos.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Bodyweight-incline-push-up-front.mp4#t=0.1',
    '{"musculos": ["Pectorales", "Deltoides", "Tríceps"], "precauciones": ["Mantener una alineación adecuada del cuerpo", "Evitar arquear excesivamente la espalda"], "modo_de_hacerlo": "1. Párate frente al banco o a una plataforma elevada resistente. 2. Coloca las manos en el borde del banco o plataforma, un poco más anchas que el ancho de los hombros. 3. Baja lentamente tu cuerpo hasta que tu pecho casi toque el banco. 4. Empuja el cuerpo hacia arriba hasta que los brazos estén extendidos."}',
    2); -- Pecho 
  
INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Flexión Inclinada hacia Abajo',
    'Las flexiones inclinadas hacia abajo son una variante excelente para principiantes que desean fortalecer el pecho superior, los hombros y los brazos. Sigue estos pasos para realizarlas correctamente: 1. Usa un banco para elevar tus pies. 2. Coloca tus manos un poco más anchas que el ancho de tus hombros. 3. Baja lentamente tu cuerpo hasta que tu pecho casi toque el suelo. 4. Levanta tu cuerpo hasta que casi bloquees tus codos.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Bodyweight-decline-push-up-front.mp4#t=0.1',
    '{"musculos": ["Pectorales", "Deltoides", "Tríceps"], "precauciones": ["Mantener una alineación adecuada del cuerpo", "Controlar el movimiento para evitar lesiones"], "modo_de_hacerlo": "1. Usa un banco para elevar tus pies. 2. Coloca tus manos un poco más anchas que el ancho de tus hombros. 3. Baja lentamente tu cuerpo hasta que tu pecho casi toque el suelo. 4. Levanta tu cuerpo hasta que casi bloquees tus codos."}',
    2); -- Pecho 

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Apertura de Pecho con Banda Elástica',
    'La apertura de pecho con banda elástica es un excelente ejercicio para fortalecer los músculos del pecho y los hombros. Sigue estos pasos para realizarlo correctamente: 1. Asegura dos bandas de resistencia a un punto de anclaje sólido a la altura del pecho. 2. Párate de espaldas al punto de anclaje con los pies separados a la anchura de los hombros y sostén cada extremo de la banda con cada mano. 3. Comienza con los brazos completamente extendidos y paralelos al suelo. 4. Manteniendo los brazos rectos, lleva lentamente tus brazos juntos frente a tu pecho.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-band-chest-fly-front_EjlOhyB.mp4#t=0.1',
    '{"musculos": ["Pectorales", "Deltoides"], "precauciones": ["Controlar la tensión de la banda para evitar lesiones", "Mantener una postura estable"], "modo_de_hacerlo": "1. Asegura dos bandas de resistencia a un punto de anclaje sólido a la altura del pecho. 2. Párate de espaldas al punto de anclaje con los pies separados a la anchura de los hombros y sostén cada extremo de la banda con cada mano. 3. Comienza con los brazos completamente extendidos y paralelos al suelo. 4. Manteniendo los brazos rectos, lleva lentamente tus brazos juntos frente a tu pecho."}',
    2); -- Pecho 

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Prensa de Lucio Elevada',
    'La prensa de lucio elevada es un ejercicio intermedio que se enfoca principalmente en fortalecer los músculos de los hombros y los tríceps. Sigue estos pasos para realizarlo correctamente: 1. Utiliza un banco u objeto resistente para elevar tus pies. 2. Baja la cabeza hacia el suelo doblando tus codos. 3. Empújate a través de tus manos y vuelve a la posición inicial de pica. 4. Repite el movimiento.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Bodyweight-elevated-pike-press-side.mp4#t=0.1',
    '{"musculos": ["Deltoides", "Tríceps"], "precauciones": ["Mantener una alineación adecuada del cuerpo", "Evitar arquear excesivamente la espalda"], "modo_de_hacerlo": "1. Utiliza un banco u objeto resistente para elevar tus pies. 2. Baja la cabeza hacia el suelo doblando tus codos. 3. Empújate a través de tus manos y vuelve a la posición inicial de pica. 4. Repite el movimiento."}',
    3); -- Hombros

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Press de Pica con Peso Corporal',
    'El press de pica con peso corporal es un ejercicio intermedio que se enfoca principalmente en fortalecer los músculos deltoides, además de trabajar los pectorales y tríceps. Sigue estos pasos para realizarlo correctamente: 1. Comienza en posición de plancha. Empuja tus caderas hacia arriba en dirección al techo. 2. Baja tu cabeza hacia el suelo doblando tus codos. 3. Empuja con las manos y regresa a la posición inicial de pica. 4. Repite el movimiento.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Bodyweight-bodyweight-pike-press-side.mp4#t=0.1',
    '{"musculos": ["Deltoides", "Pectorales", "Tríceps"], "precauciones": ["Mantener una alineación adecuada del cuerpo", "Controlar el movimiento para evitar lesiones"], "modo_de_hacerlo": "1. Comienza en posición de plancha. Empuja tus caderas hacia arriba en dirección al techo. 2. Baja tu cabeza hacia el suelo doblando tus codos. 3. Empuja con las manos y regresa a la posición inicial de pica. 4. Repite el movimiento."}',
    3); -- Hombros

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Separación de Banda Elástica',
    'La separación de banda elástica es un excelente ejercicio para fortalecer los músculos de los hombros y la parte superior de la espalda. Sigue estos pasos para realizarlo correctamente: 1. Agarra la banda con un agarre del ancho de tus hombros. Apunta tus brazos directamente frente a ti. 2. Retrae los omóplatos y la articulación del hombro hasta que la banda toque tu pecho.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-band-pull-apart-side.mp4#t=0.1',
    '{"musculos": ["Deltoides", "Trapecio"], "precauciones": ["Evitar usar una banda con demasiada resistencia al principio", "Mantener una postura estable"], "modo_de_hacerlo": "1. Agarra la banda con un agarre del ancho de tus hombros. Apunta tus brazos directamente frente a ti. 2. Retrae los omóplatos y la articulación del hombro hasta que la banda toque tu pecho."}',
    3); -- Hombros

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Press de Hombro con Banda y un Solo Brazo',
    'El press de hombro con banda y un solo brazo es un ejercicio efectivo para fortalecer los deltoides y los músculos estabilizadores del hombro. Sigue estos pasos para realizarlo correctamente: 1. Pasa la banda por debajo de uno de tus pies. El otro extremo de la banda debería estar en tu mano, entre tu pulgar e índice. 2. Presiona la banda directamente hacia el techo hasta que tu codo esté completamente extendido.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-band-single-arm-overhead-press-front.mp4#t=0.1',
    '{"musculos": ["Deltoides"], "precauciones": ["Mantener una postura estable", "Controlar la tensión de la banda para evitar lesiones"], "modo_de_hacerlo": "1. Pasa la banda por debajo de uno de tus pies. El otro extremo de la banda debería estar en tu mano, entre tu pulgar e índice. 2. Presiona la banda directamente hacia el techo hasta que tu codo esté completamente extendido."}',
    3); -- Hombros

    INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Tirón de Banda hacia la Cara',
    'El tirón de banda hacia la cara es un ejercicio efectivo para fortalecer los músculos de la espalda y los hombros. Sigue estos pasos para realizarlo correctamente: 1. Ancla la banda a la altura de los ojos. Da unos cuantos pasos atrás hasta que la banda esté tensa. 2. Usa un agarre por encima con ambas manos. Tira de la banda hasta el puente de tu nariz, abriendo los codos hacia fuera.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-band-face-pull-side.mp4#t=0.1',
    '{"musculos": ["Deltoides", "Trapecio", "Dorsal ancho"], "precauciones": ["Controlar la tensión de la banda para evitar lesiones", "Mantener una postura estable"], "modo_de_hacerlo": "1. Ancla la banda a la altura de los ojos. Da unos cuantos pasos atrás hasta que la banda esté tensa. 2. Usa un agarre por encima con ambas manos. Tira de la banda hasta el puente de tu nariz, abriendo los codos hacia fuera."}',
    3); -- Hombros

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Elevación Lateral con Banda',
    'La elevación lateral con banda es un excelente ejercicio para fortalecer los músculos deltoides laterales. Sigue estos pasos para realizarlo correctamente: 1. Agarra la banda a la anchura de los hombros. Levanta tus brazos estirados hacia un lado. 2. La banda debería rozar contra tu camiseta.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-band-lateral-raise-front.mp4#t=0.1',
    '{"musculos": ["Deltoides laterales"], "precauciones": ["Controlar la tensión de la banda para evitar lesiones"], "modo_de_hacerlo": "1. Agarra la banda a la anchura de los hombros. Levanta tus brazos estirados hacia un lado. 2. La banda debería rozar contra tu camiseta."}',
    3); -- Hombros

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Elevación Frontal con Banda',
    'La elevación frontal con banda es un ejercicio efectivo para fortalecer los músculos deltoides anteriores. Sigue estos pasos para realizarlo correctamente: 1. Párate sobre la banda con uno o dos pies, dependiendo de cuánto peso quieras que tenga la banda. 2. Con los codos extendidos, levanta los puños directamente hacia el techo hasta que estén a la altura de los ojos.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-band-front-raise-side.mp4#t=0.1',
    '{"musculos": ["Deltoides anteriores"], "precauciones": ["Controlar la tensión de la banda para evitar lesiones"], "modo_de_hacerlo": "1. Párate sobre la banda con uno o dos pies, dependiendo de cuánto peso quieras que tenga la banda. 2. Con los codos extendidos, levanta los puños directamente hacia el techo hasta que estén a la altura de los ojos."}',
    3); -- Hombros

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Flexiones de Barbilla',
    'Las flexiones de barbilla son un excelente ejercicio para fortalecer los músculos de los bíceps y la espalda. Sigue estos pasos para realizarlas correctamente: 1. Sujeta la barra a la anchura de los hombros con un agarre supinado (las palmas mirando hacia ti). 2. Con tu cuerpo colgando y los brazos completamente extendidos, levántate hasta que tu barbilla sobrepase la barra. 3. Regresa lentamente a la posición inicial. Repite.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-bodyweight-chinup-front.mp4#t=0.1',
    '{"musculos": ["Bíceps", "Dorsal ancho"], "precauciones": ["Evitar balanceo excesivo", "Mantener una técnica adecuada"], "modo_de_hacerlo": "1. Sujeta la barra a la anchura de los hombros con un agarre supinado (las palmas mirando hacia ti). 2. Con tu cuerpo colgando y los brazos completamente extendidos, levántate hasta que tu barbilla sobrepase la barra. 3. Regresa lentamente a la posición inicial. Repite."}',
    4); -- Bíceps

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Curl con Banda',
    'El curl con banda es un ejercicio efectivo para fortalecer los músculos de los brazos, especialmente los bíceps. Sigue estos pasos para realizarlo correctamente: 1. Ponte de pie con los pies separados al ancho de los hombros, con la banda debajo de ambos pies. 2. Agarra las asas de la banda con ambas manos, manteniendo tus brazos rectos y extendidos frente a ti. 3. Mantén tu espalda recta, los abdominales activados y los hombros relajados mientras doblas tus manos hacia tus hombros, doblando por los codos.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-band-curl-front_1YwVVEx.mp4#t=0.1',
    '{"musculos": ["Bíceps"], "precauciones": ["Controlar la tensión de la banda para evitar lesiones"], "modo_de_hacerlo": "1. Ponte de pie con los pies separados al ancho de los hombros, con la banda debajo de ambos pies. 2. Agarra las asas de la banda con ambas manos, manteniendo tus brazos rectos y extendidos frente a ti. 3. Mantén tu espalda recta, los abdominales activados y los hombros relajados mientras doblas tus manos hacia tus hombros, doblando por los codos."}',
    4); -- Biceps

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Curl Inverso con Banda',
    'El curl inverso con banda es un ejercicio excelente para fortalecer los músculos de los antebrazos y los bíceps. Sigue estos pasos para realizarlo correctamente: 1. Comienza parándote en el centro de la banda con ambos pies separados a la anchura de los hombros. 2. Sostén la banda con ambas manos, las palmas hacia abajo, los brazos extendidos rectos frente a ti. 3. Dobla lentamente tus manos hacia tus hombros, estirando la banda, luego baja los brazos de nuevo a la posición inicial, manteniendo la tensión en la banda durante todo el ejercicio.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-band-reverse-curl-side_Cez320W.mp4#t=0.1',
    '{"musculos": ["Bíceps", "Antebrazos"], "precauciones": ["Controlar la tensión de la banda para evitar lesiones"], "modo_de_hacerlo": "1. Comienza parándote en el centro de la banda con ambos pies separados a la anchura de los hombros. 2. Sostén la banda con ambas manos, las palmas hacia abajo, los brazos extendidos rectos frente a ti. 3. Dobla lentamente tus manos hacia tus hombros, estirando la banda, luego baja los brazos de nuevo a la posición inicial, manteniendo la tensión en la banda durante todo el ejercicio."}',
    4); -- Biceps

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Curl Bayesiano con Banda',
    'El curl bayesiano con banda es un ejercicio básico pero efectivo para fortalecer los músculos de los bíceps. Sigue estos pasos para realizarlo correctamente: 1. Sujeta la banda a un punto de anclaje bajo. Apunta tus palmas directamente hacia adelante. 2. Dobla el codo hasta que sientas que tus bíceps se contraen. Luego, extiende completamente los codos.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-band-curl-side.mp4#t=0.1',
    '{"musculos": ["Bíceps"], "precauciones": ["Controlar la tensión de la banda para evitar lesiones"], "modo_de_hacerlo": "1. Sujeta la banda a un punto de anclaje bajo. Apunta tus palmas directamente hacia adelante. 2. Dobla el codo hasta que sientas que tus bíceps se contraen. Luego, extiende completamente los codos."}',
    4); -- Biceps

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Rizo de Martillo Bayesiano con Banda',
    'El rizo de martillo bayesiano con banda es un ejercicio intermedio que se centra en fortalecer los músculos de los bíceps y los antebrazos. Sigue estos pasos para realizarlo correctamente: 1. Sujeta la banda a un punto de anclaje bajo. Usa un agarre neutro. 2. Flexiona tu codo hasta que sientas que se contraen tus bíceps. Luego, extiende completamente los codos.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-band-hammer-curl-front.mp4#t=0.1',
    '{"musculos": ["Bíceps", "Antebrazos"], "precauciones": ["Controlar la tensión de la banda para evitar lesiones"], "modo_de_hacerlo": "1. Sujeta la banda a un punto de anclaje bajo. Usa un agarre neutro. 2. Flexiona tu codo hasta que sientas que se contraen tus bíceps. Luego, extiende completamente los codos."}',
    4); -- Biceps

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Fondos en Caja',
    'Los fondos en caja son un ejercicio intermedio que se centra principalmente en fortalecer los músculos de los tríceps, aunque también involucra los músculos del pecho y los hombros. Sigue estos pasos para realizarlo correctamente: 1. Mantén tu cuerpo con los brazos bloqueados por encima del equipo. 2. Baja tu cuerpo lentamente mientras te inclinas hacia adelante, saca tus codos hacia afuera. 3. Eleva tu cuerpo por encima de las barras hasta que tus brazos estén completamente extendidos.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Bodyweight-dips-front.mp4#t=0.1',
    '{"musculos": ["Tríceps", "Pecho", "Hombros"], "precauciones": ["Mantener una buena alineación corporal para evitar lesiones"], "modo_de_hacerlo": "1. Mantén tu cuerpo con los brazos bloqueados por encima del equipo. 2. Baja tu cuerpo lentamente mientras te inclinas hacia adelante, saca tus codos hacia afuera. 3. Eleva tu cuerpo por encima de las barras hasta que tus brazos estén completamente extendidos."}',
    5); -- Triceps

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Flexiones Diamante',
    'Las flexiones diamante son un excelente ejercicio para fortalecer los tríceps y el pecho. Sigue estos pasos para realizarlas correctamente: 1. Coloca tus dedos índices y pulgares de manera que se toquen, formando una forma de diamante. 2. Utiliza la posición estándar de flexión de brazos. 3. Baja el pecho hacia tus manos, mantén los codos cerca de tu cuerpo. 4. Detente justo antes de que tu pecho toque el suelo, luego empuja hacia arriba para volver a la posición inicial.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Bodyweight-diamond-push-ups-side.mp4#t=0.1',
    '{"musculos": ["Tríceps", "Pecho"], "precauciones": ["Mantener una alineación adecuada del cuerpo para evitar lesiones"], "modo_de_hacerlo": "1. Coloca tus dedos índices y pulgares de manera que se toquen, formando una forma de diamante. 2. Utiliza la posición estándar de flexión de brazos. 3. Baja el pecho hacia tus manos, mantén los codos cerca de tu cuerpo. 4. Detente justo antes de que tu pecho toque el suelo, luego empuja hacia arriba para volver a la posición inicial."}',
    5); -- Triceps

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Fondos en Banco',
    'Los fondos en banco son un ejercicio efectivo para trabajar los músculos del tríceps, el pecho y los hombros. Sigue estos pasos para realizarlo correctamente: 1. Agarra el borde del banco con tus manos, mantén tus pies juntos y las piernas rectas. 2. Baja tu cuerpo recto hacia abajo. 3. Presiona lentamente hacia arriba hasta volver al punto de inicio. 4. CONSEJO: Hazlo más difícil levantando tus pies del suelo y añadiendo peso.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-bodyweight-tricep-dips-side.mp4#t=0.1',
    '{"musculos": ["Tríceps", "Pecho", "Hombros"], "precauciones": ["Mantener una buena alineación corporal para evitar lesiones"], "modo_de_hacerlo": "1. Agarra el borde del banco con tus manos, mantén tus pies juntos y las piernas rectas. 2. Baja tu cuerpo recto hacia abajo. 3. Presiona lentamente hacia arriba hasta volver al punto de inicio. 4. CONSEJO: Hazlo más difícil levantando tus pies del suelo y añadiendo peso."}',
    5); -- Triceps

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Fondos en Barras Paralelas',
    'Los fondos en barras paralelas son un ejercicio intermedio que se centra en fortalecer los músculos del tríceps, el pecho y los hombros. Sigue estos pasos para realizarlo correctamente: 1. Agarra las barras con los brazos estirados, los hombros sobre las manos. Mantén las piernas estiradas o dobladas. 2. Baja lentamente hasta que los codos estén a 90 grados. 3. Empuja hacia arriba hasta volver a la posición inicial, extendiendo completamente los brazos.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Bodyweight-parralel-bar-dips-side.mp4#t=0.1',
    '{"musculos": ["Tríceps", "Pecho", "Hombros"], "precauciones": ["Mantener una buena alineación corporal para evitar lesiones"], "modo_de_hacerlo": "1. Agarra las barras con los brazos estirados, los hombros sobre las manos. Mantén las piernas estiradas o dobladas. 2. Baja lentamente hasta que los codos estén a 90 grados. 3. Empuja hacia arriba hasta volver a la posición inicial, extendiendo completamente los brazos."}',
    5); -- Triceps

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Empuje hacia Abajo con Banda',
    'El empuje hacia abajo con banda es un ejercicio para principiantes que se centra en fortalecer los músculos de los tríceps. Sigue estos pasos para realizarlo correctamente: 1. Coloca la banda justo por encima del nivel de los ojos. Da unos pasos hacia atrás hasta que la banda esté tensa. 2. Retrocede ligeramente tus caderas. Extiende y flexiona en los codos.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-band-pushdown-front.mp4#t=0.1',
    '{"musculos": ["Tríceps"], "precauciones": ["Mantener una buena alineación corporal para evitar lesiones"], "modo_de_hacerlo": "1. Coloca la banda justo por encima del nivel de los ojos. Da unos pasos hacia atrás hasta que la banda esté tensa. 2. Retrocede ligeramente tus caderas. Extiende y flexiona en los codos."}',
    5); -- Triceps

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Extensión de Tríceps por Encima de la Cabeza con Banda',
    'La extensión de tríceps por encima de la cabeza con banda es un ejercicio avanzado que se enfoca en fortalecer los tríceps. Sigue estos pasos para realizarlo correctamente: 1. Póngase de pie con uno o ambos pies sobre la banda. Suba y pase por encima de su cabeza con la banda hasta la posición inicial. 2. Flexiona y extiende tus codos.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-band-overhead-tricep-extension-side.mp4#t=0.1',
    '{"musculos": ["Tríceps"], "precauciones": ["Mantener una buena alineación corporal para evitar lesiones"], "modo_de_hacerlo": "1. Póngase de pie con uno o ambos pies sobre la banda. Suba y pase por encima de su cabeza con la banda hasta la posición inicial. 2. Flexiona y extiende tus codos."}',
    5); -- Triceps

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Empuje hacia abajo con una sola mano con banda',
    'El empuje hacia abajo con una sola mano con banda es un ejercicio para principiantes que se centra en fortalecer los músculos del tríceps. Sigue estos pasos para realizarlo correctamente: 1. Párate con los pies al ancho de tus hombros y sujeta la banda con tu mano derecha, con el brazo a tu lado. 2. Dobla y extiende tu codo.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-band-single-arm-pushdown-front.mp4#t=0.1',
    '{"musculos": ["Tríceps"], "precauciones": ["Mantener una buena alineación corporal para evitar lesiones"], "modo_de_hacerlo": "1. Párate con los pies al ancho de tus hombros y sujeta la banda con tu mano derecha, con el brazo a tu lado. 2. Dobla y extiende tu codo."}',
    5); -- Triceps

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Abdominales',
    'Los abdominales son un ejercicio básico para fortalecer los músculos abdominales. Sigue estos pasos para realizarlo correctamente: 1. Recuéstate sobre tu espalda con las rodillas dobladas y los pies apoyados en el suelo, aproximadamente a un pie de distancia de tu zona lumbar. 2. Coloca las yemas de tus dedos en tus sienes con las palmas hacia afuera. 3. Contrae el abdomen hacia la base de tu columna para activar los músculos, luego levanta la cabeza y los hombros del suelo. Regresa a la posición inicial y repite.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-bodyweight-crunch-side.mp4#t=0.1',
    '{"musculos": ["Abdominales"], "precauciones": ["Evitar tirar del cuello con las manos", "Mantener la espalda en contacto con el suelo"], "modo_de_hacerlo": "1. Recuéstate sobre tu espalda con las rodillas dobladas y los pies apoyados en el suelo, aproximadamente a un pie de distancia de tu zona lumbar. 2. Coloca las yemas de tus dedos en tus sienes con las palmas hacia afuera. 3. Contrae el abdomen hacia la base de tu columna para activar los músculos, luego levanta la cabeza y los hombros del suelo. Regresa a la posición inicial y repite."}',
    6); -- Abdominales

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Elevaciones de Pierna Acostado',
    'Las elevaciones de pierna acostado son un ejercicio básico para fortalecer los músculos abdominales inferiores. Sigue estos pasos para realizarlo correctamente: 1. Acuéstate boca arriba con las palmas de tus brazos hacia abajo a ambos lados. 2. Mantén tus piernas juntas y lo más rectas posible. 3. Levanta lentamente tus piernas hasta un ángulo de 90°, haz una pausa en esta posición, o tan alto como puedas llegar con tus piernas, y luego bájalas lentamente de nuevo. 4. La duración de estos movimientos debería ser lenta para que no utilices el impulso, permitiéndote obtener el máximo provecho del ejercicio.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-bodyweight-leg-raises-side.mp4#t=0.1',
    '{"musculos": ["Abdominales inferiores"], "precauciones": ["Evitar arquear la espalda"], "modo_de_hacerlo": "1. Acuéstate boca arriba con las palmas de tus brazos hacia abajo a ambos lados. 2. Mantén tus piernas juntas y lo más rectas posible. 3. Levanta lentamente tus piernas hasta un ángulo de 90°, haz una pausa en esta posición, o tan alto como puedas llegar con tus piernas, y luego bájalas lentamente de nuevo. 4. La duración de estos movimientos debería ser lenta para que no utilices el impulso, permitiéndote obtener el máximo provecho del ejercicio."}',
    6); -- Abdominales

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Elevaciones de Rodilla Colgando',
    'Las elevaciones de rodilla colgando son un ejercicio básico para fortalecer los músculos abdominales inferiores. Sigue estos pasos para realizarlo correctamente: 1. Agarra la barra y cuélgate, mantén tu cuerpo quieto y tus piernas rectas. 2. Levanta lentamente tus rodillas hacia tu pecho. 3. Una vez que hayas levantado las rodillas lo más alto posible, baja las piernas y repite. La duración de estos movimientos debe ser lenta para que no utilices el impulso, permitiéndote obtener el máximo beneficio del ejercicio.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-bodyweight-hanging-knee-raises-front.mp4#t=0.1',
    '{"musculos": ["Abdominales inferiores"], "precauciones": ["Evitar balanceo excesivo"], "modo_de_hacerlo": "1. Agarra la barra y cuélgate, mantén tu cuerpo quieto y tus piernas rectas. 2. Levanta lentamente tus rodillas hacia tu pecho. 3. Una vez que hayas levantado las rodillas lo más alto posible, baja las piernas y repite. La duración de estos movimientos debe ser lenta para que no utilices el impulso, permitiéndote obtener el máximo beneficio del ejercicio."}',
    6); -- Abdominales

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Plancha de Antebrazo',
    'La plancha de antebrazo es un ejercicio básico para fortalecer el core y mejorar la estabilidad. Sigue estos pasos para realizarlo correctamente: 1. Coloca los antebrazos en el suelo con tus codos doblados a un ángulo de 90° alineados debajo de tus hombros, con tus brazos en paralelo al ancho de tus hombros. 2. Tus pies deben estar juntos, con solo tus dedos tocando el suelo. 3. Levanta tu vientre del suelo y forma una línea recta desde tus talones hasta la coronilla de tu cabeza y mantén.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-bodyweight-forearm-plank-front.mp4#t=0.1',
    '{"musculos": ["Core"], "precauciones": ["Evitar arquear la espalda baja"], "modo_de_hacerlo": "1. Coloca los antebrazos en el suelo con tus codos doblados a un ángulo de 90° alineados debajo de tus hombros, con tus brazos en paralelo al ancho de tus hombros. 2. Tus pies deben estar juntos, con solo tus dedos tocando el suelo. 3. Levanta tu vientre del suelo y forma una línea recta desde tus talones hasta la coronilla de tu cabeza y mantén."}',
    6); -- Abdominales

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Crunch con Banda Elástica',
    'El crunch con banda elástica es un ejercicio intermedio que fortalece los músculos abdominales. Sigue estos pasos para realizarlo correctamente: 1. Coloca la banda en el punto de anclaje más alto que tengas disponible. Toma ambos extremos de la banda y ponte en una posición de rodillas. 2. Empuja tus caderas hacia atrás, flexionando la columna. 3. Contrae tus abdominales y luego extiende las caderas y la columna hasta volver a la posición inicial.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-band-crunch-side.mp4#t=0.1',
    '{"musculos": ["Abdominales"], "precauciones": ["Mantener la columna alineada durante todo el ejercicio"], "modo_de_hacerlo": "1. Coloca la banda en el punto de anclaje más alto que tengas disponible. Toma ambos extremos de la banda y ponte en una posición de rodillas. 2. Empuja tus caderas hacia atrás, flexionando la columna. 3. Contrae tus abdominales y luego extiende las caderas y la columna hasta volver a la posición inicial."}',
    6); -- Abdominales

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Sentadilla con Peso Corporal',
    'La sentadilla con peso corporal es un ejercicio básico para fortalecer las piernas y glúteos. Sigue estos pasos para realizarlo correctamente: 1. Ponte de pie con los pies separados al ancho de los hombros. 2. Dobla tus rodillas y caderas y retrocede a la posición de sentadilla mientras bajas tu cuerpo. 3. Continúa hasta alcanzar la profundidad completa. 4. Regresa a la posición inicial.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Bodyweight-bodyweight-squat-front.mp4#t=0.1',
    '{"musculos": ["Cuádriceps", "Glúteos"], "precauciones": ["Mantener la espalda recta", "No dejar que las rodillas se desplacen hacia adentro"], "modo_de_hacerlo": "1. Ponte de pie con los pies separados al ancho de los hombros. 2. Dobla tus rodillas y caderas y retrocede a la posición de sentadilla mientras bajas tu cuerpo. 3. Continúa hasta alcanzar la profundidad completa. 4. Regresa a la posición inicial."}',
    7); -- cuadriceps

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Zancadas hacia adelante',
    'Las zancadas hacia adelante son un ejercicio básico para fortalecer las piernas y glúteos. Sigue estos pasos para realizarlo correctamente: 1. Avanza con una pierna. 2. Baja tu cuerpo hasta que tu rodilla trasera casi toque el suelo. 3. Asegúrate de permanecer erguido y que tu rodilla delantera se mantenga por encima del pie delantero. 4. Empuja el suelo con tu pie delantero hasta que vuelvas a la posición inicial. Cambia de pierna.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Bodyweight-forward-lunges-side.mp4#t=0.1',
    '{"musculos": ["Cuádriceps", "Glúteos"], "precauciones": ["Mantener la espalda recta", "Evitar que la rodilla delantera sobrepase los dedos de los pies"], "modo_de_hacerlo": "1. Avanza con una pierna. 2. Baja tu cuerpo hasta que tu rodilla trasera casi toque el suelo. 3. Asegúrate de permanecer erguido y que tu rodilla delantera se mantenga por encima del pie delantero. 4. Empuja el suelo con tu pie delantero hasta que vuelvas a la posición inicial. Cambia de pierna."}',
    7); -- cuadriceps

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Sentadilla Búlgara con Apoyo',
    'La sentadilla búlgara con apoyo es un ejercicio básico para fortalecer las piernas y glúteos. Sigue estos pasos para realizarlo correctamente: 1. Párate de espaldas a un banco (o superficie elevada) y coloca uno de tus pies en el banco. 2. Haz una sentadilla hasta que tu pierna delantera esté aproximadamente paralela al suelo. 3. Regresa a la posición inicial. Después de completar la cantidad deseada de repeticiones, cambia de pierna y repite.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Bodyweight-bulgarian-split-squat-side.mp4#t=0.1',
    '{"musculos": ["Cuádriceps", "Glúteos"], "precauciones": ["Mantener la espalda recta", "Controlar el movimiento para evitar lesiones"], "modo_de_hacerlo": "1. Párate de espaldas a un banco (o superficie elevada) y coloca uno de tus pies en el banco. 2. Haz una sentadilla hasta que tu pierna delantera esté aproximadamente paralela al suelo. 3. Regresa a la posición inicial. Después de completar la cantidad deseada de repeticiones, cambia de pierna y repite."}',
    7); -- cuadriceps

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Elevación de Rodilla con Peso Corporal',
    'La elevación de rodilla con peso corporal es un ejercicio intermedio para fortalecer las piernas y glúteos. Sigue estos pasos para realizarlo correctamente: 1. Comienza de pie frente a una caja o banco resistente que tenga aproximadamente la altura de la rodilla. 2. Coloca tu pie derecho sobre la caja y empuja con el talón para elevar tu cuerpo hacia arriba y sobre la caja, lleva tu otra pierna todo el camino hasta que esté paralela al suelo. 3. Retrocede con tu pie derecho, bajando tu pie izquierdo al suelo.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Recovery-step-up-knee-drive-side.mp4#t=0.1',
    '{"musculos": ["Cuádriceps", "Glúteos"], "precauciones": ["Mantener la espalda recta", "Controlar el movimiento para evitar lesiones"], "modo_de_hacerlo": "1. Comienza de pie frente a una caja o banco resistente que tenga aproximadamente la altura de la rodilla. 2. Coloca tu pie derecho sobre la caja y empuja con el talón para elevar tu cuerpo hacia arriba y sobre la caja, lleva tu otra pierna todo el camino hasta que esté paralela al suelo. 3. Retrocede con tu pie derecho, bajando tu pie izquierdo al suelo."}',
    7); -- cuadriceps

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Zancada Caminando',
    'La zancada caminando es un ejercicio intermedio para fortalecer las piernas y glúteos. Sigue estos pasos para realizarlo correctamente: 1. Da un paso hacia adelante trasladando tu peso a la pierna delantera. 2. Dobla la rodilla de la pierna delantera para que la rodilla de la pierna trasera se acerque al suelo. 3. Levántate y haz una estocada con la pierna opuesta.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Recovery-lunge-walking-side.mp4#t=0.1',
    '{"musculos": ["Cuádriceps", "Glúteos"], "precauciones": ["Mantener la espalda recta", "Controlar el movimiento para evitar lesiones"], "modo_de_hacerlo": "1. Da un paso hacia adelante trasladando tu peso a la pierna delantera. 2. Dobla la rodilla de la pierna delantera para que la rodilla de la pierna trasera se acerque al suelo. 3. Levántate y haz una estocada con la pierna opuesta."}',
    7); -- cuadriceps

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Sentadilla con los Talones Levantados',
    'La sentadilla con los talones levantados es un ejercicio básico para fortalecer las piernas y glúteos. Sigue estos pasos para realizarlo correctamente: 1. Coloca tus talones en una placa o en un escalón muy bajo. 2. Mantén el pecho erguido e inicia la sentadilla empujando las caderas hacia atrás y flexionando las rodillas. 3. Deberías notar que puedes hacer sentadillas más bajas de lo normal.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-bodyweight-heels-up-squat-front.mp4#t=0.1',
    '{"musculos": ["Cuádriceps", "Glúteos"], "precauciones": ["Mantener la espalda recta", "Controlar el movimiento para evitar lesiones"], "modo_de_hacerlo": "1. Coloca tus talones en una placa o en un escalón muy bajo. 2. Mantén el pecho erguido e inicia la sentadilla empujando las caderas hacia atrás y flexionando las rodillas. 3. Deberías notar que puedes hacer sentadillas más bajas de lo normal."}',
    7); -- cuadriceps

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Prensa de Piernas con Banda Elástica',
    'La prensa de piernas con banda elástica es un ejercicio avanzado para fortalecer los músculos de las piernas. Sigue estos pasos para realizarlo correctamente: 1. Recuéstate plano en el suelo con tu cabeza cerca del punto de anclaje de la banda, que debería estar de 15 a 30 centímetros por encima de tu cabeza. 2. Coloca la banda alrededor de la zona media de tu pie y extiende las rodillas y la cadera.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-band-leg-press-side.mp4#t=0.1',
    '{"musculos": ["Cuádriceps", "Isquiotibiales", "Glúteos"], "precauciones": ["Mantener la espalda en contacto con el suelo", "Controlar el movimiento para evitar lesiones"], "modo_de_hacerlo": "1. Recuéstate plano en el suelo con tu cabeza cerca del punto de anclaje de la banda, que debería estar de 15 a 30 centímetros por encima de tu cabeza. 2. Coloca la banda alrededor de la zona media de tu pie y extiende las rodillas y la cadera."}',
    7); -- cuadriceps

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Extensión de Pierna con Banda Elástica',
    'La extensión de pierna con banda elástica es un ejercicio básico para fortalecer los cuádriceps. Sigue estos pasos para realizarlo correctamente: 1. Ancora una banda a algo estable y coloca un banco. 2. Pasa la banda por debajo del banco y haz un bucle alrededor de tus pies. 3. Flexiona y extiende tus rodillas.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-band-leg-extension-side.mp4#t=0.1',
    '{"musculos": ["Cuádriceps"], "precauciones": ["Mantener una postura estable y controlada", "Evitar balanceos excesivos"], "modo_de_hacerlo": "1. Ancora una banda a algo estable y coloca un banco. 2. Pasa la banda por debajo del banco y haz un bucle alrededor de tus pies. 3. Flexiona y extiende tus rodillas."}',
    7); -- cuadriceps

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Peso Muerto Rumano a una Pierna',
    'El peso muerto rumano a una pierna es un ejercicio básico para trabajar principalmente los músculos isquiotibiales y los glúteos. Sigue estos pasos para realizarlo correctamente: 1. Párate con los pies separados al ancho de los hombros y las rodillas ligeramente flexionadas, luego levanta una pierna. 2. Manteniendo la pierna levantada, inclínate desde las caderas y baja tu torso hasta que esté casi paralelo al suelo. 3. Tensa tus glúteos y luego regresa a la posición inicial.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Bodyweight-single-legged-romanian-deadlifts-side.mp4#t=0.1',
    '{"musculos": ["Isquiotibiales", "Glúteos"], "precauciones": ["Mantener la espalda recta", "Evitar balanceos excesivos"], "modo_de_hacerlo": "1. Párate con los pies separados al ancho de los hombros y las rodillas ligeramente flexionadas, luego levanta una pierna. 2. Manteniendo la pierna levantada, inclínate desde las caderas y baja tu torso hasta que esté casi paralelo al suelo. 3. Tensa tus glúteos y luego regresa a la posición inicial."}',
    8); -- isquiotibiales

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Flexión Nórdica de Isquiotibiales',
    'La flexión nórdica de isquiotibiales es un ejercicio intermedio diseñado para fortalecer los músculos isquiotibiales. Sigue estos pasos para realizarlo correctamente: 1. Arrodíllate y pídele a alguien que te sujete los tobillos. 2. Coloca tus manos delante de ti. 3. Con una ligera flexión en las rodillas, lleva lentamente tu cuerpo hacia el suelo (más lento es mejor). 4. Empuja hacia arriba y vuelve a la posición inicial.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Bodyweight-nordic-hamstring-curl-side.mp4#t=0.1',
    '{"musculos": ["Isquiotibiales"], "precauciones": ["Realizar el ejercicio lentamente para evitar lesiones", "Mantener la espalda recta"], "modo_de_hacerlo": "1. Arrodíllate y pídele a alguien que te sujete los tobillos. 2. Coloca tus manos delante de ti. 3. Con una ligera flexión en las rodillas, lleva lentamente tu cuerpo hacia el suelo (más lento es mejor). 4. Empuja hacia arriba y vuelve a la posición inicial."}',
    8); -- isquitiobales

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Peso Muerto Rumano con Banda Elástica',
    'El Peso Muerto Rumano con Banda Elástica es un ejercicio excelente para fortalecer los isquiotibiales y los glúteos. Sigue estos pasos para realizarlo correctamente: 1. Ponte de pie sobre tu banda con ambos pies. 2. Inclínate hacia adelante desde las caderas manteniendo la espalda recta. 3. Dobla hasta que sientas un estiramiento en los isquiotibiales. 4. Empuja tus caderas hacia adelante hasta que estés en una posición de pie.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-band-romanian-deadlift-side.mp4#t=0.1',
    '{"musculos": ["Isquiotibiales", "Glúteos"], "precauciones": ["Mantener la espalda recta en todo momento", "Evitar el sobreestiramiento de los isquiotibiales"], "modo_de_hacerlo": "1. Ponte de pie sobre tu banda con ambos pies. 2. Inclínate hacia adelante desde las caderas manteniendo la espalda recta. 3. Dobla hasta que sientas un estiramiento en los isquiotibiales. 4. Empuja tus caderas hacia adelante hasta que estés en una posición de pie."}',
    8); -- Isquiotibiales y Glúteos

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Tirón de Banda',
    'El Tirón de Banda es un ejercicio efectivo para trabajar los músculos de la cadena posterior, especialmente los isquiotibiales y los glúteos. Sigue estos pasos para realizarlo correctamente: 1. Ancla la banda al punto más bajo posible y sujétala con ambas manos. 2. Da unos pasos hacia atrás hasta que la banda esté tensa. 3. Empuja tus glúteos hacia atrás hasta que sientas un estiramiento en tus isquiotibiales. Luego, extiende las caderas hacia atrás hasta la posición inicial.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-band-pull-through-side.mp4#t=0.1',
    '{"musculos": ["Isquiotibiales", "Glúteos"], "precauciones": ["Mantener la espalda recta en todo momento", "Evitar el sobreestiramiento de los isquiotibiales"], "modo_de_hacerlo": "1. Ancla la banda al punto más bajo posible y sujétala con ambas manos. 2. Da unos pasos hacia atrás hasta que la banda esté tensa. 3. Empuja tus glúteos hacia atrás hasta que sientas un estiramiento en tus isquiotibiales. Luego, extiende las caderas hacia atrás hasta la posición inicial."}',
    8); -- Isquiotibiales y Glúteos

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Curl de Pierna con Banda Elástica',
    'El Curl de Pierna con Banda Elástica es un ejercicio efectivo para trabajar los isquiotibiales. Sigue estos pasos para realizarlo correctamente: 1. Pasa la banda alrededor de un punto de anclaje sólido, como un rack de levantamiento de pesas o un pomo de puerta. 2. Túmbate boca arriba con los talones dentro de la banda, asegurándote de que esté centrada bajo tus talones y tus pies estén separados a la anchura de las caderas. 3. Utilizando tus isquiotibiales, flexiona tus talones hacia tus glúteos mientras mantienes tus caderas en el suelo.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-band-leg-curl-side.mp4#t=0.1',
    '{"musculos": ["Isquiotibiales"], "precauciones": ["Mantener las caderas en el suelo para aislar los isquiotibiales"], "modo_de_hacerlo": "1. Pasa la banda alrededor de un punto de anclaje sólido. 2. Túmbate boca arriba con los talones dentro de la banda, asegurándote de que esté centrada bajo tus talones y tus pies estén separados a la anchura de las caderas. 3. Utilizando tus isquiotibiales, flexiona tus talones hacia tus glúteos mientras mantienes tus caderas en el suelo."}',
    8); -- Isquiotibiales

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Puente de Glúteos',
    'El Puente de Glúteos es un ejercicio efectivo para fortalecer los glúteos y la parte baja de la espalda. Sigue estos pasos para realizarlo correctamente: 1. Acuéstate con las rodillas dobladas y los pies apoyados sobre el suelo. 2. Empuja tus caderas hacia arriba para que tus glúteos estén elevados y tu espalda recta. 3. Contrae tus glúteos y eleva tus caderas hacia el techo. 4. Una vez que estés en el punto más alto que puedas manejar, mantén la posición durante unos segundos y luego regresa lentamente a la posición inicial.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Bodyweight-glute-bridge-side.mp4#t=0.1',
    '{"musculos": ["Glúteos", "Parte baja de la espalda"], "precauciones": ["Mantener la espalda recta durante todo el movimiento"], "modo_de_hacerlo": "1. Acuéstate con las rodillas dobladas y los pies apoyados sobre el suelo. 2. Empuja tus caderas hacia arriba para que tus glúteos estén elevados y tu espalda recta. 3. Contrae tus glúteos y eleva tus caderas hacia el techo. 4. Una vez que estés en el punto más alto que puedas manejar, mantén la posición durante unos segundos y luego regresa lentamente a la posición inicial."}',
    9); -- Glúteos

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Patadas hacia atrás',
    'Las patadas hacia atrás son un excelente ejercicio para fortalecer los glúteos. Sigue estos pasos para realizarlo correctamente: 1. Ponte en cuatro patas con las manos debajo de los hombros y las rodillas debajo de las caderas. 2. Extiende una pierna hacia atrás, apretando los glúteos al máximo. 3. Regresa lentamente a la posición inicial doblando la rodilla y bajando la pierna. 4. Cambia de pierna y repite el movimiento.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-Bodyweight-kickbacks-side.mp4#t=0.1',
    '{"musculos": ["Glúteos"], "precauciones": ["Mantén la espalda recta y los abdominales contraídos para evitar lesiones"], "modo_de_hacerlo": "1. Ponte en cuatro patas con las manos debajo de los hombros y las rodillas debajo de las caderas. 2. Extiende una pierna hacia atrás, apretando los glúteos al máximo. 3. Regresa lentamente a la posición inicial doblando la rodilla y bajando la pierna. 4. Cambia de pierna y repite el movimiento."}',
    9); -- Glúteos

INSERT INTO ejercicios_en_casa (nombre, descripcion, video_url, datos_cientificos, zona_ejercicio)
VALUES
    ('Patada de Glúteo con Banda Elástica',
    'La patada de glúteo con banda elástica es un excelente ejercicio para fortalecer los glúteos. Sigue estos pasos para realizarlo correctamente: 1. Adopta una posición de cuadrupedia. Enlaza la banda alrededor de ambas muñecas y uno de tus pies. 2. Extiende tu rodilla y cadera hacia atrás hasta que sientas una contracción en los glúteos. 3. Dobla la rodilla hasta volver a la posición inicial.',
    'https://media.musclewiki.com/media/uploads/videos/branded/male-band-kickback-side.mp4#t=0.1',
    '{"musculos": ["Glúteos"], "precauciones": ["Mantén la espalda recta y los abdominales contraídos para evitar lesiones"], "modo_de_hacerlo": "1. Adopta una posición de cuadrupedia. Enlaza la banda alrededor de ambas muñecas y uno de tus pies. 2. Extiende tu rodilla y cadera hacia atrás hasta que sientas una contracción en los glúteos. 3. Dobla la rodilla hasta volver a la posición inicial."}',
    9); -- Glúteos



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

