/* IEEE can be prevented from raising signals with fpsetmask(0) */
#undef MUST_DISABLE_FPMASK
/* IEEE math only works if SIGFPE gets actively set to IGNORE */
#undef MUST_DISABLE_SIGFPE
