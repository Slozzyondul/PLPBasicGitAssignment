const apikey = "5ac925e3ded58e3728555310955827f8";
const apiurl = "https://api.openweathermap.org/data/2.5/weather";


const locationInput = document.getElementById("locationInput");
const searchButton = document.getElementById("searchButton");
const locationElement = document.getElementById("location");
const temperatureElement = document.getElementById("temperature");
const descriptionElement = document.getElementById("description");


searchButton.addEventListener("click", () => {
    const location = locationInput.value;
    if (location) {
        fetchWeather(location);
    }
});

function fetchWeather(Location) {
    const url = `${apiurl}?q=${Location}&appid=${apikey}&units=metric`;

    fetch(url)
    .then((response) => response.json())
    .then((data) => {
        locationElement.textContent = data.name;
        temperatureElement.textContent = `${Math.round(data.main.temp)}°c`;
        descriptionElement.textContent = data.weather[0].description;
    })
    .catch((error) => {
        console.error("error fetching weather data:", error);
    });
}