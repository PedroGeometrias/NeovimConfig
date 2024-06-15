local M = {}

function M.search_and_replace()
  -- Prompt for the search term
  local search_term = vim.api.input("Find: ")
  if search_term == "" then return end

  -- Function to find all matches of the search term
  local function find_matches()
    local matches = {}
    local current_line = 1
    local total_lines = vim.api.line('$')

    while current_line <= total_lines do
      local line = vim.api.getline(current_line)
      local start_idx = 1

      while true do
        local start, finish = string.find(line, search_term, start_idx, true)
        if not start then break end
        table.insert(matches, { line = current_line, start = start, finish = finish, text = line })
        start_idx = finish + 1
      end

      current_line = current_line + 1
    end

    return matches
  end

  -- Display matches in a popup menu
  local matches = find_matches()
  if #matches == 0 then
    print("No matches found")
    return
  end

  local items = {}
  for _, match in ipairs(matches) do
    table.insert(items, match.line .. ":" .. match.start .. " - " .. match.text)
  end

  vim.ui.select(items, { prompt = "Select match to replace:" }, function(choice)
    if not choice then return end

    -- Get the selected match
    local selected_match = nil
    for _, match in ipairs(matches) do
      if choice == match.line .. ":" .. match.start .. " - " .. match.text then
        selected_match = match
        break
      end
    end

    if not selected_match then return end

    -- Prompt for the replacement term
    local replace_term = vim.fn.input("Replace with: ")
    if replace_term == "" then return end

    -- Perform the replacement
    local line = vim.fn.getline(selected_match.line)
    local new_line = line:sub(1, selected_match.start - 1) .. replace_term .. line:sub(selected_match.finish + 1)
    vim.fn.setline(selected_match.line, new_line)
  end)
end
return M

