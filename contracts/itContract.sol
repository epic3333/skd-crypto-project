pragma solidity ^0.8.0;

contract itContract {
   string public name = 'Skadno'; //название имени нашего токена
   string public symbol = 'SKD'; //символ токена
   uint8 public decimals = 18; //количество десятичных знаков
   uint256 public totalSupply; //общее количество токенов, что будет вычислено позже

   // переменная для хранения балансов, связывает адрес с их балансами
   mapping (address => uint256 ) public balanceOf;

   // так же сразу же указываем событие для логирования операций перевода, трансфер
   event Transfer (address indexed from, address indexed to, uint256 value);

   // описание конструктора для начальной эмиссии токенов
   // конструктор выполняется один раз при развёртнывании контракта и создает начальное количество токенов присваивая их создателю контракта, т.е. нам.
   constructor(uint256 _initialSupply) {
      // определяем общее количество токенов с учетом десятичных знаков,
      totalSupply = _initialSupply + 10 ** uint256(decimals);
      // а так же присваиваем весь начальный выпуск контракту
      balanceOf[msg.sender] = totalSupply;
   }

   // создаем функцию для перевода токенов, эта функция позволяет отправлять токены с одного адреса на другой
   function transfer(address _to, uint256 _value) public {
      // она проверят что у отправителя достаточно токенов
      require(balanceOf[msg.sender] >= _value);
      // уменьшает его баланс
      balanceOf[msg.sender] -= _value;
      // увеличивает баланс получателя
      balanceOf[_to] += _value;
      // логирует операцию
      emit Transfer(msg.sender, _to, _value);
      return true;
   }
}