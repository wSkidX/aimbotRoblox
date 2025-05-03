local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/wSkidX/aimbotRoblox/refs/heads/master/uilib.lua"))()
print(lib) -- debug, pastikan tidak nil

-- Inisialisasi library (wajib)
lib:init()

-- Membuat window utama
local window = lib.NewWindow({
    title = "Contoh UI Sederhana",
    size = UDim2.new(0, 400, 0, 300),
    position = UDim2.new(0, 200, 0, 150)
})

-- Menambah tab
local tab = window:AddTab("Main")

-- Menambah section di tab (side 1 = kiri, 2 = kanan)
local section = tab:AddSection("Pengaturan", 1)

-- Menambah toggle
section:AddToggle({
    text = "Aktifkan Fitur",
    flag = "aktifkan_fitur",
    state = false,
    callback = function(state)
        print("Fitur aktif:", state)
    end
})

-- Menambah slider
section:AddSlider({
    text = "Volume",
    flag = "volume",
    min = 0,
    max = 100,
    value = 50,
    increment = 1,
    callback = function(val)
        print("Volume:", val)
    end
})

-- Menambah button
section:AddButton({
    text = "Klik Saya",
    callback = function()
        lib:SendNotification("Tombol diklik!", 2)
    end
})
