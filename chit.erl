-module(chit).
-export([calc/3]).

calc(Monthly, Month, Removal) ->
    sumwithout(Monthly, Month)-Removal*math:pow(Monthly, 21-Month).

sumwithout(Monthly, Month) ->
    Installments = installments(),
    lists:foldl(
        fun(I, A) ->
            { Mi, Ti } = I,            
            if
                Mi == Month -> (A+Ti)*Monthly;
                true -> (A+Ti)*Monthly
            end
        end,   
        0, 
        Installments
    ).

installments() -> 
    [ 
        { 1, 390000 },
        { 2, 396000 },
        { 3, 402000 },
        { 4, 408000 },
        { 5, 414000 },
        { 6, 420000 },
        { 7, 426000 },
        { 8, 432000 },
        { 9, 438000 },
        { 10, 444000 },
        { 11, 450000 },
        { 12, 456000 },
        { 13, 462000 },
        { 14, 468000 },
        { 15, 474000 },
        { 16, 480000 },
        { 17, 486000 },
        { 18, 492000 },
        { 19, 496000 },
        { 20, 500000 }
    ]. 
