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
    descripcion TEXT NOT NULL
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

CREATE TABLE rutinas (
    id_entrenamiento INT AUTO_INCREMENT PRIMARY KEY,
    dia VARCHAR(255) NOT NULL,
    ejercicio INT,
    detalles JSON,
    FOREIGN KEY (ejercicio) REFERENCES ejercicios(ejercicio_id)
);


INSERT INTO musculos (nombre, descripcion) VALUES --musculos espalda
('Dorsal ancho', 'Más comúnmente conocidos como "los dorsales", estos dos músculos en forma de triángulo ocupan la mayor parte de la espalda. Se extienden desde la parte superior del brazo (húmero) hasta la pelvis y cruzan las costillas. Su función principal es rotar internamente, extender y llevar el brazo hacia la línea media del cuerpo (movimiento también conocido como aducción), explica Jennifer Novak, maestra en ciencias, especialista en entrenamiento de fuerza y acondicionamiento y dueña de PEAK Symmetry Performance Strategies, en Atlanta, Georgia. Como tal, los dorsales están muy involucrados en ejercicios como las dominadas y los jalones laterales, y en actividades como el remo y la natación.'),
('Trapecio', 'Los trapecios son otro par de músculos en forma de triángulo que están en la espalda. Comienzan en la base del cuello, se extienden a través de los hombros y bajan hasta la mitad de la espalda. Los trapecios te permiten levantar y rotar la cabeza, llevar los omóplatos hacia adentro y hacia abajo cuando mantienes una postura erguida y torcer el torso, señala la Clínica Cleveland. Trabajarás estos músculos cuando realices ejercicios como el remo, las dominadas, los encogimientos de hombros y los jalones laterales.'),
('Romboides', 'Los romboides son dos músculos separados en la parte superior de la espalda: el romboide mayor y el romboide menor. Se ubican debajo de los trapecios y van desde la columna vertebral hasta el borde del omóplato. Estos músculos tiran de los omóplatos hacia la línea media, como cuando se hace un remo inclinado, explica Novak. Los romboides también se activan durante ejercicios como la mosca inversa y los jalones hacia la cara (esto implica tirar de la pesa hacia la frente con un equipo de suspensión, una banda de resistencia o una polea de cable manteniendo los codos en alto).');

INSERT INTO musculos (nombre, descripcion) VALUES --musculos pecho
('Pectoral Mayor - Superior', 'La parte superior del pectoral mayor se enfoca en la porción clavicular y está más involucrada en la flexión del brazo hacia adelante. Puedes trabajar esta área específica con ejercicios como el press inclinado.'),
('Pectoral Mayor - Medio', 'La parte media del pectoral mayor abarca la porción esternal y es clave para la aducción y rotación interna del brazo. Ejercicios como el press de banca trabajan esta área de manera efectiva.'),
('Pectoral Mayor - Inferior', 'La parte inferior del pectoral mayor se concentra en la porción costal y es fundamental para movimientos como la aducción y rotación interna del brazo. Puedes desarrollar esta área con ejercicios como las aperturas de pecho y las flexiones de brazos.');

INSERT INTO musculos (nombre, descripcion) VALUES --musculos hombro
('Deltoides - Parte Anterior', 'La parte anterior del deltoides se encuentra en la parte frontal del hombro y es responsable de la flexión y elevación del brazo hacia adelante. Puedes trabajar esta parte con ejercicios como elevaciones frontales y press de hombros.'),
('Deltoides - Parte Media', 'La parte media del deltoides abarca la parte lateral del hombro y contribuye a la elevación lateral del brazo. Movimientos como elevaciones laterales y press militar son efectivos para desarrollar esta área.'),
('Deltoides - Parte Posterior', 'La parte posterior del deltoides se encuentra en la parte trasera del hombro y está involucrada en la extensión y elevación del brazo hacia atrás. Ejercicios como elevaciones posteriores y remo con barra pueden fortalecer esta región.');

INSERT INTO musculos (nombre, descripcion) VALUES --musculos biceps
('Bíceps Braquial - Cabeza Corta', 'La cabeza corta del bíceps braquial es una de las dos cabezas que forman este músculo. Se origina en la parte coracoides de la escápula y contribuye principalmente a la flexión del codo. Movimientos como curls de bíceps ayudan a desarrollar esta parte.'),
('Bíceps Braquial - Cabeza Larga', 'La cabeza larga del bíceps braquial se origina en la tuberosidad supraglenoidea de la escápula y también participa en la flexión del codo. Ejercicios como curls de bíceps y dominadas trabajan especialmente esta cabeza del bíceps.');

INSERT INTO musculos (nombre, descripcion) VALUES --musculos triceps
('Tríceps Braquial - Cabeza Larga', 'La cabeza larga del tríceps braquial es una de las tres cabezas que forman el tríceps. Se origina en la tuberosidad infraglenoidea de la escápula y es responsable de la extensión del codo. Puedes trabajar esta cabeza con ejercicios como fondos en paralelas y press de tríceps.'),
('Tríceps Braquial - Cabeza Lateral', 'La cabeza lateral del tríceps braquial se origina en la parte posterior del húmero y contribuye a la extensión del codo. Movimientos como extensiones de tríceps con polea y dips son efectivos para trabajar esta cabeza.'),
('Tríceps Braquial - Cabeza Medial', 'La cabeza medial del tríceps braquial se encuentra en la parte posterior del húmero, al igual que la cabeza lateral, y también participa en la extensión del codo. Ejercicios como fondos en máquina de tríceps y patadas de tríceps son útiles para desarrollar esta cabeza.');

INSERT INTO musculos (nombre, descripcion) VALUES --musculos antebrazo
('Flexores del Antebrazo', 'Los flexores del antebrazo incluyen músculos como el flexor carpi radialis, flexor carpi ulnaris y palmar largo. Estos músculos son responsables de la flexión de la muñeca y de los dedos. Puedes trabajarlos con ejercicios como curls de muñeca y curl de antebrazo.'),
('Extensores del Antebrazo', 'Los extensores del antebrazo incluyen músculos como el extensor carpi radialis longus, extensor carpi radialis brevis y extensor carpi ulnaris. Estos músculos son fundamentales para la extensión de la muñeca y de los dedos. Ejercicios como el reverse curl y las extensiones de muñeca son efectivos para fortalecer estos músculos.'),
('Pronadores y Supinadores', 'Además de los flexores y extensores, los músculos pronadores y supinadores, como el pronador teres y el supinador, son importantes para la rotación del antebrazo. Puedes trabajar estos músculos realizando ejercicios de rotación de muñeca y rotación de antebrazo.');

INSERT INTO musculos (nombre, descripcion) VALUES --musculos abs
('Recto Abdominal', 'El recto abdominal es el músculo principal de la pared abdominal. Se extiende desde el esternón hasta la sínfisis púbica y es responsable de la flexión del tronco. Puedes trabajar el recto abdominal con ejercicios como crunches y abdominales.'),
('Oblicuos Externos', 'Los oblicuos externos son músculos ubicados en los lados del abdomen. Ayudan en la rotación y flexión lateral del tronco. Puedes fortalecer los oblicuos externos con ejercicios como las torsiones y los crunches oblicuos.'),
('Oblicuos Internos', 'Los oblicuos internos están ubicados debajo de los oblicuos externos y también contribuyen a la rotación y flexión lateral del tronco. Ejercicios como las torsiones y los ejercicios de oblicuos ayudan a trabajar estos músculos.'),
('Transverso Abdominal', 'El transverso abdominal es el músculo más profundo de la pared abdominal y actúa como un corsé natural que ayuda a estabilizar la columna vertebral. Puedes fortalecer el transverso abdominal con ejercicios de contracción y respiración profunda.');

INSERT INTO musculos (nombre, descripcion) VALUES --musculos cuadriceps
('Cuádriceps - Recto Femoral', 'El recto femoral es parte del cuádriceps y se encuentra en la parte frontal del muslo. Es responsable de la extensión de la rodilla y ayuda en la flexión de la cadera. Puedes trabajar el recto femoral con ejercicios como sentadillas y extensiones de piernas.'),
('Cuádriceps - Vasto Lateral', 'El vasto lateral es uno de los tres músculos que conforman el cuádriceps. Se encuentra en la parte externa del muslo y contribuye a la extensión de la rodilla. Ejercicios como sentadillas y prensa de piernas fortalecen el vasto lateral.'),
('Cuádriceps - Vasto Medial', 'El vasto medial es otro componente del cuádriceps y se encuentra en la parte interna del muslo. Participa en la extensión de la rodilla y es esencial para la estabilidad de la rótula. Ejercicios como sentadillas y prensa de piernas trabajan el vasto medial.'),
('Cuádriceps - Vasto Intermedio', 'El vasto intermedio es el tercer músculo del cuádriceps y se encuentra entre el vasto lateral y el vasto medial. También contribuye a la extensión de la rodilla. Puedes fortalecer el vasto intermedio con ejercicios de extensión de piernas y sentadillas.');

INSERT INTO musculos (nombre, descripcion) VALUES --musculos  isquiotibial
('Bíceps Femoral', 'El bíceps femoral es uno de los músculos principales de los isquiotibiales y se encuentra en la parte posterior del muslo. Contribuye a la flexión de la rodilla y la extensión de la cadera. Puedes trabajar el bíceps femoral con ejercicios como curls de piernas y peso muerto.'),
('Semitendinoso', 'El semitendinoso es otro músculo de los isquiotibiales y se encuentra en la parte interna del muslo. Ayuda en la flexión de la rodilla y la extensión de la cadera. Ejercicios como curls de piernas y peso muerto trabajan el semitendinoso.'),
('Semimembranoso', 'El semimembranoso es un músculo profundo de los isquiotibiales y también se encuentra en la parte interna del muslo. Contribuye a la flexión de la rodilla y la extensión de la cadera. Puedes fortalecer el semimembranoso con ejercicios como curls de piernas y peso muerto.');

INSERT INTO musculos (nombre, descripcion) VALUES --musculos glueteo
('Glúteo Mayor', 'El glúteo mayor es el músculo más grande de los glúteos y se encuentra en la parte posterior de las nalgas. Es responsable de la extensión y abducción de la cadera. Puedes fortalecer el glúteo mayor con ejercicios como sentadillas, peso muerto y elevaciones de cadera.'),
('Glúteo Medio', 'El glúteo medio se encuentra en la parte lateral de las nalgas y es crucial para la abducción de la cadera. Contribuye a la estabilización de la pelvis durante la marcha y otros movimientos. Ejercicios como las abducciones de cadera y las sentadillas laterales pueden fortalecer este músculo.'),
('Glúteo Menor', 'El glúteo menor es un músculo más pequeño que se encuentra debajo del glúteo mayor. También participa en la abducción de la cadera y ayuda en la rotación externa. Puedes trabajar el glúteo menor con ejercicios específicos de abducción y rotación de cadera.');

INSERT INTO musculos (nombre, descripcion) VALUES --musculos gemelos
('Gastrocnemio', 'El gastrocnemio es el músculo más grande de los gemelos y se encuentra en la parte posterior de la pantorrilla. Es responsable de la flexión plantar del tobillo (levantar el talón). Puedes trabajar el gastrocnemio con ejercicios como elevaciones de talones y saltos.'),
('Sóleo', 'El sóleo es un músculo más profundo que se encuentra debajo del gastrocnemio. También contribuye a la flexión plantar del tobillo y es esencial para mantener la postura durante la bipedestación. Ejercicios como elevaciones de talones y sentadillas pueden fortalecer el sóleo.');


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
    '{"precauciones": ["Ajusta el asiento y las empuñaduras según tus necesidades.", "Controla el movimiento para evitar lesiones."]}', 
    5);

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

    INSERT INTO ejercicios (nombre, descripcion, datos_cientificos, id_musculo) VALUES
    ('Vacío abdominal (hipopresivos)', 
    'Este ejercicio se puede realizar acostado, de rodillas o de pie. Para realizarlo, exhala todo el aire de tus pulmones y luego aprieta tu abdomen como si estuvieras tratando de succionarlo hacia adentro. Mantén la contracción durante unos segundos y luego relájate. Repite este proceso 10-15 veces.', 
    '{"precauciones": ["Asegúrate de exhalar completamente antes de contraer el abdomen.", "Evita contener la respiración durante la contracción.", "Adapta la intensidad del ejercicio según tu capacidad."]}', 
    21);

--cuadriceps recto femoral
   
    INSERT INTO ejercicios (nombre, descripcion, datos_cientificos, id_musculo) VALUES
    ('Sentadillas', 
    'Las sentadillas son un ejercicio compuesto que trabaja varios grupos musculares, incluido el cuádriceps recto femoral. Para realizar una sentadilla con la forma correcta, coloca los pies a la anchura de los hombros, flexiona las rodillas y baja el cuerpo hasta que los muslos estén paralelos al suelo. Asegúrate de mantener la espalda recta y el pecho abierto.', 
    '{"precauciones": ["Asegúrate de mantener la forma correcta para evitar lesiones.", "Adapta la intensidad según tu capacidad.", "Consulta a un profesional si eres principiante o tienes alguna preocupación médica."]}', 
    22);
   
    INSERT INTO ejercicios (nombre, descripcion, datos_cientificos, id_musculo) VALUES
    ('Extensiones de rodilla', 
    'Este ejercicio se puede realizar con una máquina de pesas o con una banda de resistencia. Para realizar una extensión de rodilla, siéntate en una máquina o en el suelo con las piernas extendidas. Luego, flexiona la rodilla y levanta la parte inferior de la pierna hacia el pecho. Mantén la posición durante unos segundos antes de bajar la pierna de nuevo.', 
    '{"precauciones": ["Ajusta la resistencia de acuerdo a tu nivel de condición física.", "Evita movimientos bruscos y controla el rango de movimiento.", "Si sientes dolor o molestias, detén el ejercicio y consulta a un profesional."]}', 
    22);
    
    INSERT INTO ejercicios (nombre, descripcion, datos_cientificos, id_musculo) VALUES
    ('Prensa de piernas', 
    'La prensa de piernas es otro ejercicio que trabaja el cuádriceps recto femoral. Para realizar una prensa de piernas, siéntate en la máquina y coloca los pies en la plataforma. Luego, empuja la plataforma hacia arriba con las piernas hasta que las rodillas estén extendidas. Mantén la posición durante unos segundos antes de bajar la plataforma de nuevo.', 
    '{"precauciones": ["Ajusta la máquina según tu altura y posición cómoda.", "Controla el rango de movimiento y evita bloquear las rodillas en la posición extendida.", "Consulta a un profesional para aprender la técnica adecuada si eres principiante."]}', 
    22);

--cuadriceps  vasto lateral

    INSERT INTO ejercicios (nombre, descripcion, datos_cientificos, id_musculo) VALUES
    ('Sentadillas con los pies abiertos', 
    'Las sentadillas con los pies abiertos trabajan el vasto lateral de forma más específica que las sentadillas tradicionales. Para realizar una sentadilla con los pies abiertos, coloca los pies a una anchura mayor que la de los hombros, flexiona las rodillas y baja el cuerpo hasta que los muslos estén paralelos al suelo. Asegúrate de mantener la espalda recta y el pecho abierto.', 
    '{"precauciones": ["Ajusta la anchura de los pies según tu comodidad.", "Mantén la forma correcta para evitar lesiones.", "Adapta la intensidad según tu nivel de condición física."]}', 
    23);

    INSERT INTO ejercicios (nombre, descripcion, datos_cientificos, id_musculo) VALUES
    ('Extensiones de rodilla con los pies girados hacia fuera', 
    'Este ejercicio se puede realizar con una máquina de pesas o con una banda de resistencia. Para realizar una extensión de rodilla con los pies girados hacia fuera, siéntate en una máquina o en el suelo con las piernas extendidas. Luego, flexiona la rodilla y levanta la parte inferior de la pierna hacia el pecho, con los pies girados hacia fuera. Mantén la posición durante unos segundos antes de bajar la pierna de nuevo.', 
    '{"precauciones": ["Ajusta la resistencia según tu nivel de condición física.", "Controla el rango de movimiento y evita movimientos bruscos.", "Si sientes dolor, detén el ejercicio y consulta a un profesional."]}', 
    23);

    INSERT INTO ejercicios (nombre, descripcion, datos_cientificos, id_musculo) VALUES
    ('Prensa de piernas con los pies girados hacia fuera', 
    'La prensa de piernas con los pies girados hacia fuera es otro ejercicio que trabaja el vasto lateral de forma específica. Para realizar una prensa de piernas con los pies girados hacia fuera, siéntate en la máquina y coloca los pies en la plataforma con los dedos de los pies apuntando hacia fuera. Luego, empuja la plataforma hacia arriba con las piernas hasta que las rodillas estén extendidas. Mantén la posición durante unos segundos antes de bajar la plataforma de nuevo.', 
    '{"precauciones": ["Ajusta la máquina según tu altura y posición cómoda.", "Controla el rango de movimiento y evita bloquear las rodillas en la posición extendida.", "Consulta a un profesional para aprender la técnica adecuada si eres principiante."]}', 
    23);


--cuadriceps vasto medial
 
    INSERT INTO ejercicios (nombre, descripcion, datos_cientificos, id_musculo) VALUES
    ('Sentadillas con los pies juntos', 
    'Las sentadillas con los pies juntos trabajan el vasto medial de forma más específica que las sentadillas tradicionales. Para realizar una sentadilla con los pies juntos, coloca los pies juntos, flexiona las rodillas y baja el cuerpo hasta que los muslos estén paralelos al suelo. Asegúrate de mantener la espalda recta y el pecho abierto.', 
    '{"precauciones": ["Ajusta la postura según tu comodidad y nivel de habilidad.", "Controla la profundidad de la sentadilla para evitar lesiones.", "Mantén una técnica adecuada para maximizar la efectividad y minimizar el riesgo de lesiones."]}', 
    24);
   
    INSERT INTO ejercicios (nombre, descripcion, datos_cientificos, id_musculo) VALUES
    ('Extensiones de rodilla con los pies girados hacia dentro', 
    'Este ejercicio se puede realizar con una máquina de pesas o con una banda de resistencia. Para realizar una extensión de rodilla con los pies girados hacia dentro, siéntate en una máquina o en el suelo con las piernas extendidas. Luego, flexiona la rodilla y levanta la parte inferior de la pierna hacia el pecho, con los pies girados hacia dentro. Mantén la posición durante unos segundos antes de bajar la pierna de nuevo.', 
    '{"precauciones": ["Ajusta la resistencia según tu nivel de condición física.", "Controla el rango de movimiento y evita movimientos bruscos.", "Si sientes dolor, detén el ejercicio y consulta a un profesional."]}', 
    24);
  
    INSERT INTO ejercicios (nombre, descripcion, datos_cientificos, id_musculo) VALUES
    ('Prensa de piernas con los pies girados hacia dentro', 
    'La prensa de piernas con los pies girados hacia dentro es otro ejercicio que trabaja el vasto medial de forma específica. Para realizar una prensa de piernas con los pies girados hacia dentro, siéntate en la máquina y coloca los pies en la plataforma con los dedos de los pies apuntando hacia dentro. Luego, empuja la plataforma hacia arriba con las piernas hasta que las rodillas estén extendidas. Mantén la posición durante unos segundos antes de bajar la plataforma de nuevo.', 
    '{"precauciones": ["Ajusta la máquina según tu altura y posición cómoda.", "Controla el rango de movimiento y evita bloquear las rodillas en la posición extendida.", "Consulta a un profesional para aprender la técnica adecuada si eres principiante."]}', 
    24);

--cuadriceps vasto intermedio

    INSERT INTO ejercicios (nombre, descripcion, datos_cientificos, id_musculo) VALUES
    ('Extensiones de rodilla', 
    'Este ejercicio se puede realizar con una máquina de pesas o con una banda de resistencia. Para realizar una extensión de rodilla, siéntate en una máquina o en el suelo con las piernas extendidas. Luego, flexiona la rodilla y levanta la parte inferior de la pierna hacia el pecho. Mantén la posición durante unos segundos antes de bajar la pierna de nuevo.', 
    '{"precauciones": ["Ajusta la resistencia según tu nivel de condición física.", "Controla el rango de movimiento y evita movimientos bruscos.", "Si sientes dolor, detén el ejercicio y consulta a un profesional."]}', 
    25);
    
    INSERT INTO ejercicios (nombre, descripcion, datos_cientificos, id_musculo) VALUES
    ('Prensa de piernas', 
    'La prensa de piernas es otro ejercicio que trabaja el vasto intermedio. Para realizar una prensa de piernas, siéntate en la máquina y coloca los pies en la plataforma. Luego, empuja la plataforma hacia arriba con las piernas hasta que las rodillas estén extendidas. Mantén la posición durante unos segundos antes de bajar la plataforma de nuevo.', 
    '{"precauciones": ["Ajusta la máquina según tu altura y posición cómoda.", "Controla el rango de movimiento y evita bloquear las rodillas en la posición extendida.", "Consulta a un profesional para aprender la técnica adecuada si eres principiante."]}', 
    25);

--Biceps femoral
    
    INSERT INTO ejercicios (nombre, descripcion, datos_cientificos, id_musculo) VALUES
    ('Curl femoral sentado', 
    'El curl femoral sentado es un ejercicio efectivo para aislar y fortalecer el bíceps femoral, el músculo grande en la parte posterior del muslo. Para realizarlo, siéntate en una máquina de pesas designada para este ejercicio. Ajusta el asiento y las almohadillas según tu altura y posición. Coloca las piernas bajo las almohadillas, flexiona las rodillas y baja el peso hacia el suelo. Luego, extiende las piernas levantando el peso. Asegúrate de mantener la espalda recta durante todo el movimiento.', 
    '{"precauciones": ["Ajusta la máquina según tu altura y posición.", "Controla el rango de movimiento y evita movimientos bruscos.", "Mantén la espalda recta para evitar tensiones innecesarias."]}' , 
    26);

    INSERT INTO ejercicios (nombre, descripcion, datos_cientificos, id_musculo) VALUES
    ('Curl femoral tumbado', 
    'El curl femoral tumbado es un ejercicio efectivo para aislar y fortalecer el bíceps femoral, el músculo grande en la parte posterior del muslo. Para realizarlo, acuéstate boca abajo en una máquina o en el suelo con las piernas extendidas. Luego, flexiona la rodilla y levanta la parte inferior de la pierna hacia el pecho. Mantén la posición durante unos segundos antes de bajar la pierna de nuevo.', 
    '{"precauciones": ["Ajusta la máquina o la resistencia según tu nivel de condición física.", "Controla el rango de movimiento y evita movimientos bruscos.", "Si sientes dolor, detén el ejercicio y consulta a un profesional."]}', 
    26);
 
    INSERT INTO ejercicios (nombre, descripcion, datos_cientificos, id_musculo) VALUES
    ('Peso muerto', 
    'El peso muerto es un ejercicio compuesto que trabaja varios grupos musculares, incluido el bíceps femoral. Para realizar un peso muerto con la forma correcta, coloca los pies a la anchura de las caderas, flexiona las rodillas y baja el torso hasta que los muslos estén paralelos al suelo. Asegúrate de mantener la espalda recta y el pecho abierto.', 
    '{"precauciones": ["Utiliza un peso adecuado para tu nivel de condición física.", "Mantén la técnica adecuada para evitar lesiones.", "Consulta a un profesional si eres principiante o tienes alguna preocupación."]}' , 
    26);

--semitendinoso
    
    INSERT INTO ejercicios (nombre, descripcion, datos_cientificos, id_musculo) VALUES
    ('Peso muerto rumano', 
    'El peso muerto rumano es un ejercicio compuesto que trabaja varios grupos musculares, incluido el semitendinoso. Para realizar un peso muerto rumano con la forma correcta, coloca los pies a la anchura de las caderas, flexiona ligeramente las rodillas y baja el torso manteniendo la espalda recta hasta que sientas estiramiento en los músculos posteriores del muslo. Luego, regresa a la posición inicial levantando el torso y extendiendo las caderas. Asegúrate de mantener la espalda recta y el pecho abierto durante todo el movimiento.', 
    '{"precauciones": ["Asegúrate de mantener la espalda recta para evitar tensiones innecesarias.", "Controla el rango de movimiento y evita movimientos bruscos.", "No uses un peso excesivo que comprometa la forma."]}' , 
    27);

--semimembranoso

    INSERT INTO ejercicios (nombre, descripcion, datos_cientificos, id_musculo) VALUES
    ('Curl femoral tumbado con los pies girados hacia dentro', 
    'Este ejercicio se puede realizar con una máquina de pesas o con una banda de resistencia. Para realizar un curl femoral tumbado con los pies girados hacia dentro, acuéstate boca abajo en una máquina o en el suelo con las piernas extendidas. Luego, flexiona la rodilla y levanta la parte inferior de la pierna hacia el pecho, con los pies girados hacia dentro. Mantén la posición durante unos segundos, sintiendo la contracción en los músculos isquiotibiales, antes de bajar la pierna de nuevo.', 
    '{"precauciones": ["Ajusta la resistencia o el peso de la máquina de acuerdo con tu nivel de fuerza y condición física.", "Controla el movimiento para evitar tensiones innecesarias en las articulaciones.", "Realiza el ejercicio de forma controlada y sin balanceos."]}' , 
    27);

--glueteo mayor

    INSERT INTO ejercicios (nombre, descripcion, datos_cientificos, id_musculo) VALUES
    ('Hip Thrust', 
    'El hip thrust es un ejercicio que se realiza generalmente con una barra y un banco. Para realizarlo, siéntate en el suelo con la espalda apoyada en el banco y la barra colocada sobre las caderas. Coloca los pies a la anchura de los hombros y flexiona las rodillas. Luego, levanta las caderas hacia arriba hasta que el cuerpo forme una línea recta desde los hombros hasta las rodillas. Asegúrate de contraer los glúteos en la parte superior del movimiento antes de bajar las caderas de nuevo.', 
    '{"precauciones": ["Asegúrate de utilizar una barra y un banco adecuados para tu nivel de fuerza y condición física.", "Mantén la espalda apoyada en el banco durante todo el movimiento.", "Controla el movimiento para evitar tensiones innecesarias en la zona lumbar."]}' , 
    28);

    INSERT INTO ejercicios (nombre, descripcion, datos_cientificos, id_musculo) VALUES
    ('Puente de Glúteos', 
    'El puente de glúteos es un ejercicio específico para trabajar el glúteo mayor. Para realizarlo, acuéstate boca arriba con las rodillas flexionadas y los pies apoyados en el suelo. Luego, levanta la cadera del suelo hasta que tu cuerpo forme una línea recta desde las rodillas hasta los hombros. Mantén la posición durante unos segundos antes de bajar la cadera de nuevo.', 
    '{"precauciones": ["Asegúrate de mantener los pies firmemente apoyados en el suelo.", "Evita arquear la espalda baja excesivamente durante el movimiento.", "Concentra la contracción en los glúteos para maximizar el beneficio del ejercicio."]}' , 
    28);

--gluteo medio
   
    INSERT INTO ejercicios (nombre, descripcion, datos_cientificos, id_musculo) VALUES
    ('Elevación Lateral de Pierna Tumbado (Clamshell)', 
    'Este ejercicio se realiza tumbado de lado con las rodillas flexionadas y los pies apoyados en el suelo. Levanta la pierna superior hacia el techo mientras mantienes la pelvis estable. Baja la pierna con control y repite con la otra pierna.', 
    '{"precauciones": ["Mantén la pelvis estable durante el movimiento.", "Evita arquear la espalda baja excesivamente.", "Realiza el ejercicio con control y concentrándote en la activación del glúteo medio."]}' , 
    29);
   
    INSERT INTO ejercicios (nombre, descripcion, datos_cientificos, id_musculo) VALUES
    ('Caminata Lateral con Banda de Resistencia', 
    'Coloca una banda de resistencia alrededor de los muslos, justo por encima de las rodillas. Mantén la espalda recta y da pasos hacia un lado, sintiendo la activación del glúteo medio. Repite hacia el otro lado.', 
    '{"precauciones": ["Mantén una postura adecuada con la espalda recta.", "Ajusta la resistencia de la banda según tu nivel de fuerza.", "Concéntrate en activar el glúteo medio durante todo el movimiento."]}' , 
    29);


--glueteo menor

    INSERT INTO ejercicios (nombre, descripcion, datos_cientificos, id_musculo) VALUES
    ('Elevación Lateral de Pierna de Pie (Fire Hydrant)', 
    'Ponte de pie de lado con las rodillas flexionadas a 90 grados. Levanta la pierna superior hacia un lado, manteniendo la rodilla flexionada y el pie flexionado. Baja la pierna con control y repite con la otra pierna.', 
    '{"precauciones": ["Mantén las rodillas flexionadas a 90 grados durante el ejercicio.", "Evita inclinar demasiado el torso hacia adelante o hacia atrás.", "Controla el movimiento para evitar balanceos innecesarios."]}' , 
    30);

--gastrocnemio

    INSERT INTO ejercicios (nombre, descripcion, datos_cientificos, id_musculo) VALUES
    ('Elevaciones de Talones de Pie', 
    'Este es un ejercicio clásico para trabajar el gastrocnemio. Para realizarlo, ponte de pie con los pies a la anchura de las caderas y levanta los talones del suelo hasta que las puntas de los pies estén apoyadas en el suelo. Mantén la posición durante unos segundos antes de bajar los talones de nuevo.',
    '{"precauciones": ["Mantén los pies a la anchura de las caderas durante el ejercicio.", "Evita bloquear las rodillas en la posición elevada.", "Controla el movimiento para evitar movimientos bruscos."]}' , 
    30);

    INSERT INTO ejercicios (nombre, descripcion, datos_cientificos, id_musculo) VALUES
    ('Elevaciones de Talones Sentado', 
    'Este ejercicio es similar al anterior, pero se realiza sentado. Para realizarlo, siéntate en una silla con los pies apoyados en el suelo y levanta los talones del suelo hasta que las puntas de los pies estén apoyadas en el suelo. Mantén la posición durante unos segundos antes de bajar los talones de nuevo.',
    '{"precauciones": ["Siéntate con la espalda recta y los pies planos en el suelo.", "Evita bloquear las rodillas en la posición elevada.", "Controla el movimiento para evitar movimientos bruscos."]}' , 
    30);

--soleo
    INSERT INTO ejercicios (nombre, descripcion, datos_cientificos, id_musculo) VALUES
    ('Elevaciones de Talones con las Rodillas Flexionadas', 
    'Este ejercicio es similar a las elevaciones de talones de pie, pero se realiza con las rodillas flexionadas. Para realizarlo, ponte de pie con las rodillas flexionadas y los pies apoyados en el suelo. Levanta los talones del suelo hasta que las puntas de los pies estén apoyadas en el suelo. Mantén la posición durante unos segundos antes de bajar los talones de nuevo.',
    '{"precauciones": ["Mantén las rodillas ligeramente flexionadas durante el ejercicio.", "Evita bloquear las rodillas en la posición elevada.", "Controla el movimiento para evitar movimientos bruscos."]}' , 
    31);

    INSERT INTO ejercicios (nombre, descripcion, datos_cientificos, id_musculo) VALUES
    ('Elevaciones de Talones con una Pierna y la Rodilla Flexionada', 
    'Este ejercicio es más desafiante que los anteriores y trabaja el sóleo de forma más unilateral. Para realizarlo, ponte de pie sobre una pierna con la otra pierna extendida hacia atrás y flexiona la rodilla de la pierna de apoyo. Levanta el talón del suelo hasta que la parte inferior de la pierna esté paralela al suelo. Mantén la posición durante unos segundos antes de bajar el talón de nuevo.',
    '{"precauciones": ["Mantén la espalda recta durante el ejercicio.", "Controla el movimiento para evitar movimientos bruscos.", "Asegúrate de realizar el ejercicio de forma simétrica con ambas piernas."]}' , 
    31);
