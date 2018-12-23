pragma solidity ^0.4.25;

contract TicketDepot {
   struct Event{
        address owner;
        uint64 ticketPrice;
        uint16 ticketsRemaining;
        mapping(uint16 => address) attendees;
    }

   
   uint16 numEvents;
   address owner;
   uint64 transactionFee;
   mapping(uint16 => Event) events;

   function ticketDepot(uint64 _transactionFee) {
       // Конструктор конктракта. Устанавливает transactionFee и owner
       owner = msg.sender;
       transactionFee = _transactionFee;
   }
   
   function createEvent(uint64 _ticketPrice, uint16 _ticketsAvailable) returns (uint16 eventID) {
       // Создает мероприятие с _ticketsAvailable билетами по цене _ticketPrice, а также устанавливает owner мероприятия
   }
   
   function buyNewTicket(uint16 _eventID, address _attendee) payable returns (uint16 ticketID) {
       // Позволяет купить билет: если послано достаточно денег, чтобы оплатить комиссию владельца контракта + сам билет,
       // то _attendee в attendees соответствующего event. Уменьшает количество доступных билетов.
       // Сразу переводит деньги owner мероприятия.
   }
