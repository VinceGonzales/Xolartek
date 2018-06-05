var MyClass = /** @class */ (function () {
    function MyClass() {
    }
    MyClass.prototype.render = function (elementId, text) {
        var el = document.getElementById(elementId);
        el.innerHTML = "" + text;
    };
    MyClass.prototype.getInputValue = function (elementID) {
        var inputElement = document.getElementById(elementID);
        if (inputElement.value === '') {
            return undefined;
        }
        else {
            return inputElement.value;
        }
    };
    return MyClass;
}());
window.onload = function () {
    var myClass = new MyClass();
    myClass.render("content", "Hello World!");
};
//# sourceMappingURL=app.js.map