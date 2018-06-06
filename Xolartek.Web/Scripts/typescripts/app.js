"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var trait_1 = require("./trait");
/// <reference path="material.ts" />
var ViewModel = /** @class */ (function () {
    function ViewModel() {
    }
    ViewModel.prototype.updateTraits = function () {
        var argArray = [];
        for (var _i = 0; _i < arguments.length; _i++) {
            argArray[_i] = arguments[_i];
        }
        if (argArray.length > 0) {
            for (var i = 0; i < argArray.length; i++) {
                //update records
            }
        }
        return new Array();
    };
    ViewModel.prototype.render = function (elementId, text) {
        var el = document.getElementById(elementId);
        el.innerHTML = "" + text;
    };
    ViewModel.prototype.getInputValue = function (elementID) {
        var inputElement = document.getElementById(elementID);
        if (inputElement.value === '') {
            return undefined;
        }
        else {
            return inputElement.value;
        }
    };
    return ViewModel;
}());
window.onload = function () {
    var viewModel = new ViewModel();
    viewModel.render("content", "Hello World!");
    var Damage = new trait_1.default();
    Damage.id = 1;
    Damage.description = "Damage";
    Damage.impact = "+20%";
};
//# sourceMappingURL=app.js.map