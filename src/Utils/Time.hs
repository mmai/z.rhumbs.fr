module Utils.Time ( frTimeLocale) where

import Data.Time (TimeLocale(..), utc)

frTimeLocale :: TimeLocale
frTimeLocale =  TimeLocale {
        wDays  = [("dimanche",   "dim"),  ("lundi",    "lun"),
                  ("mardi",  "mar"),  ("mercredi", "mer"),
                  ("jeudi", "jeu"),  ("vendredi", "ven"),
                  ("samedi", "sam")],

        months = [("janvier",   "jan"), ("février",  "fév"),
                  ("mars",     "mar"), ("avril",     "avr"),
                  ("Mai",       "mai"), ("juin",      "juin"),
                  ("juillet",   "juil"), ("août",    "août"),
                  ("septembre", "sept"), ("octobre",   "oct"),
                  ("novembre",  "nov"), ("décembre",  "dec")],

        -- intervals = [ ("année","années")
        --             , ("mois", "mois")
        --             , ("jour","jours")
        --             , ("heure","heures")
        --             , ("min","mins")
        --             , ("sec","secs")
        --             , ("usec","usecs")
        --             ],

        amPm = (" du matin", " de l'après-midi"),
        dateTimeFmt = "%a %e %b %Y, %H:%M:%S %Z",
        dateFmt = "%d-%m-%Y",
        timeFmt = "%H:%M:%S",
        time12Fmt = "%I:%M:%S %p",
        knownTimeZones = [utc]
        }
