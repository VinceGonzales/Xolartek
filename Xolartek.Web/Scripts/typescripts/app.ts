import TraitImpact from './trait';
/// <reference path="material.ts" />

class ViewModel {
    updateTraits(...argArray: TraitImpact[]) : TraitImpact[] {
        if (argArray.length > 0) {
            for (var i = 0; i < argArray.length; i++) {
                //update records
            }
        }

        return new Array<TraitImpact>();
    }

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
    let viewModel: ViewModel = new ViewModel();
    viewModel.render("content", "Hello World!");

    let Damage: TraitImpact = new TraitImpact();
    Damage.id = 1;
    Damage.description = "Damage";
    Damage.impact = "+20%";
}