class MyClass {
    render(elementId: string, text: string) {
        var el: HTMLElement = document.getElementById(elementId);
        el.innerHTML = text;
    }
}

window.onload = () => {
    var myClass = new MyClass();
    myClass.render("content", "Hello World!");
}