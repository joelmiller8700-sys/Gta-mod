#pragma once

#define MAX_MENU_ITEMS 10

struct MenuItem {
    const char *name;
    int actionId;
};

class ModMenu {
public:
    bool isOpen;
    int currentIdx;
    int currentCategory;

    void Init();
    void Toggle();
    void NavigateUp();
    void NavigateDown();
    void SelectItem();
    void Back();
    void Draw();
};
