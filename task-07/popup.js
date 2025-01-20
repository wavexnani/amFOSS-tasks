
const cityInput = document. getElementById("city");
const searchButton= document.getElementById("search");

const defaultCity = "kadapa";


searchButton.addEventListener("click" ,function () {
    const cityName = cityInput.value.trim(); 
    
    if (cityName==="") {
        alert("Please enter a city name.");
        return;
    }

    
    

    
    fetchWeatherData(cityName);
});


function fetchWeatherData(cityName) {
    fetch(`https://api.openweathermap.org/data/2.5/weather?q=${cityName}&appid=&units=metric`)
    .then((response) => {
        if (!response.ok) {
            throw new Error("City not found.");
        }
        return response.json();
    })
    .then((data) => {
        document .getElementById("place").textContent =data.name;
        document.getElementById("temp").textContent = `${data.main.temp}°C`;
        document.getElementById("condition").textContent = data.weather[0].main;
        document.body.style.backgroundImage = "url('baa.png')";
    })
    .catch((error) => {
        console.error("Error:", error);
        document.body.style.backgroundImage = "url('error.png')";
        document.getElementById("temp").textContent = "ERROR";
            document.getElementById("condition").textContent = "Error";
                
                document .getElementById("place").textContent ="No City Found";
    });
}


document .addEventListener("DOMContentLoaded",function() {
    fetchWeatherData(defaultCity);
    document.getElementById("place").textContent = defaultCity;
    
});

