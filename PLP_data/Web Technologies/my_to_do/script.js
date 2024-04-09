// Immediately Invoked Function Expression (IIFE) to encapsulate the code and prevent polluting the global scope
(() => {
    // State variables
    let toDoListArray = [];

    // UI variables
    const form = document.querySelector(".form");
    const input = form.querySelector(".form__input"); // Corrected the selector
    const ul = document.querySelector(".toDoList");

    // Event listeners
    form.addEventListener("submit", (e) => {
        e.preventDefault(); // Prevent default form submission behavior

        let itemId = String(Date.now()); // Generate unique ID for each to-do item
        let toDoItem = input.value; // Corrected to retrieve input value

        addItemToDOM(itemId, toDoItem);
        addItemToArray(itemId, toDoItem);

        input.value = ""; // Clear input field after adding the to-do item
    });

    ul.addEventListener("click", (e) => {
        let id = e.target.getAttribute("data-id");
        if (!id) return; // Return if the user clicked on something else
        removeItemFromDOM(id);
        removeItemFromArray(id);
    });

    // Functions
    function addItemToDOM(itemId, toDoItem) {
        const li = document.createElement("li");
        li.setAttribute("data-id", itemId);
        li.innerText = toDoItem;
        ul.appendChild(li);
    }

    function removeItemFromDOM(id) {
        var li = document.querySelector('[data-id="' + id + '"]');
        ul.removeChild(li);
    }

    function removeItemFromArray(id) {
        toDoListArray = toDoListArray.filter((item) => item.itemId !== id);
        console.log(toDoListArray);
    }
})();
