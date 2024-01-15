--[[
    UsageTrackerShowAgg <aggregation_type> [start_date] [end_date]
        aggregation_type can be filepath, project, filetype
        start_date and end_date is in format YYYY-MM-DD, range for the aggregation
    UsageTrackerShowFilesLifetime
    UsageTrackerShowVisitLog [filepath]
        If no filepath is defined then all the logs are visible
   UsageTrackerShowDailyAggregation
    UsageTrackerShowDailyAggregationByFiletypes [filetypes]
        E.g.: :UsageTrackerShowDailyAggregationByFiletypes lua markdown jsx
    UsageTrackerShowDailyAggregationByProject [project_name]
    :UsageTrackerRemoveEntry <filepath> <entry timestamp> <exit timestamp>
        This is a utility function with which you can remove a wrongly logged item from the json
    :UsageTrackerClenup <threshold_in_min>
]]
   --

return {
    "gaborvecsei/usage-tracker.nvim",
    config = function()
        require('usage-tracker').setup({
            keep_eventlog_days = 14,
            cleanup_freq_days = 7,
            event_wait_period_in_sec = 5,
            inactivity_threshold_in_min = 5,
            inactivity_check_freq_in_sec = 5,
            verbose = 0,
        })
    end
}
