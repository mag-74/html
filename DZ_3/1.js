function valueRecalculation(degreesCelsius) {
    const degreesFahrenheit = (9 / 5) * degreesCelsius + 32
    const degreesFahrenheitToFixed = degreesFahrenheit.toFixed(2)
    return degreesFahrenheitToFixed
}
const degreesCelsius = parseFloat(prompt('Введите значение температуры по Фаренгейту: '));
alert(`Цельсий: ${degreesCelsius}, Фаренгейт: ${valueRecalculation(degreesCelsius)}`)