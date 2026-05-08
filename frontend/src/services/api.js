const API_URL = "https://recetas-four-for-love.onrender.com/";

export const getRecipes = () => {
    return fetch(`${API_URL}recipes`, {
        headers: {
            Authorization: localStorage.getItem("token"),
        },
    })
        .then((response) => response.json())
        .then((data) => {
            const cleanData = data.map((item) => {
                return {
                    id: item.id,
                    name: item.name,
                };
            });
            return cleanData;
        })
        .catch((error) => console.log(error));
};

export const getRecipe = (id) => {
    return fetch(`${API_URL}recipe/${id}`, {
        headers: {
            Authorization: localStorage.getItem("token"),
        },
    })
        .then((response) => response.json())
        .then((data) => {
            const cleanData = data.map((item) => {
                return {
                    id: item.id,
                    name: item.name,
                    ingredients: item.ingredients,
                    instructions: item.instructions,
                };
            });
            return cleanData[0];
        })
        .catch((error) => console.log(error));
};

export const login = ({ user_name, password }) => {
    return fetch(`${API_URL}login`, {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
        },
        body: JSON.stringify({ user_name, password }),
    }).then((response) => response.json());
};

export const signup = ({ user_name, email, password }) => {
    return fetch(`${API_URL}signup`, {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
        },
        body: JSON.stringify({ user_name, email, password }),
    }).then((response) => response.json());
};

export const addRecipe = ({ name, ingredients, instructions }) => {
    return fetch(`${API_URL}new-recipe`, {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
            Authorization: localStorage.getItem("token"),
        },
        body: JSON.stringify({ name, ingredients, instructions }),
    });
};
