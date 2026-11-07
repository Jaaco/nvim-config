-- Plugins still call vim.tbl_flatten; Nvim 0.11+ deprecates it (removed 0.13).
-- Shadow with the same behavior so startup stays quiet until deps migrate.
if vim.fn.has('nvim-0.11') == 1 then
  vim.tbl_flatten = function(t)
    local result = {}
    local function flatten(_t)
      for i = 1, #_t do
        local v = _t[i]
        if type(v) == 'table' then
          flatten(v)
        elseif v then
          table.insert(result, v)
        end
      end
    end
    flatten(t)
    return result
  end
end
