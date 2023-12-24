
module("luci.controller.poweroffdevice", package.seeall)


function index() 
        entry({"admin","system","poweroffdevice"},template("poweroffdevice/poweroffdevice"), _("RebootEth0"), 92)
	entry({"admin","system","poweroffdevice","call"},post("action_rebooteth0"))
end

function action_rebooteth0()
      luci.sys.exec("ifconfig eth0 down" )
      luci.sys.exec("ifconfig eth0 up" )
end
