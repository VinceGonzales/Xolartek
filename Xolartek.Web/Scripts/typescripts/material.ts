interface IMaterial {
    id: number;
    description: string;
    picturesource: string;
}
interface IMaterialCost extends IMaterial {
    cost: string;
}
class MaterialCost implements IMaterialCost {
    id: number;
    description: string;
    picturesource: string;
    cost: string;
}