interface ITrait {
    id: number;
    description: string;
}
interface ITraitImpact extends ITrait {
    impact: string;
}
class TraitImpact implements ITraitImpact {
    id: number;
    description: string;
    impact: string;
}

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
    let myClass: MyClass = new MyClass();
    myClass.render("content", "Hello World!");
    let Damage: TraitImpact = new TraitImpact();
    Damage.id = 1;
    Damage.description = "Damage";
    Damage.impact = "+20%";
}