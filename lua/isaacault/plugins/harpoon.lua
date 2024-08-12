return {
	{
	    "ThePrimeagen/harpoon",
	    branch = "harpoon2",
	    dependencies = { 
		    "nvim-lua/plenary.nvim",
            -- Use Telescope for quick menu
		    -- "nvim-telescope/telescope.nvim",
	    },
	    keys = {
		{
			"<leader>a", 
			function()
				require("harpoon"):list():add() 
			end,
			desc = "Add file"
		},
        {
			"<C-e>",
			function()
				local harpoon = require("harpoon")
                harpoon.ui:toggle_quick_menu(harpoon:list())
			end,
			desc = "See files"
        },
        -- Use Telescope for quick menu
		-- {
		-- 	"<C-e>",
		-- 	function()
		-- 		local conf = require("telescope.config").values
		-- 		local harpoon = require("harpoon")
		-- 		local function toggle_telescope(harpoon_files)
		-- 		    local file_paths = {}
		-- 		    for _, item in ipairs(harpoon_files.items) do
		-- 			table.insert(file_paths, item.value)
		-- 		    end
		--
		-- 		    require("telescope.pickers").new({}, {
		-- 			prompt_title = "Harpoon",
		--                   -- Open in normal mode so we can use j,k to quickly move 
		--                   -- between most recently used.
		-- 			initial_mode = "normal",  
		-- 			finder = require("telescope.finders").new_table({
		-- 			    results = file_paths,
		-- 			}),
		-- 			previewer = conf.file_previewer({}),
		-- 			sorter = conf.generic_sorter({}),
		-- 		    }):find()
		-- 		end
		-- 		toggle_telescope(harpoon:list())
		-- 	end,
		-- 	desc = "See files"
		-- },
		{
			"<C-j>", 
			function()
				require("harpoon"):list():next() 
			end,
			desc = "Next file"
		},
		{
			"<C-k>", 
			function()
				require("harpoon"):list():prev() 
			end,
			desc = "Previous file"
		},
	    }
	},
}
