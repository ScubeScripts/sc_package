-- ░██████╗░█████╗░██╗░░░██╗██████╗░███████╗░██████╗░█████╗░██████╗░██╗██████╗░████████╗░██████╗
-- ██╔════╝██╔══██╗██║░░░██║██╔══██╗██╔════╝██╔════╝██╔══██╗██╔══██╗██║██╔══██╗╚══██╔══╝██╔════╝
-- ╚█████╗░██║░░╚═╝██║░░░██║██████╦╝█████╗░░╚█████╗░██║░░╚═╝██████╔╝██║██████╔╝░░░██║░░░╚█████╗░
-- ░╚═══██╗██║░░██╗██║░░░██║██╔══██╗██╔══╝░░░╚═══██╗██║░░██╗██╔══██╗██║██╔═══╝░░░░██║░░░░╚═══██╗
-- ██████╔╝╚█████╔╝╚██████╔╝██████╦╝███████╗██████╔╝╚█████╔╝██║░░██║██║██║░░░░░░░░██║░░░██████╔╝
-- ╚═════╝░░╚════╝░░╚═════╝░╚═════╝░╚══════╝╚═════╝░░╚════╝░╚═╝░░╚═╝╚═╝╚═╝░░░░░░░░╚═╝░░░╚═════╝░

Config = {}

Config.Locale = 'en'

Config.Delay = 5000 -- Time it takes to open the package

Config.Items = {
    ["package1"] = {
        name = "Package 1",
        items = {
            { name = "bread", count = 2 },
            { name = "water", count = 1 }
        }
    },
    ["package2"] = {
        name = "Package 2",
        items = {
            { name = "sandwich", count = 3 },
            { name = "cola", count = 2 }
        }
    },
    ["package3"] = {
        name = "Package 3",
        items = {
            { name = "chips", count = 5 },
            { name = "juice", count = 4 }
        }
    },
    ["package4"] = {
        name = "Package 4",
        items = {
            { name = "candy", count = 10 },
            { name = "soda", count = 8 }
        }
    },
    ["package5"] = {
        name = "Package 5",
        items = {
            { name = "cake", count = 1 },
            { name = "coffee", count = 2 }
        }
    }
    -- ["itemname"] = {
    --     name = "Package Name",
    --     items = {
    --         { name = "cake", count = 1 },
    --         { name = "coffee", count = 2 }
    --     }
    -- }
}

Translation = {
    ['de'] = {
        ['text'] = 'Du hast %s %s aus der %s bekommen.',
        ['text_2'] = 'Du hast keine ',
        ['point'] = '. ',
    },
    ['en'] = {
        ['text'] = 'You got %s %s from the %s.',
        ['text_2'] = 'You have no ',
        ['point'] = '. ',
    },
    ['es'] = {
        ['text'] = 'Tienes %s %s del %s.',
        ['text_2'] = 'No tienes ',
        ['point'] = '. ',
    },
    ['fr'] = {
        ['text'] = 'Tu as obtenu %s %s du %s.',
        ['text_2'] = "Tu n'as pas ",
        ['point'] = '. ',
    },
}