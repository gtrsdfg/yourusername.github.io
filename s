async function loadGames() {
    const response = await fetch('games.json');
    const games = await response.json();

    const gameList = document.getElementById("gameList");
    const frame = document.getElementById("gameFrame");

    games.forEach(game => {
        const button = document.createElement("button");
        button.textContent = game.name;
        button.className = "game-btn";

        button.onclick = () => {
            frame.src = game.url;
        };

        gameList.appendChild(button);
    });
}

loadGames();
