import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

export default buildModule("itContractModule", (m) => {
  const initialSupply = m.getParameter("initialSupply", 1000000);
  const myToken = m.contract("itContract", [initialSupply]);

  return { myToken };
});
