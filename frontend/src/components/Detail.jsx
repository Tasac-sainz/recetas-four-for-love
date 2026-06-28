import "react";
import PropTypes from "prop-types";

const Detail = ({ recipe }) => {
    return (
        <>
            <p>{recipe?.name}</p>
            <p>{recipe?.ingredients}</p>
            <ul>
                {recipe?.instructions?.map((step, index) => (
                    <li key={index}>{step}</li>
                ))}
            </ul>
        </>
    );
};

export default Detail;

Detail.propTypes = {
    recipe: PropTypes.object.isRequired,
};
