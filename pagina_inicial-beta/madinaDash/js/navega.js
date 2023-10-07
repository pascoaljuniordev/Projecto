
document.querySelectorAll(".comun")[0].style.display = "block"
function muda(indice) {
    switch (indice) {
        case 0:
            document.querySelector(".infjak").innerHTML = "Informações da empresa"
            document.querySelectorAll(".comun")[1].style.display = "none"
            document.querySelectorAll(".comun")[2].style.display = "none"
            document.querySelectorAll(".comun")[indice].style.display = "block"
            break;

        case 1:
            document.querySelector(".infjak").innerHTML = "Projetos disponiveis"
            document.querySelectorAll(".comun")[0].style.display = "none"
            document.querySelectorAll(".comun")[2].style.display = "none"
            document.querySelectorAll(".comun")[indice].style.display = "block"
            break;

        case 2:
            document.querySelector(".infjak").innerHTML = "Andamento"
            document.querySelectorAll(".comun")[1].style.display = "none"
            document.querySelectorAll(".comun")[0].style.display = "none"
            document.querySelectorAll(".comun")[indice].style.display = "block"
            break;
    
        default:
            break;
    }
    
}