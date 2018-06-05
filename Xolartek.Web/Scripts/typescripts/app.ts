class MyClass {
    render(elementId: string, text?: string) {
        let el: HTMLElement | null = document.getElementById(elementId);
        el!.innerHTML = `${text}`;
    }
    getInputValue(elementID: string): string | undefined {
        let inputElement: HTMLInputElement = <HTMLInputElement>document.getElementById(elementID);
        if (inputElement.value === '') {
            return undefined;
        } else {
            return inputElement.value;
        }
    }
}

window.onload = () => {
    var myClass = new MyClass();
    myClass.render("content", "Hello World!");
}