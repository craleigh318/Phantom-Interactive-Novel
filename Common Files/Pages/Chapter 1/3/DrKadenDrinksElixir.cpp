//
//  DrKadenDrinksElixir.cpp
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/28/05.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#include "DrKadenDrinksElixir.h"

DrKadenDrinksElixir::DrKadenDrinksElixir()
{
}

std::shared_ptr<std::string> DrKadenDrinksElixir::GetImageName()
{
    return std::make_shared<std::string>("Dr-Kaden-Drinks-Elixir.png");
}

std::string DrKadenDrinksElixir::GetText()
{
    return "I've made an elixir, a mixturing containing blood from one of these gods.";
}

void DrKadenDrinksElixir::Continue(IStoryView* view)
{
    view->ShowPage(std::make_shared<DrKadenWalkingAmongCitizens>());
}