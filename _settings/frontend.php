<?php
    require_once('class/AuroraUtil.php');
    $settings_data = AuroraUtil::getSettingsToSmarty();

    $this->getEngine()->addVariables($settings_data);
    
    $discord_server = AuroraUtil::getDsServer($settings_data['DISCORDID']);
    $this->_cache->store('ds_status_ping', $discord_server, 60);
    $this->getEngine()->addVariables([
        'DISCORD_SERVER' => $discord_server,
    ]);
