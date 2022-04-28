CREATE(luis:person {name: "Luis"})
CREATE(felipe:person {name: "Felipe"})
CREATE(jose:person {name: "Jose"})
CREATE(fernando:person {name: "Fernando"})
CREATE(carlos:person {name: "Carlos"})
CREATE(millie:person {name: "Millie"})
CREATE(firulais:person {name: "Firulais"})
CREATE(gaby:person {name: "Gaby"})
CREATE(ernesto:person {name: "Ernesto"})
CREATE(dave:person {name: "Dave"})
CREATE(julia:person {name: "Julia"})
CREATE(umg:universidad {name: "UMG"})
CREATE(sistemas:facultad {name: "Sistemas"})
CREATE(derecho:facultad {name: "Derecho"})
CREATE(medicina:facultad {name: "Medicina"})
CREATE(clase_A:clase_seccion {name: "A"})
CREATE(clase_B:clase_seccion {name: "B"})
CREATE (luis)-[:STUDENT]->(umg)
CREATE (felipe)-[:STUDENT]->(umg)
CREATE (jose)-[:STUDENT]->(umg)
CREATE (fernando)-[:STUDENT]->(umg)
CREATE (carlos)-[:STUDENT]->(umg)
CREATE (millie)-[:STUDENT]->(umg)
CREATE (firulais)-[:STUDENT]->(umg)
CREATE (gaby)-[:STUDENT]->(umg)
CREATE (ernesto)-[:STUDENT]->(umg)
CREATE (dave)-[:STUDENT]->(umg)
CREATE (julia)-[:STUDENT]->(umg)
CREATE (luis)-[:CURSANTE]->(sistemas)
CREATE (felipe)-[:CURSANTE]->(sistemas)
CREATE (jose)-[:CURSANTE]->(sistemas)
CREATE (fernando)-[:CURSANTE]->(sistemas)
CREATE (carlos)-[:CURSANTE]->(medicina)
CREATE (millie)-[:CURSANTE]->(medicina)
CREATE (firulais)-[:CURSANTE]->(derecho)
CREATE (gaby)-[:CURSANTE]->(medicina)
CREATE (ernesto)-[:CURSANTE]->(derecho)
CREATE (dave)-[:CURSANTE]->(medicina)
CREATE (julia)-[:CURSANTE]->(derecho)
CREATE (luis)-[:Asiste]->(clase_A)
CREATE (felipe)-[:Asiste]->(clase_A)
CREATE (jose)-[:Asiste]->(clase_B)
CREATE (fernando)-[:Asiste]->(clase_A)
CREATE (carlos)-[:Asiste]->(clase_B)
CREATE (millie)-[:Asiste]->(clase_B)
CREATE (firulais)-[:Asiste]->(clase_A)
CREATE (gaby)-[:Asiste]->(clase_A)
CREATE (ernesto)-[:Asiste]->(clase_B)
CREATE (dave)-[:Asiste]->(clase_A)
CREATE (julia)-[:Asiste]->(clase_B)
CREATE (luis)-[:FRIENDS]->(ernesto)
CREATE (felipe)-[:FRIENDS]->(firulais)
CREATE (jose)-[:FRIENDS]->(dave)
CREATE (fernando)-[:FRIENDS]->(gaby)
CREATE (carlos)-[:FRIENDS]->(millie)
CREATE (millie)-[:FRIENDS]->(luis)
CREATE (firulais)-[:FRIENDS]->(jose)
CREATE (gaby)-[:FRIENDS]->(felipe)
CREATE (ernesto)-[:FRIENDS]->(firulais)
CREATE (dave)-[:FRIENDS]->(gaby)
CREATE (julia)-[:FRIENDS]->(millie)

//mostar todo
MATCH (n) RETURN n 

//mostrar y añadir un atributo como la edad
MATCH (luis:person {name: "Luis"})
SET luis.birtday = date("2022")
RETURN luis

//modificar uno de la base de datos
MATCH (carlos:person {name: "Carlos"})
SET carlos.name = "Julio"
RETURN carlos

//borrar uno de ellos
MATCH (julia:person {name: "Julia"})
DETACH DELETE julia

//crear extra
MATCH (oscar:person), (umg:universidad)
CREATE (oscar)-[:STUDENT]->(umg)


//insert
MATCH (oscar:person), (umg:universidad)
WHERE oscar.name = "Oscar" AND umg.name = "UMG"
CREATE (oscar)-[:STUDENT]->(umg)

MATCH (oscar: person {name: "Oscar"})
DETACH DELETE oscar