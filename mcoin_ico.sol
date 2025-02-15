// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

contract mcoin_ico{

    // introducing the max of mcoin available for sale
    uint public max_mcoins = 1000000;


    // Introduction the USD to mcoin conversion rate
    uint public usd_to_mcoins = 1000;


    // Introducing the total no of mcoins that had be bought by the investers
    uint public total_mcoins_bought = 0;


    //mapping from the invester address to its equity in mcoins and usd
    mapping(address => uint)equity_mcoins;
    mapping(address => uint)equity_usd;


    //checking if any mcoins left
    modifier can_buy_mcoins(uint usd_invested){
        require(usd_invested *usd_to_mcoins + total_mcoins_bought <= max_mcoins);
        _;
    }


    //getting the equity in mcoins of an invester
    function equity_in_mcoins(address investor)external view returns (uint){
        return equity_mcoins[investor];
    }


    //getting the equity in usd of an invester
    function equity_in_usd(address investor)external view returns (uint){
        return equity_usd[investor];
    }

    //Buying mcoins
    function buy_mcoins(address investor, uint usd_invested)external
    can_buy_mcoins(usd_invested){
        uint mcoins_bought = usd_invested*usd_to_mcoins;
        equity_mcoins[investor] +=mcoins_bought;
        equity_usd[investor] = equity_mcoins[investor]/1000;
        total_mcoins_bought +=mcoins_bought;
    }

    //selling mcoins
    function sell_mcoins(address investor, uint mcoins_sold)external{
        equity_mcoins[investor] -=mcoins_sold;
        equity_usd[investor] = equity_mcoins[investor]/1000;
        total_mcoins_bought -= mcoins_sold;
    }
}