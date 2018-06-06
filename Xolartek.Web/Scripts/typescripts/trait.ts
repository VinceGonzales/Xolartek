export interface ITrait {
    id: number;
    description: string;
}
export interface ITraitImpact extends ITrait {
    impact: string;
}
export default class TraitImpact implements ITraitImpact {
    id: number;
    description: string;
    impact: string;
}