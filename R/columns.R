# Column name conversation
convo <- convo::read_convo("columns.yml")

# Columns
col_names <- c(
	"ID",
	paste0("ID", "_", c("HOSP", "MRN")),
	paste0("VAL", "_", "DEMO", "_", c("AGE")),
	paste0("IND", "_", "DEMO", "_", c("SEX")),
	paste0("CAT", "_", "DEMO", "_", c("RACE")),
	paste0("IND", "_", "HX", "_", c("HTN", "DM", "COPD", "CAD", "HF", "SICKLE", "SURGERY", "PREGNANCY", "DVT", "PE", "CKD", "LIVER", "CANCER", "AI", "COVID", "TRAVEL", "AC")),
	paste0("CAT", "_", "HX", "_", c("AC")),
	paste0("CAT", "_", "HX", "_", c("SMK")),
	paste0("CAT", "_", "MED", "_", c("HORMONE")),
	paste0("IND", "_", "SX", "_", c("HEMOPTYSIS", "CHESTPAIN", "DYSPNEA", "SYNCOPE", "LEGPAIN", "EDEMA", "AMS")),
	paste0("VAL", "_", "VS", "_", c("HR", "SBP", "DBP", "RR", "TEMP", "SAO2")),
	paste0("VAL", "_", "LAB", "_", c("TROP", "BNP", "DDIMER", "CR", "PT", "INR")),
	paste0("IND", "_", "TEST", "_", c("ECG", "CTPE", "DOPPLER", "POCUS", "TTE")),
	paste0("CAT", "_", "TEST", "_", c("ECG", "CTPE", "DOPPLER", "POCUS", "TTE")),
	paste0("TM", "_", "TEST", "_", c("ECG", "CTPE", "DOPPLER", "POCUS", "TTE")),
	paste0("TM", "_", "HOSP", "_", c("ADMIT", "DC")),
	paste0("DT", "_", "HOSP", "_", c("ADMIT", "DC")),
	paste0("CD", "_", "RISK", "_", c("WELLS", "PERC", "GENEVA", "4PEPS", "PESI", "SPESI")),
	paste0("IND", "_", "MED", "_", c("HEP", "LMWH", "DOAC", "VKA")),
	paste0("CAT", "_", "MED", "_", c("DOAC")),
	paste0("IND", "_", c("TX")),
	paste0("IND", "_", "TX", "_", c("AC", "MECHANICAL", "CDT", "TPA")),
	paste0("CAT", "_", c("TX")),
	paste0("TM", "_", c("DX", "TX")),
	paste0("CAT", "_", "DX")
)

# Create template for CSV
setNames(data.frame(matrix(ncol = length(col_names), nrow = 0)), col_names) |>
	readr::write_csv("data_template.csv")
