# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
SeguridadUsuario.create(id: 1,
                        username: 'admin',
                        nombres: 'administrador',
                        apellidos: 'blog',
                        email: 'cursorubyucem@gmail.com',
                        password: '12345678')

SeguridadUsuario.create(id: 2,
                        username: 'publicador',
                        nombres: 'publicador',
                        apellidos: 'blog',
                        email: 'publicador@gmail.com',
                        password: '12345678')

SeguridadUsuario.create(id: 3,
                        username: 'comun',
                        nombres: 'usuario',
                        apellidos: 'comun',
                        email: 'publicador@gmail.com',
                        password: '12345678')

Entrada.create(id: 1,
              fecha: Date.today,
              titulo: '14 cursos para aprender a crear videojuegos desde cero',
              texto: 'Los videojuegos son una industria multimillonaria que tan solo en 2016 generó'\
                      'casi 100 mil millones de dólares en todo el mundo. Sin duda un mercado a tener en cuenta'\
                      'en el mundo laboral, especialmente con la llegada de los juegos móviles y el enorme'\
                      'crecimiento que ha experimentado en los años recientes. Mucha gente quiere aprender sobre el tema, y'\
                      'existen incluso herramientas para ayudarte a crear juegos sin saber programar.'\
                      'Ahora que el nuevo año está aquí es buen momento para buscar algo nuevo que aprender.'\
                      'Puedes echar una mirada a cualquiera de estos 51 cursos universitarios y gratuitos que puedes'\
                      'comenzar en enero, o si lo que te interesa es esta temática en especial,'\
                      'y te gustaría aprender a crear videojuegos, estas de suerte, pues hoy en Genbeta'\
                      'hemos recopilado una lista con varios cursos al respecto.',
              visitas: 0,
              seguridad_usuario_id: 2)

Entrada.create(id: 2,
              fecha: (Date.today - 1.day),
              titulo: 'Tengo una impresora 3D en casa desde hace un año: este es el partido real que le estoy sacando',
              texto: 'Es muy posible que si estás pensando en comprarte una impresora 3D una de las dudas que se te puede '\
                      'plantear es hasta qué punto es un cacharro al que vayas a sacarle partido. Después de todo es una inversión '\
                      'considerable como para que acabe abandonada en un cajón tras los primeros meses. Como cuando tenemos dudas '\
                      'de este tipo lo primero que solemos hacer es preguntarle a alguien que ya tiene el dispositivo que nos interesa, '\
                      'hemos estado hablando con algunas personas que ya se compraron una impresora 3D en su día. Les hemos '\
                      'preguntado cual ha sido su experiencia, cuales son sus puntos fuertes y flojos, y cual ha sido el partido real que '\
                      'le han conseguido sacar.',
              visitas: 0,
              seguridad_usuario_id: 2)

Comentario.create(id: 1,
              entrada_id:1,
              fecha: Date.today,
              hora: Time.now,
              texto: 'Asi por cotillear, yo tambien me hice una prusa steel, y tambien con la cama grande y madre mia '\
                      'para el abs ya le puedo poner todos los bordes que quiera y echar litros de Nelly que el warping no me lo quita nadie.'\
                      '¿Que temperatura te coge la cama y cuanto tarda?'\
                      'La mia es una MK2, la tengo por debajo aislada con corcho y despues de media hora no pasa de 80 grados.',
              seguridad_usuario_id: 2)



Comentario.create(id: 2,
              entrada_id:1,
              fecha: Date.today,
              hora: Time.now,
              texto: 'Asi por cotillear, yo tambien me hice una prusa steel, y tambien con la cama grande y madre mia '\
                      'para el abs ya le puedo poner todos los bordes que quiera y echar litros de Nelly que el warping no me lo quita nadie.'\
                      '¿Que temperatura te coge la cama y cuanto tarda?'\
                      'La mia es una MK2, la tengo por debajo aislada con corcho y despues de media hora no pasa de 80 grados.',
              seguridad_usuario_id: 2)



Comentario.create(id: 3,
              entrada_id:1,
              fecha: Date.today,
              hora: Time.now,
              texto: 'Asi por cotillear, yo tambien me hice una prusa steel, y tambien con la cama grande y madre mia '\
                      'para el abs ya le puedo poner todos los bordes que quiera y echar litros de Nelly que el warping no me lo quita nadie.'\
                      '¿Que temperatura te coge la cama y cuanto tarda?'\
                      'La mia es una MK2, la tengo por debajo aislada con corcho y despues de media hora no pasa de 80 grados.',
              seguridad_usuario_id: 2)


Comentario.create(id: 4,
              entrada_id:2,
              fecha: Date.today,
              hora: Time.now,
              texto: 'Asi por cotillear, yo tambien me hice una prusa steel, y tambien con la cama grande y madre mia '\
                      'para el abs ya le puedo poner todos los bordes que quiera y echar litros de Nelly que el warping no me lo quita nadie.'\
                      '¿Que temperatura te coge la cama y cuanto tarda?'\
                      'La mia es una MK2, la tengo por debajo aislada con corcho y despues de media hora no pasa de 80 grados.',
              seguridad_usuario_id: 2)
