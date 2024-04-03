//Js code in the browser uses an event-driven programming pattern
//when a specific DOM event happens in the browser, a piece of code wil be executed as a responsible action+

//WHAT ARE DOM EVENTS AND WHY ARE THEY USEFUL?
//DOM events = signals exposed by the browser that you can use to run a piece of Js code
//they occur during clicking a button or typing letters into an input field

/*
As a web developer, you can instruct JavaScript to listen for a specific event and do something in response to that event.
For example:
When a button is clicked, do change the text of a paragraph.
When a form is submitted, do a POST request using the Fetch API.
*/

//how to listen to DOM events
//attach an event listener to an element by using the addEventListener() method
//accepts two parameters (the event type to listen to, a function to run when the event is triggered)

//Element.addEventListener(type, function);

//we attach an event listener to a button
//first specify the type of event to listen to, which is a click event in this case
//