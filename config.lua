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
        ['help_place_or_stow'] = 'Drücke ~INPUT_PICKUP~ um das Paket abzulegen oder ~INPUT_DETONATE~ um es wegzupacken.',
        ['help_open_or_pickup'] = 'Drücke ~INPUT_PICKUP~ um das Paket zu öffnen oder ~INPUT_DETONATE~ um es aufzuheben.',
        ['notify_stowed'] = 'Paket wurde weggeräumt.',
        ['progress_loading'] = 'Paket wird geöffnet...'
    },
    ['en'] = {
        ['text'] = 'You got %s %s from the %s.',
        ['text_2'] = 'You have no ',
        ['point'] = '. ',
        ['help_place_or_stow'] = 'Press ~INPUT_PICKUP~ to place the package or ~INPUT_DETONATE~ to stow it.',
        ['help_open_or_pickup'] = 'Press ~INPUT_PICKUP~ to open the package or ~INPUT_DETONATE~ to pick it up.',
        ['notify_stowed'] = 'Package stowed.',
        ['progress_loading'] = 'Opening package...'
    },
    ['es'] = {
        ['text'] = 'Tienes %s %s del %s.',
        ['text_2'] = 'No tienes ',
        ['point'] = '. ',
        ['help_place_or_stow'] = 'Presiona ~INPUT_PICKUP~ para colocar el paquete o ~INPUT_DETONATE~ para guardarlo.',
        ['help_open_or_pickup'] = 'Presiona ~INPUT_PICKUP~ para abrir el paquete o ~INPUT_DETONATE~ para recogerlo.',
        ['notify_stowed'] = 'Paquete guardado.',
        ['progress_loading'] = 'Abriendo paquete...'
    },
    ['fr'] = {
        ['text'] = 'Tu as obtenu %s %s du %s.',
        ['text_2'] = "Tu n'as pas ",
        ['point'] = '. ',
        ['help_place_or_stow'] = 'Appuyez sur ~INPUT_PICKUP~ pour poser le paquet ou ~INPUT_DETONATE~ pour le ranger.',
        ['help_open_or_pickup'] = 'Appuyez sur ~INPUT_PICKUP~ pour ouvrir le paquet ou ~INPUT_DETONATE~ pour le ramasser.',
        ['notify_stowed'] = 'Paquet rangé.',
        ['progress_loading'] = 'Ouverture du paquet...'
    },
}