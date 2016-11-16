<?xml version="1.0" encoding="UTF-8"?>
<project name="异形往哪儿跑" version="2.0" showFps="0" openLog="1" fps="60" scaleMode="0" orientaion="0" renderMode="0" bgColor="0" stagewidth="800" stageheight="1000" startscenename="MainScene">
  <objects>
    <type uiname="Ajax" uitype="AIAjax"/>
    <type uiname="System" uitype="AISystem"/>
    <type uiname="Touch" uitype="AITouch"/>
    <type uiname="WebSocket" uitype="AIWebSocket"/>
    <type uiname="WebStorage" uitype="AIWebStorage"/>
    <type uiname="Function" uitype="AIFunction"/>
    <type uiname="Global" uitype="Global"/>
    <type uiname="Browser" uitype="AIBrowser"/>
    <type uiname="Keyboard" uitype="AIKeyboard"/>
    <type uiname="WeiXin" uitype="AIWeiXin"/>
    <type uiname="MainScene" uitype="Scene"/>
    <type uiname="主层" uitype="Layer"/>
    <type uiname="bullet" uitype="AISprite"/>
    <type uiname="Sun_center" uitype="AISprite"/>
    <type uiname="buttonspeed" uitype="AIButton"/>
    <type uiname="buttonturn" uitype="AIButton"/>
    <type uiname="boss" uitype="AISprite"/>
    <type uiname="plane" uitype="AIMovieClip"/>
    <type uiname="BG" uitype="AISprite"/>
    <type uiname="背景层" uitype="Layer"/>
    <type uiname="emeny" uitype="AIMovieClip"/>
    <type uiname="分数" uitype="AIBitmapText"/>
    <type uiname="AISprite2866" uitype="AISprite"/>
    <type uiname="AISprite2868" uitype="AISprite"/>
    <type uiname="blood" uitype="AISprite"/>
    <type uiname="AISprite2872" uitype="AISprite"/>
    <type uiname="gameover" uitype="AISprite"/>
    <type uiname="reset" uitype="AIButton"/>
    <type uiname="enemyb" uitype="AIMovieClip"/>
    <type uiname="AISprite2885" uitype="AISprite"/>
  </objects>
  <eventsheet>
    <sheet name="MainSceneEventSheet" targetscene="MainScene">
      <event name="飞机固定" enabled="true" relation="1" triggerOnceWhileTrue="false">
        <description/>
        <conditons>
          <condition type="OnCreatedEvent" targetuiname="plane" targetuitype="AIMovieClip" invert="false" operatorType="0" isConflict="false" enabled="true">
            <properties/>
          </condition>
        </conditons>
        <actions>
          <action type="pin" targetuiname="plane" targetuitype="AIMovieClip" isConflict="false" behaviorname="别针行为" behavior="PinBehavior" enabled="true">
            <properties>
              <p key="1" uiname="Sun_center" uitype="AISprite" valuetype="string" edittype="instance">
                <description>%E8%A6%81%E5%9B%BA%E5%AE%9A%E7%9A%84%E7%9B%AE%E6%A0%87%E5%AF%B9%E8%B1%A1%E3%80%82</description>
              </p>
              <p key="2" value="0" valuetype="any">
                <description>%E5%AE%9E%E4%BE%8B%E5%9B%BA%E5%AE%9A%E5%88%B0%E7%9B%AE%E6%A0%87%E7%9A%84%E6%A8%A1%E5%BC%8F%E3%80%82</description>
              </p>
            </properties>
          </action>
        </actions>
        <subevent/>
      </event>
      <event name="飞船发射子弹" enabled="true" relation="1" triggerOnceWhileTrue="false">
        <description/>
        <conditons>
          <condition type="EveryXSecondsEvent" targetuiname="System" targetuitype="AISystem" invert="false" operatorType="0" isConflict="false" enabled="true">
            <properties>
              <p key="interval" value="0.1" valuetype="any">
                <description>%E6%97%B6%E9%97%B4%E9%97%B4%E9%9A%94%E3%80%82%EF%BC%88%E5%8D%95%E4%BD%8D%EF%BC%9A%E7%A7%92%EF%BC%89</description>
              </p>
            </properties>
          </condition>
        </conditons>
        <actions>
          <action type="spawn" targetuiname="plane" targetuitype="AIMovieClip" isConflict="false" enabled="true">
            <properties>
              <p key="10" uiname="bullet" uitype="AISprite" valuetype="string" edittype="instance">
                <description>Specify%20the%20object%20that%20will%20be%20created.</description>
              </p>
              <p key="11" value="0" valuetype="any">
                <description>The%20layer%20number%20to%20create%20the%20object%20on.</description>
              </p>
              <p key="12" value="25" valuetype="any">
                <description>X%20co-ordinate%20offset%20from%20the%20target%20object%20to%20place%20the%20spawn%20object.</description>
              </p>
              <p key="13" value="0" valuetype="any">
                <description>Y%20co-ordinate%20offset%20from%20the%20target%20object%20to%20place%20the%20spawn%20object.</description>
              </p>
              <p key="14" value="1" valuetype="any">
                <description>Set%20the%20spawn%20object%20angle%20toward%20the%20target%20object%20angle.</description>
              </p>
            </properties>
          </action>
        </actions>
        <subevent/>
      </event>
      <event name="子弹击中星球" enabled="true" relation="1" triggerOnceWhileTrue="false">
        <description/>
        <conditons>
          <condition type="B_Bullet_compareDistanceTravelledEvent" targetuiname="bullet" targetuitype="AISprite" invert="false" operatorType="0" behaviorname="子弹行为" behavior="BulletBehaivor" isConflict="false" enabled="true">
            <properties>
              <p key="operationType" value="greaterOrEqual" valuetype="any">
                <description>%E9%80%89%E6%8B%A9%E6%AF%94%E8%BE%83%E8%BF%90%E7%AE%97%E7%AC%A6%E3%80%82</description>
              </p>
              <p key="distance" value="210" valuetype="any">
                <description>%E4%B8%8E%E5%BD%93%E5%89%8D%E8%BF%90%E8%A1%8C%E8%B7%9D%E7%A6%BB%E6%AF%94%E8%BE%83%E7%9A%84%E5%80%BC%E3%80%82%EF%BC%88%E5%8D%95%E4%BD%8D%EF%BC%9A%E5%83%8F%E7%B4%A0%EF%BC%89</description>
              </p>
            </properties>
          </condition>
        </conditons>
        <actions>
          <action type="destory" targetuiname="bullet" targetuitype="AISprite" isConflict="false" enabled="true">
            <properties/>
          </action>
        </actions>
        <subevent/>
      </event>
      <event name="飞机加速" enabled="true" relation="1" triggerOnceWhileTrue="false">
        <description/>
        <conditons>
          <condition type="IsButtonDownEvent" targetuiname="buttonspeed" targetuitype="AIButton" invert="false" operatorType="0" isConflict="false" enabled="true">
            <properties/>
          </condition>
        </conditons>
        <actions>
          <action type="setValue" targetuiname="plane" targetuitype="AIMovieClip" isConflict="false" enabled="true">
            <properties>
              <p key="10" propertyname="speed" valuetype="string" edittype="variable">
                <description>Choose%20the%20object%20variable%20to%20change.</description>
              </p>
              <p key="11" value="200" valuetype="any">
                <description>Value%20to%20store%20in%20this%20object%20variable.</description>
              </p>
            </properties>
          </action>
          <action type="destory" targetuiname="bullet" targetuitype="AISprite" isConflict="false" enabled="true">
            <properties/>
          </action>
        </actions>
        <subevent/>
      </event>
      <event name="null" enabled="true" relation="1" triggerOnceWhileTrue="false">
        <description>null</description>
        <conditons/>
        <actions/>
        <subevent/>
      </event>
      <event name="飞机加速结束" enabled="true" relation="1" triggerOnceWhileTrue="false">
        <description/>
        <conditons>
          <condition type="OnButtonEndEvent" targetuiname="buttonspeed" targetuitype="AIButton" invert="false" operatorType="0" isConflict="false" enabled="true">
            <properties/>
          </condition>
        </conditons>
        <actions>
          <action type="setValue" targetuiname="plane" targetuitype="AIMovieClip" isConflict="false" enabled="true">
            <properties>
              <p key="10" propertyname="speed" valuetype="string" edittype="variable">
                <description>Choose%20the%20object%20variable%20to%20change.</description>
              </p>
              <p key="11" value="50" valuetype="any">
                <description>Value%20to%20store%20in%20this%20object%20variable.</description>
              </p>
            </properties>
          </action>
        </actions>
        <subevent/>
      </event>
      <event name="改变旋转方向" enabled="true" relation="1" triggerOnceWhileTrue="false">
        <description/>
        <conditons>
          <condition type="OnButtonBeginEvent" targetuiname="buttonturn" targetuitype="AIButton" invert="false" operatorType="0" isConflict="false" enabled="true">
            <properties/>
          </condition>
        </conditons>
        <actions>
          <action type="toogleBoolean" targetuiname="plane" targetuitype="AIMovieClip" isConflict="false" enabled="true">
            <properties>
              <p key="10" propertyname="TF" valuetype="string" edittype="variable">
                <description>Choose%20the%20instance%20variable%20to%20toggle.</description>
              </p>
            </properties>
          </action>
        </actions>
        <subevent/>
      </event>
      <event name="正向旋转" enabled="true" relation="1" triggerOnceWhileTrue="false">
        <description/>
        <conditons>
          <condition type="CompareInstanceVariableEvent" targetuiname="plane" targetuitype="AIMovieClip" invert="false" operatorType="0" isConflict="false" enabled="true">
            <properties>
              <p key="instanceVariable" propertyname="TF" valuetype="string" edittype="variable">
                <description>Select%20a%20variable%20of%20current%20object.</description>
              </p>
              <p key="operationType" value="equalTo" valuetype="any">
                <description>Select%20a%20operator.</description>
              </p>
              <p key="value" value="true" valuetype="any">
                <description>Compared%20value.</description>
              </p>
            </properties>
          </condition>
        </conditons>
        <actions>
          <action type="setValue" targetuiname="plane" targetuitype="AIMovieClip" isConflict="false" enabled="true">
            <properties>
              <p key="10" propertyname="dir" valuetype="string" edittype="variable">
                <description>Choose%20the%20object%20variable%20to%20change.</description>
              </p>
              <p key="11" value="1" valuetype="any">
                <description>Value%20to%20store%20in%20this%20object%20variable.</description>
              </p>
            </properties>
          </action>
        </actions>
        <subevent/>
      </event>
      <event name="逆向旋转" enabled="true" relation="1" triggerOnceWhileTrue="false">
        <description/>
        <conditons>
          <condition type="CompareInstanceVariableEvent" targetuiname="plane" targetuitype="AIMovieClip" invert="false" operatorType="0" isConflict="false" enabled="true">
            <properties>
              <p key="instanceVariable" propertyname="TF" valuetype="string" edittype="variable">
                <description>Select%20a%20variable%20of%20current%20object.</description>
              </p>
              <p key="operationType" value="equalTo" valuetype="any">
                <description>Select%20a%20operator.</description>
              </p>
              <p key="value" value="false" valuetype="any">
                <description>Compared%20value.</description>
              </p>
            </properties>
          </condition>
        </conditons>
        <actions>
          <action type="setValue" targetuiname="plane" targetuitype="AIMovieClip" isConflict="false" enabled="true">
            <properties>
              <p key="10" propertyname="dir" valuetype="string" edittype="variable">
                <description>Choose%20the%20object%20variable%20to%20change.</description>
              </p>
              <p key="11" value="-1" valuetype="any">
                <description>Value%20to%20store%20in%20this%20object%20variable.</description>
              </p>
            </properties>
          </action>
        </actions>
        <subevent/>
      </event>
      <event name="设定旋转速度" enabled="true" relation="1" triggerOnceWhileTrue="false">
        <description/>
        <conditons>
          <condition type="EveryTickEvent" targetuiname="System" targetuitype="AISystem" invert="false" operatorType="0" isConflict="false" enabled="true">
            <properties/>
          </condition>
        </conditons>
        <actions>
          <action type="setSpeed" targetuiname="Sun_center" targetuitype="AISprite" isConflict="false" behaviorname="旋转行为" behavior="RotateBehaivor" enabled="true">
            <properties>
              <p key="1" value="plane.speed*plane.dir" valuetype="any">
                <description>%E8%AE%BE%E7%BD%AE%E6%97%8B%E8%BD%AC%E7%9A%84%E9%80%9F%E5%BA%A6%E3%80%82%EF%BC%88%E5%8D%95%E4%BD%8D%EF%BC%9A%E5%BA%A6%2F%E7%A7%92%EF%BC%89%E3%80%82</description>
              </p>
            </properties>
          </action>
          <action type="setSize" targetuiname="blood" targetuitype="AISprite" isConflict="false" enabled="true">
            <properties>
              <p key="16" value="plane.hp*20" valuetype="any">
                <description>New%20object%20width%2C%20in%20pixels.</description>
              </p>
              <p key="17" value="3" valuetype="any">
                <description>New%20object%20height%2C%20in%20pixels.</description>
              </p>
            </properties>
          </action>
        </actions>
        <subevent/>
      </event>
      <event name="Boss打子弹" enabled="true" relation="1" triggerOnceWhileTrue="false">
        <description/>
        <conditons>
          <condition type="EveryXSecondsEvent" targetuiname="System" targetuitype="AISystem" invert="false" operatorType="0" isConflict="false" enabled="true">
            <properties>
              <p key="interval" value="0.5" valuetype="any">
                <description>%E6%97%B6%E9%97%B4%E9%97%B4%E9%9A%94%E3%80%82%EF%BC%88%E5%8D%95%E4%BD%8D%EF%BC%9A%E7%A7%92%EF%BC%89</description>
              </p>
            </properties>
          </condition>
        </conditons>
        <actions>
          <action type="spawn" targetuiname="boss" targetuitype="AISprite" isConflict="false" enabled="true">
            <properties>
              <p key="10" uiname="emeny" uitype="AIMovieClip" valuetype="string" edittype="instance">
                <description>Specify%20the%20object%20that%20will%20be%20created.</description>
              </p>
              <p key="11" value="0" valuetype="any">
                <description>The%20layer%20number%20to%20create%20the%20object%20on.</description>
              </p>
              <p key="12" value="0" valuetype="any">
                <description>X%20co-ordinate%20offset%20from%20the%20target%20object%20to%20place%20the%20spawn%20object.</description>
              </p>
              <p key="13" value="0" valuetype="any">
                <description>Y%20co-ordinate%20offset%20from%20the%20target%20object%20to%20place%20the%20spawn%20object.</description>
              </p>
              <p key="14" value="1" valuetype="any">
                <description>Set%20the%20spawn%20object%20angle%20toward%20the%20target%20object%20angle.</description>
              </p>
            </properties>
          </action>
        </actions>
        <subevent/>
      </event>
      <event name="Boss旋转" enabled="true" relation="1" triggerOnceWhileTrue="false">
        <description/>
        <conditons>
          <condition type="EveryXSecondsEvent" targetuiname="System" targetuitype="AISystem" invert="false" operatorType="0" isConflict="false" enabled="true">
            <properties>
              <p key="interval" value="2%2BMath.random()*3" valuetype="any">
                <description>%E6%97%B6%E9%97%B4%E9%97%B4%E9%9A%94%E3%80%82%EF%BC%88%E5%8D%95%E4%BD%8D%EF%BC%9A%E7%A7%92%EF%BC%89</description>
              </p>
            </properties>
          </condition>
        </conditons>
        <actions>
          <action type="setAngle" targetuiname="boss" targetuitype="AISprite" isConflict="false" enabled="true">
            <properties>
              <p key="10" value="Math.random()*360" valuetype="any">
                <description>New%20object%20angle%2C%20in%20degrees.</description>
              </p>
            </properties>
          </action>
        </actions>
        <subevent/>
      </event>
      <event name="飞船击中异形" enabled="true" relation="1" triggerOnceWhileTrue="false">
        <description/>
        <conditons>
          <condition type="OnCollisionWithOtherObjectEvent" targetuiname="bullet" targetuitype="AISprite" invert="false" operatorType="0" isConflict="false" enabled="true">
            <properties>
              <p key="object" uiname="emeny" uitype="AIMovieClip" valuetype="string" edittype="instance">
                <description>Select%20the%20object%20to%20test%20for%20a%20conllision%20with.</description>
              </p>
            </properties>
          </condition>
        </conditons>
        <actions>
          <action type="spawn" targetuiname="emeny" targetuitype="AIMovieClip" isConflict="false" enabled="true">
            <properties>
              <p key="10" uiname="enemyb" uitype="AIMovieClip" valuetype="string" edittype="instance">
                <description>Specify%20the%20object%20that%20will%20be%20created.</description>
              </p>
              <p key="11" value="0" valuetype="any">
                <description>The%20layer%20number%20to%20create%20the%20object%20on.</description>
              </p>
              <p key="12" value="0" valuetype="any">
                <description>X%20co-ordinate%20offset%20from%20the%20target%20object%20to%20place%20the%20spawn%20object.</description>
              </p>
              <p key="13" value="0" valuetype="any">
                <description>Y%20co-ordinate%20offset%20from%20the%20target%20object%20to%20place%20the%20spawn%20object.</description>
              </p>
              <p key="14" value="1" valuetype="any">
                <description>Set%20the%20spawn%20object%20angle%20toward%20the%20target%20object%20angle.</description>
              </p>
            </properties>
          </action>
          <action type="destory" targetuiname="bullet" targetuitype="AISprite" isConflict="false" enabled="true">
            <properties/>
          </action>
          <action type="addTo" targetuiname="AISprite2885" targetuitype="AISprite" isConflict="false" enabled="true">
            <properties>
              <p key="10" propertyname="scores" valuetype="string" edittype="variable">
                <description>Choose%20the%20object%20variable%20to%20change.</description>
              </p>
              <p key="11" value="1" valuetype="any">
                <description>Value%20to%20add%20to%20this%20object%20variable.</description>
              </p>
            </properties>
          </action>
          <action type="destory" targetuiname="emeny" targetuitype="AIMovieClip" isConflict="false" enabled="true">
            <properties/>
          </action>
        </actions>
        <subevent/>
      </event>
      <event name="异形抵达轨道" enabled="true" relation="1" triggerOnceWhileTrue="false">
        <description/>
        <conditons>
          <condition type="B_Bullet_compareDistanceTravelledEvent" targetuiname="emeny" targetuitype="AIMovieClip" invert="false" operatorType="0" behaviorname="子弹" behavior="BulletBehaivor" isConflict="false" enabled="true">
            <properties>
              <p key="operationType" value="greaterOrEqual" valuetype="any">
                <description>%E9%80%89%E6%8B%A9%E6%AF%94%E8%BE%83%E8%BF%90%E7%AE%97%E7%AC%A6%E3%80%82</description>
              </p>
              <p key="distance" value="300" valuetype="any">
                <description>%E4%B8%8E%E5%BD%93%E5%89%8D%E8%BF%90%E8%A1%8C%E8%B7%9D%E7%A6%BB%E6%AF%94%E8%BE%83%E7%9A%84%E5%80%BC%E3%80%82%EF%BC%88%E5%8D%95%E4%BD%8D%EF%BC%9A%E5%83%8F%E7%B4%A0%EF%BC%89</description>
              </p>
            </properties>
          </condition>
          <condition type="IsOnScreenEvent" targetuiname="emeny" targetuitype="AIMovieClip" invert="false" operatorType="0" isConflict="false" enabled="true">
            <properties>
              <p key="isOnScreen" value="1" valuetype="any">
                <description>True%20if%20the%20objec%20is%20in%2Fout%20screen.</description>
              </p>
            </properties>
          </condition>
        </conditons>
        <actions>
          <action type="startFlash" targetuiname="BG" targetuitype="AISprite" isConflict="false" behaviorname="闪烁行为" behavior="FlashBehavior" enabled="true">
            <properties>
              <p key="1" value="0.01" valuetype="any">
                <description>%E8%AE%BE%E7%BD%AE%E6%98%BE%E7%A4%BA%E6%97%B6%E9%97%B4%E3%80%82(%E5%8D%95%E4%BD%8D%EF%BC%9A%E7%A7%92)</description>
              </p>
              <p key="2" value="0.01" valuetype="any">
                <description>%E8%AE%BE%E7%BD%AE%E9%9A%90%E8%97%8F%E6%97%B6%E9%97%B4%E3%80%82(%E5%8D%95%E4%BD%8D%EF%BC%9A%E7%A7%92)</description>
              </p>
              <p key="3" value="10" valuetype="any">
                <description>%E8%AE%BE%E7%BD%AE%E9%97%AA%E7%83%81%E7%9A%84%E9%87%8D%E5%A4%8D%E6%AC%A1%E6%95%B0%E3%80%82%0A%E6%AF%8F%E6%98%BE%E7%A4%BA%E5%B9%B6%E9%9A%90%E8%97%8F%E4%B8%80%E6%AC%A1%E4%B8%BA%E6%89%A7%E8%A1%8C%E4%B8%80%E6%AC%A1%E9%97%AA%E7%83%81%E3%80%82%0A%E9%BB%98%E8%AE%A4%E5%80%BC%E4%B8%BA0%EF%BC%8C%E8%A1%A8%E7%A4%BA%E4%B8%8D%E9%99%90%E5%88%B6%E9%87%8D%E5%A4%8D%E6%AC%A1%E6%95%B0%EF%BC%8C%E4%B8%8D%E5%81%9C%E9%97%AA%E7%83%81%E3%80%82%E4%BD%86%E5%8F%AF%E4%BB%A5%E8%A2%AB%E9%97%AA%E7%83%81%E5%81%9C%E6%AD%A2%E5%8A%A8%E4%BD%9C%E5%81%9C%E6%AD%A2%E3%80%82</description>
              </p>
            </properties>
          </action>
          <action type="destory" targetuiname="emeny" targetuitype="AIMovieClip" isConflict="false" enabled="true">
            <properties/>
          </action>
          <action type="subtractFrom" targetuiname="plane" targetuitype="AIMovieClip" isConflict="false" enabled="true">
            <properties>
              <p key="10" propertyname="hp" valuetype="string" edittype="variable">
                <description>Choose%20the%20object%20variable%20to%20change.</description>
              </p>
              <p key="11" value="1" valuetype="any">
                <description>Value%20to%20subtract%20from%20this%20object%20variable.</description>
              </p>
            </properties>
          </action>
        </actions>
        <subevent/>
      </event>
      <event name="异形撞击飞机" enabled="true" relation="1" triggerOnceWhileTrue="false">
        <description/>
        <conditons>
          <condition type="OnCollisionWithOtherObjectEvent" targetuiname="plane" targetuitype="AIMovieClip" invert="false" operatorType="0" isConflict="false" enabled="true">
            <properties>
              <p key="object" uiname="emeny" uitype="AIMovieClip" valuetype="string" edittype="instance">
                <description>Select%20the%20object%20to%20test%20for%20a%20conllision%20with.</description>
              </p>
            </properties>
          </condition>
        </conditons>
        <actions>
          <action type="startFlash" targetuiname="plane" targetuitype="AIMovieClip" isConflict="false" behaviorname="闪烁" behavior="FlashBehavior" enabled="true">
            <properties>
              <p key="1" value="0.1" valuetype="any">
                <description>%E8%AE%BE%E7%BD%AE%E6%98%BE%E7%A4%BA%E6%97%B6%E9%97%B4%E3%80%82(%E5%8D%95%E4%BD%8D%EF%BC%9A%E7%A7%92)</description>
              </p>
              <p key="2" value="0.1" valuetype="any">
                <description>%E8%AE%BE%E7%BD%AE%E9%9A%90%E8%97%8F%E6%97%B6%E9%97%B4%E3%80%82(%E5%8D%95%E4%BD%8D%EF%BC%9A%E7%A7%92)</description>
              </p>
              <p key="3" value="3" valuetype="any">
                <description>%E8%AE%BE%E7%BD%AE%E9%97%AA%E7%83%81%E7%9A%84%E9%87%8D%E5%A4%8D%E6%AC%A1%E6%95%B0%E3%80%82%0A%E6%AF%8F%E6%98%BE%E7%A4%BA%E5%B9%B6%E9%9A%90%E8%97%8F%E4%B8%80%E6%AC%A1%E4%B8%BA%E6%89%A7%E8%A1%8C%E4%B8%80%E6%AC%A1%E9%97%AA%E7%83%81%E3%80%82%0A%E9%BB%98%E8%AE%A4%E5%80%BC%E4%B8%BA0%EF%BC%8C%E8%A1%A8%E7%A4%BA%E4%B8%8D%E9%99%90%E5%88%B6%E9%87%8D%E5%A4%8D%E6%AC%A1%E6%95%B0%EF%BC%8C%E4%B8%8D%E5%81%9C%E9%97%AA%E7%83%81%E3%80%82%E4%BD%86%E5%8F%AF%E4%BB%A5%E8%A2%AB%E9%97%AA%E7%83%81%E5%81%9C%E6%AD%A2%E5%8A%A8%E4%BD%9C%E5%81%9C%E6%AD%A2%E3%80%82</description>
              </p>
            </properties>
          </action>
          <action type="subtractFrom" targetuiname="plane" targetuitype="AIMovieClip" isConflict="false" enabled="true">
            <properties>
              <p key="10" propertyname="hp" valuetype="string" edittype="variable">
                <description>Choose%20the%20object%20variable%20to%20change.</description>
              </p>
              <p key="11" value="1" valuetype="any">
                <description>Value%20to%20subtract%20from%20this%20object%20variable.</description>
              </p>
            </properties>
          </action>
          <action type="destory" targetuiname="emeny" targetuitype="AIMovieClip" isConflict="false" enabled="true">
            <properties/>
          </action>
        </actions>
        <subevent/>
      </event>
      <event name="更新分数" enabled="true" relation="1" triggerOnceWhileTrue="false">
        <description/>
        <conditons>
          <condition type="EveryTickEvent" targetuiname="System" targetuitype="AISystem" invert="false" operatorType="0" isConflict="false" enabled="true">
            <properties/>
          </condition>
        </conditons>
        <actions>
          <action type="setBitmapText" targetuiname="分数" targetuitype="AIBitmapText" isConflict="false" enabled="true">
            <properties>
              <p key="2" value="AISprite2885.scores" valuetype="any">
                <description>%E8%AE%BE%E7%BD%AE%E4%BD%8D%E5%9B%BE%E5%AD%97%E4%BD%93%E7%9A%84%E6%96%87%E6%9C%AC%E5%86%85%E5%AE%B9%E3%80%82</description>
              </p>
            </properties>
          </action>
        </actions>
        <subevent/>
      </event>
      <event name="null" enabled="true" relation="1" triggerOnceWhileTrue="true">
        <description>null</description>
        <conditons>
          <condition type="CompareTwoValuesEvent" targetuiname="gameover" targetuitype="AISprite" invert="false" operatorType="0" isConflict="false" enabled="true">
            <properties>
              <p key="value1" value="gameover.scale" valuetype="any">
                <description>%E8%AF%B7%E8%BE%93%E5%85%A5%E6%95%B0%E5%80%BC1%E3%80%82</description>
              </p>
              <p key="operationType" value="greaterOrEqual" valuetype="any">
                <description>%E9%80%89%E6%8B%A9%E6%AF%94%E8%BE%83%E8%BF%90%E7%AE%97%E7%AC%A6%E3%80%82</description>
              </p>
              <p key="value2" value="1.1" valuetype="any">
                <description>%E8%AF%B7%E8%BE%93%E5%85%A5%E6%95%B0%E5%80%BC2%E3%80%82</description>
              </p>
            </properties>
          </condition>
        </conditons>
        <actions>
          <action type="setValue" targetuiname="gameover" targetuitype="AISprite" isConflict="false" enabled="true">
            <properties>
              <p key="10" propertyname="n" valuetype="string" edittype="variable">
                <description>Choose%20the%20object%20variable%20to%20change.</description>
              </p>
              <p key="11" value="2" valuetype="any">
                <description>Value%20to%20store%20in%20this%20object%20variable.</description>
              </p>
            </properties>
          </action>
          <action type="setPosition" targetuiname="reset" targetuitype="AIButton" isConflict="false" enabled="true">
            <properties>
              <p key="16" value="400" valuetype="any">
                <description>New%20X%20co-ordinate%2C%20in%20pixels.</description>
              </p>
              <p key="17" value="800" valuetype="any">
                <description>New%20Y%20co-ordinate%2C%20in%20pixels.</description>
              </p>
            </properties>
          </action>
          <action type="setActiveAtStartType" targetuiname="reset" targetuitype="AIButton" isConflict="false" behaviorname="淡入淡出" behavior="FadeBehavior" enabled="true">
            <properties>
              <p key="4" value="1" valuetype="any">
                <description>%E8%AE%BE%E7%BD%AE%E8%A1%8C%E4%B8%BA%E6%98%AF%E5%90%A6%E6%BF%80%E6%B4%BB%E3%80%82</description>
              </p>
            </properties>
          </action>
          <action type="startFade" targetuiname="reset" targetuitype="AIButton" isConflict="false" behaviorname="淡入淡出" behavior="FadeBehavior" enabled="true">
            <properties/>
          </action>
        </actions>
        <subevent/>
      </event>
      <event name="null" enabled="true" relation="1" triggerOnceWhileTrue="true">
        <description>null</description>
        <conditons>
          <condition type="CompareInstanceVariableEvent" targetuiname="plane" targetuitype="AIMovieClip" invert="false" operatorType="0" isConflict="false" enabled="true">
            <properties>
              <p key="instanceVariable" propertyname="hp" valuetype="string" edittype="variable">
                <description>Select%20a%20variable%20of%20current%20object.</description>
              </p>
              <p key="operationType" value="lessOrEqual" valuetype="any">
                <description>Select%20a%20operator.</description>
              </p>
              <p key="value" value="0" valuetype="any">
                <description>Compared%20value.</description>
              </p>
            </properties>
          </condition>
        </conditons>
        <actions>
          <action type="setScale" targetuiname="gameover" targetuitype="AISprite" isConflict="false" enabled="true">
            <properties>
              <p key="16" value="0.1" valuetype="any">
                <description>The%20object%20width%20and%20height%20to%20set%2C%20based%20on%20a%20multiple%20of%20its%20original%20dimensions%2C%20e.g.%201%20%3D%20priginal%20size%2C%202%20%3D%20double%20size%2C%200.5%20%3D%20half%20size%20etc.</description>
              </p>
            </properties>
          </action>
          <action type="setPosition" targetuiname="gameover" targetuitype="AISprite" isConflict="false" enabled="true">
            <properties>
              <p key="16" value="400" valuetype="any">
                <description>New%20X%20co-ordinate%2C%20in%20pixels.</description>
              </p>
              <p key="17" value="400" valuetype="any">
                <description>New%20Y%20co-ordinate%2C%20in%20pixels.</description>
              </p>
            </properties>
          </action>
          <action type="setValue" targetuiname="gameover" targetuitype="AISprite" isConflict="false" enabled="true">
            <properties>
              <p key="10" propertyname="n" valuetype="string" edittype="variable">
                <description>Choose%20the%20object%20variable%20to%20change.</description>
              </p>
              <p key="11" value="1" valuetype="any">
                <description>Value%20to%20store%20in%20this%20object%20variable.</description>
              </p>
            </properties>
          </action>
          <action type="enabledDisabledCollision" targetuiname="emeny" targetuitype="AIMovieClip" isConflict="false" enabled="true">
            <properties>
              <p key="status" value="2" valuetype="any">
                <description>Whether%20to%20enable%20or%20disable%20collisions%20for%20this%20object.</description>
              </p>
            </properties>
          </action>
          <action type="destory" targetuiname="plane" targetuitype="AIMovieClip" isConflict="false" enabled="true">
            <properties/>
          </action>
        </actions>
        <subevent/>
      </event>
      <event name="null" enabled="true" relation="1" triggerOnceWhileTrue="false">
        <description>null</description>
        <conditons>
          <condition type="CompareInstanceVariableEvent" targetuiname="gameover" targetuitype="AISprite" invert="false" operatorType="0" isConflict="false" enabled="true">
            <properties>
              <p key="instanceVariable" propertyname="n" valuetype="string" edittype="variable">
                <description>Select%20a%20variable%20of%20current%20object.</description>
              </p>
              <p key="operationType" value="equalTo" valuetype="any">
                <description>Select%20a%20operator.</description>
              </p>
              <p key="value" value="1" valuetype="any">
                <description>Compared%20value.</description>
              </p>
            </properties>
          </condition>
        </conditons>
        <actions>
          <action type="setScale" targetuiname="gameover" targetuitype="AISprite" isConflict="false" enabled="true">
            <properties>
              <p key="16" value="gameover.scale%2B0.1" valuetype="any">
                <description>The%20object%20width%20and%20height%20to%20set%2C%20based%20on%20a%20multiple%20of%20its%20original%20dimensions%2C%20e.g.%201%20%3D%20priginal%20size%2C%202%20%3D%20double%20size%2C%200.5%20%3D%20half%20size%20etc.</description>
              </p>
            </properties>
          </action>
        </actions>
        <subevent/>
      </event>
      <event name="null" enabled="true" relation="1" triggerOnceWhileTrue="false">
        <description>null</description>
        <conditons>
          <condition type="OnPlayCompleteEvent" targetuiname="enemyb" targetuitype="AIMovieClip" invert="false" operatorType="0" isConflict="false" enabled="true">
            <properties/>
          </condition>
        </conditons>
        <actions>
          <action type="destory" targetuiname="enemyb" targetuitype="AIMovieClip" isConflict="false" enabled="true">
            <properties/>
          </action>
        </actions>
        <subevent/>
      </event>
      <event name="null" enabled="true" relation="1" triggerOnceWhileTrue="false">
        <description>null</description>
        <conditons>
          <condition type="OnButtonBeginEvent" targetuiname="reset" targetuitype="AIButton" invert="false" operatorType="0" isConflict="false" enabled="true">
            <properties/>
          </condition>
        </conditons>
        <actions>
          <action type="gotoScene" targetuiname="System" targetuitype="AISystem" isConflict="false" enabled="true">
            <properties>
              <p key="18" value="MainScene" valuetype="any">
                <description>%E6%8C%87%E5%AE%9A%E8%A6%81%E8%B7%B3%E8%BD%AC%E7%9A%84%E5%9C%BA%E6%99%AF%E5%90%8D%E3%80%82</description>
              </p>
            </properties>
          </action>
        </actions>
        <subevent/>
      </event>
    </sheet>
  </eventsheet>
  <scenes>
    <object type="Scene" uiname="MainScene" layer="1">
      <familys/>
      <properties>
        <p key="sceneWidth" value="800" valuetype="number"/>
        <p key="sceneHeight" value="1000" valuetype="number"/>
        <p key="width" value="800" valuetype="number"/>
        <p key="height" value="1000" valuetype="number"/>
      </properties>
      <customproperties/>
      <behaviors/>
      <children>
        <object type="Layer" uiname="主层" parallaxX="100" parallaxY="100" layer="1">
          <properties>
            <p key="sceneWidth" value="800" valuetype="number"/>
            <p key="sceneHeight" value="1000" valuetype="number"/>
            <p key="parallaxX" value="100" valuetype="number"/>
            <p key="parallaxY" value="100" valuetype="number"/>
            <p key="layerAlpha" value="1" valuetype="number"/>
            <p key="layerVisible" value="true" valuetype="boolean"/>
            <p key="layerScaleX" value="100" valuetype="number"/>
            <p key="layerScaleY" value="100" valuetype="number"/>
          </properties>
          <customproperties/>
          <behaviors/>
          <children>
            <object type="AIButton" uiname="reset" layer="1">
              <properties>
                <p key="name" value="reset" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="2881" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="-197.6833536916341" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="646.9166858461201" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="190" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="68" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="upSkin" value="resource%2FuserAsset%2Fimage%2Freset.png" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E6%8C%89%E7%BA%BD%E5%BC%B9%E8%B5%B7%E6%97%B6%E7%9A%84%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="downSkin" value="resource%2FuserAsset%2Fimage%2Freset.png" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E6%8C%89%E7%BA%BD%E6%8C%89%E4%B8%8B%E6%97%B6%E7%9A%84%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="disableSkin" value="" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E6%8C%89%E7%BA%BD%E7%A6%81%E7%94%A8%E6%97%B6%E7%9A%84%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="text" value="" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E6%8C%89%E7%BA%BD%E7%9A%84%E6%96%87%E6%9C%AC%E6%A0%87%E7%AD%BE</description>
                </p>
                <p key="fontFamily" value="%E5%AE%8B%E4%BD%93" valuetype="string">
                  <description>%E5%AD%97%E4%BD%93</description>
                </p>
                <p key="size" value="12" valuetype="number">
                  <description>%E5%AD%97%E4%BD%93%E5%A4%A7%E5%B0%8F</description>
                </p>
                <p key="textColor" value="0xffffff" valuetype="string">
                  <description>%E5%AD%97%E4%BD%93%E9%A2%9C%E8%89%B2</description>
                </p>
                <p key="bold" value="false" valuetype="boolean">
                  <description>%E7%B2%97%E4%BD%93</description>
                </p>
                <p key="enableInput" value="false" valuetype="boolean">
                  <description>%E5%85%81%E8%AE%B8%E8%BE%93%E5%85%A5</description>
                </p>
                <p key="textAlign" value="center" valuetype="string">
                  <description>%E6%B0%B4%E5%B9%B3%E5%B8%83%E5%B1%80</description>
                </p>
                <p key="verticalAlign" value="middle" valuetype="string">
                  <description>%E5%9E%82%E7%9B%B4%E5%B8%83%E5%B1%80</description>
                </p>
                <p key="maxChars" value="100" valuetype="number">
                  <description>%E5%AD%97%E6%95%B0%E4%B8%8A%E9%99%90</description>
                </p>
                <p key="italic" value="false" valuetype="boolean">
                  <description>%E6%96%9C%E4%BD%93</description>
                </p>
                <p key="displayAsPassword" value="false" valuetype="boolean">
                  <description>%E5%AF%86%E7%A0%81%E6%98%BE%E7%A4%BA</description>
                </p>
                <p key="wordWrap" value="false" valuetype="boolean">
                  <description>%E6%94%AF%E6%8C%81%E6%8D%A2%E8%A1%8C</description>
                </p>
                <p key="enabled" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="false" valuetype="boolean">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="淡入淡出" type="FadeBehavior">
                  <properties>
                    <p key="activeAtStartType" value="0" valuetype="any">
                      <description>%E5%AE%9E%E4%BE%8B%E5%88%9B%E5%BB%BA%E7%9A%84%E6%97%B6%E5%80%99%E6%98%AF%E5%90%A6%E7%AB%8B%E5%8D%B3%E6%89%A7%E8%A1%8C%E6%B7%A1%E5%85%A5%E6%B7%A1%E5%87%BA%E6%93%8D%E4%BD%9C%E3%80%82</description>
                    </p>
                    <p key="fadeInTime" value="1" valuetype="any">
                      <description>%E5%AE%9E%E4%BE%8B%E9%80%8F%E6%98%8E%E5%BA%A6%E4%BB%8E0%E5%88%B01%E6%89%80%E9%9C%80%E8%A6%81%E7%9A%84%E6%97%B6%E9%97%B4%E3%80%82%EF%BC%88%E5%8D%95%E4%BD%8D%EF%BC%9A%E7%A7%92%EF%BC%89</description>
                    </p>
                    <p key="waitTime" value="0" valuetype="any">
                      <description>%E5%AE%9E%E4%BE%8B%E4%BB%8E%E5%BC%80%E5%A7%8B%E5%88%B0%E6%89%A7%E8%A1%8C%E6%B7%A1%E5%85%A5%E6%89%80%E9%9C%80%E8%A6%81%E6%97%B6%E9%97%B4%E3%80%82%EF%BC%88%E5%8D%95%E4%BD%8D%EF%BC%9A%E7%A7%92%EF%BC%89</description>
                    </p>
                    <p key="fadeOutTime" value="0" valuetype="any">
                      <description>%E5%AE%9E%E4%BE%8B%E9%80%8F%E6%98%8E%E5%BA%A6%E4%BB%8E1%E5%88%B00%E6%89%80%E9%9C%80%E8%A6%81%E7%9A%84%E6%97%B6%E9%97%B4%E3%80%82%EF%BC%88%E5%8D%95%E4%BD%8D%EF%BC%9A%E7%A7%92%EF%BC%89</description>
                    </p>
                    <p key="loopTimes" value="1" valuetype="any">
                      <description>%E6%B7%A1%E5%85%A5%E6%B7%A1%E5%87%BA%E6%95%88%E6%9E%9C%E5%BE%AA%E7%8E%AF%E6%AC%A1%E6%95%B0</description>
                    </p>
                    <p key="destoryType" value="0" valuetype="any">
                      <description>%E5%AE%9E%E4%BE%8B%E6%B7%A1%E5%87%BA%E5%AE%8C%E6%88%90%E5%90%8E%E6%98%AF%E5%90%A6%E9%94%80%E6%AF%81%E3%80%82</description>
                    </p>
                  </properties>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="gameover" layer="1">
              <properties>
                <p key="name" value="gameover" valuetype="string">
                  <description>Name%20of%20the%20object.</description>
                </p>
                <p key="uiGuid" value="2877" valuetype="string">
                  <description>GUID</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>Set%20the%20object%20global%20or%20not.%20The%20global%20object%20will%20be%20shown%20on%20all%20scenes.%20It%20will%20not%20be%20destroyed%20after%20jump%20to%20another%20scene%20and%20the%20data%20of%20the%20object%20will%20be%20keeped.</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>Set%20the%20object%20visible%20or%20invisible.</description>
                </p>
                <p key="x" value="-197.6000233650245" valuetype="number">
                  <description>X%20co-ordinate.</description>
                </p>
                <p key="y" value="258.26665214962196" valuetype="number">
                  <description>Y%20co-ordinate.</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>The%20X%20co-ordinate%20of%20anchor.</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>The%20Y%20co-ordinate%20of%20anchor.</description>
                </p>
                <p key="width" value="367" valuetype="number">
                  <description>The%20object's%20width.</description>
                </p>
                <p key="height" value="46" valuetype="number">
                  <description>The%20object's%20height.</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>The%20object's%20angle.</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>The%20object's%20opacity.</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fimage%2Fgameover.png" valuetype="string">
                  <description>The%20source%20of%20the%20image.</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>Set%20clickable%20status%20of%20the%20object.</description>
                </p>
                <p key="collision" value="false" valuetype="boolean">
                  <description>Set%20collision%20status%20of%20the%20object.</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>Edit%20the%20collision%20edge.</description>
                </p>
              </properties>
              <customproperties>
                <p key="n" value="0" valuetype="number"/>
              </customproperties>
              <behaviors/>
              <children/>
            </object>
            <object type="AISprite" uiname="boss" layer="1">
              <properties>
                <p key="name" value="boss" valuetype="string">
                  <description>Name%20of%20the%20object.</description>
                </p>
                <p key="uiGuid" value="1054" valuetype="string">
                  <description>GUID</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>Set%20the%20object%20global%20or%20not.%20The%20global%20object%20will%20be%20shown%20on%20all%20scenes.%20It%20will%20not%20be%20destroyed%20after%20jump%20to%20another%20scene%20and%20the%20data%20of%20the%20object%20will%20be%20keeped.</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>Set%20the%20object%20visible%20or%20invisible.</description>
                </p>
                <p key="x" value="400" valuetype="number">
                  <description>X%20co-ordinate.</description>
                </p>
                <p key="y" value="400" valuetype="number">
                  <description>Y%20co-ordinate.</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>The%20X%20co-ordinate%20of%20anchor.</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>The%20Y%20co-ordinate%20of%20anchor.</description>
                </p>
                <p key="width" value="50" valuetype="number">
                  <description>The%20object's%20width.</description>
                </p>
                <p key="height" value="50" valuetype="number">
                  <description>The%20object's%20height.</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>The%20object's%20angle.</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>The%20object's%20opacity.</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fimage%2Fwhite_block.png" valuetype="string">
                  <description>The%20source%20of%20the%20image.</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>Set%20clickable%20status%20of%20the%20object.</description>
                </p>
                <p key="collision" value="false" valuetype="boolean">
                  <description>Set%20collision%20status%20of%20the%20object.</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>Edit%20the%20collision%20edge.</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors/>
              <children/>
            </object>
            <object type="AIMovieClip" uiname="enemyb" layer="1">
              <properties>
                <p key="name" value="enemyb" valuetype="string">
                  <description>Name%20of%20the%20object.</description>
                </p>
                <p key="uiGuid" value="2883" valuetype="string">
                  <description>GUID</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>Set%20the%20object%20global%20or%20not.%20The%20global%20object%20will%20be%20shown%20on%20all%20scenes.%20It%20will%20not%20be%20destroyed%20after%20jump%20to%20another%20scene%20and%20the%20data%20of%20the%20object%20will%20be%20keeped.</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>Set%20the%20object%20visible%20or%20invisible.</description>
                </p>
                <p key="x" value="-197.65" valuetype="number">
                  <description>X%20co-ordinate.</description>
                </p>
                <p key="y" value="854.6" valuetype="number">
                  <description>Y%20co-ordinate.</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>The%20X%20co-ordinate%20of%20anchor.</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>The%20Y%20co-ordinate%20of%20anchor.</description>
                </p>
                <p key="width" value="30" valuetype="number">
                  <description>The%20object's%20width.</description>
                </p>
                <p key="height" value="30" valuetype="number">
                  <description>The%20object's%20height.</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>The%20object's%20angle.</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>The%20object's%20opacity.</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>Set%20clickable%20status%20of%20the%20object.</description>
                </p>
                <p key="collision" value="false" valuetype="boolean">
                  <description>Set%20collision%20status%20of%20the%20object.</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>Edit%20the%20collision%20edge.</description>
                </p>
                <p key="actions" value="%7B%22loop%22%3A0%2C%22scaleY%22%3A1%2C%22scaleX%22%3A1%2C%22action%22%3A%22%E5%8A%A8%E7%94%BB%22%2C%22frames%22%3A%5B%7B%22source%22%3A%22resource%2FuserAsset%2Fimage%2Fenemy_b1.png%22%2C%22width%22%3A30%2C%22_1637%22%3A0%2C%22height%22%3A30%2C%22_1636%22%3A0%7D%2C%7B%22source%22%3A%22resource%2FuserAsset%2Fimage%2Fenemy_b2.png%22%2C%22width%22%3A30%2C%22_1637%22%3A0%2C%22height%22%3A30%2C%22_1636%22%3A0%7D%2C%7B%22source%22%3A%22resource%2FuserAsset%2Fimage%2Fenemy_b3.png%22%2C%22width%22%3A30%2C%22_1637%22%3A0%2C%22height%22%3A30%2C%22_1636%22%3A0%7D%2C%7B%22source%22%3A%22resource%2FuserAsset%2Fimage%2Fenemy_b4.png%22%2C%22width%22%3A30%2C%22_1637%22%3A0%2C%22height%22%3A30%2C%22_1636%22%3A0%7D%5D%2C%22fps%22%3A12%7D" valuetype="any" edittype="animation">
                  <description>Click%20to%20launch%20the%20Animation%20Editor%20window.</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors/>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite2872" layer="1">
              <properties>
                <p key="name" value="AISprite2872" valuetype="string">
                  <description>Name%20of%20the%20object.</description>
                </p>
                <p key="uiGuid" value="2873" valuetype="string">
                  <description>GUID</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>Set%20the%20object%20global%20or%20not.%20The%20global%20object%20will%20be%20shown%20on%20all%20scenes.%20It%20will%20not%20be%20destroyed%20after%20jump%20to%20another%20scene%20and%20the%20data%20of%20the%20object%20will%20be%20keeped.</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>Set%20the%20object%20visible%20or%20invisible.</description>
                </p>
                <p key="x" value="630" valuetype="number">
                  <description>X%20co-ordinate.</description>
                </p>
                <p key="y" value="60" valuetype="number">
                  <description>Y%20co-ordinate.</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>The%20X%20co-ordinate%20of%20anchor.</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>The%20Y%20co-ordinate%20of%20anchor.</description>
                </p>
                <p key="width" value="60" valuetype="number">
                  <description>The%20object's%20width.</description>
                </p>
                <p key="height" value="8" valuetype="number">
                  <description>The%20object's%20height.</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>The%20object's%20angle.</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>The%20object's%20opacity.</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fimage%2Fscores_text.png" valuetype="string">
                  <description>The%20source%20of%20the%20image.</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>Set%20clickable%20status%20of%20the%20object.</description>
                </p>
                <p key="collision" value="false" valuetype="boolean">
                  <description>Set%20collision%20status%20of%20the%20object.</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>Edit%20the%20collision%20edge.</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors/>
              <children/>
            </object>
            <object type="AISprite" uiname="blood" layer="1">
              <properties>
                <p key="name" value="blood" valuetype="string">
                  <description>Name%20of%20the%20object.</description>
                </p>
                <p key="uiGuid" value="2871" valuetype="string">
                  <description>GUID</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>Set%20the%20object%20global%20or%20not.%20The%20global%20object%20will%20be%20shown%20on%20all%20scenes.%20It%20will%20not%20be%20destroyed%20after%20jump%20to%20another%20scene%20and%20the%20data%20of%20the%20object%20will%20be%20keeped.</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>Set%20the%20object%20visible%20or%20invisible.</description>
                </p>
                <p key="x" value="101" valuetype="number">
                  <description>X%20co-ordinate.</description>
                </p>
                <p key="y" value="60" valuetype="number">
                  <description>Y%20co-ordinate.</description>
                </p>
                <p key="anchorX" value="0" valuetype="number">
                  <description>The%20X%20co-ordinate%20of%20anchor.</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>The%20Y%20co-ordinate%20of%20anchor.</description>
                </p>
                <p key="width" value="100" valuetype="number">
                  <description>The%20object's%20width.</description>
                </p>
                <p key="height" value="3" valuetype="number">
                  <description>The%20object's%20height.</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>The%20object's%20angle.</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>The%20object's%20opacity.</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fimage%2Fblood.png" valuetype="string">
                  <description>The%20source%20of%20the%20image.</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>Set%20clickable%20status%20of%20the%20object.</description>
                </p>
                <p key="collision" value="false" valuetype="boolean">
                  <description>Set%20collision%20status%20of%20the%20object.</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>Edit%20the%20collision%20edge.</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors/>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite2868" layer="1">
              <properties>
                <p key="name" value="AISprite2868" valuetype="string">
                  <description>Name%20of%20the%20object.</description>
                </p>
                <p key="uiGuid" value="2869" valuetype="string">
                  <description>GUID</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>Set%20the%20object%20global%20or%20not.%20The%20global%20object%20will%20be%20shown%20on%20all%20scenes.%20It%20will%20not%20be%20destroyed%20after%20jump%20to%20another%20scene%20and%20the%20data%20of%20the%20object%20will%20be%20keeped.</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>Set%20the%20object%20visible%20or%20invisible.</description>
                </p>
                <p key="x" value="100" valuetype="number">
                  <description>X%20co-ordinate.</description>
                </p>
                <p key="y" value="60" valuetype="number">
                  <description>Y%20co-ordinate.</description>
                </p>
                <p key="anchorX" value="0" valuetype="number">
                  <description>The%20X%20co-ordinate%20of%20anchor.</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>The%20Y%20co-ordinate%20of%20anchor.</description>
                </p>
                <p key="width" value="102" valuetype="number">
                  <description>The%20object's%20width.</description>
                </p>
                <p key="height" value="5" valuetype="number">
                  <description>The%20object's%20height.</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>The%20object's%20angle.</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>The%20object's%20opacity.</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fimage%2Fblood_bg.png" valuetype="string">
                  <description>The%20source%20of%20the%20image.</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>Set%20clickable%20status%20of%20the%20object.</description>
                </p>
                <p key="collision" value="false" valuetype="boolean">
                  <description>Set%20collision%20status%20of%20the%20object.</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>Edit%20the%20collision%20edge.</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors/>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite2866" layer="1">
              <properties>
                <p key="name" value="AISprite2866" valuetype="string">
                  <description>Name%20of%20the%20object.</description>
                </p>
                <p key="uiGuid" value="2867" valuetype="string">
                  <description>GUID</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>Set%20the%20object%20global%20or%20not.%20The%20global%20object%20will%20be%20shown%20on%20all%20scenes.%20It%20will%20not%20be%20destroyed%20after%20jump%20to%20another%20scene%20and%20the%20data%20of%20the%20object%20will%20be%20keeped.</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>Set%20the%20object%20visible%20or%20invisible.</description>
                </p>
                <p key="x" value="75.87500032037492" valuetype="number">
                  <description>X%20co-ordinate.</description>
                </p>
                <p key="y" value="59.12499966472385" valuetype="number">
                  <description>Y%20co-ordinate.</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>The%20X%20co-ordinate%20of%20anchor.</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>The%20Y%20co-ordinate%20of%20anchor.</description>
                </p>
                <p key="width" value="25" valuetype="number">
                  <description>The%20object's%20width.</description>
                </p>
                <p key="height" value="11" valuetype="number">
                  <description>The%20object's%20height.</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>The%20object's%20angle.</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>The%20object's%20opacity.</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fimage%2Flife.png" valuetype="string">
                  <description>The%20source%20of%20the%20image.</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>Set%20clickable%20status%20of%20the%20object.</description>
                </p>
                <p key="collision" value="false" valuetype="boolean">
                  <description>Set%20collision%20status%20of%20the%20object.</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>Edit%20the%20collision%20edge.</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors/>
              <children/>
            </object>
            <object type="AIBitmapText" uiname="分数" layer="1">
              <properties>
                <p key="name" value="%E5%88%86%E6%95%B0" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="1218" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="665.7071428571429" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="44.43571428571429" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="78.92857142857143" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="27.42857142857145" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="bmpUrl" value="resource%2FuserAsset%2Fimage%2Fscores.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="fntUrl" value="resource%2FuserAsset%2Fimage%2Fscores.fnt" valuetype="string">
                  <description>%E9%85%8D%E7%BD%AE%E6%96%87%E4%BB%B6</description>
                </p>
                <p key="text" value="0" valuetype="string">
                  <description>%E9%BB%98%E8%AE%A4%E6%96%87%E6%9C%AC</description>
                </p>
                <p key="letterSpacing" value="2" valuetype="string">
                  <description>%E5%AD%97%E7%AC%A6%E9%97%B4%E8%B7%9D</description>
                </p>
                <p key="lineSpacing" value="0" valuetype="string">
                  <description>%E8%A1%8C%E9%97%B4%E8%B7%9D</description>
                </p>
                <p key="enabled" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="NaN" valuetype="number">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors/>
              <children/>
            </object>
            <object type="AIMovieClip" uiname="emeny" layer="1">
              <properties>
                <p key="name" value="emeny" valuetype="string">
                  <description>Name%20of%20the%20object.</description>
                </p>
                <p key="uiGuid" value="1072" valuetype="string">
                  <description>GUID</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>Set%20the%20object%20global%20or%20not.%20The%20global%20object%20will%20be%20shown%20on%20all%20scenes.%20It%20will%20not%20be%20destroyed%20after%20jump%20to%20another%20scene%20and%20the%20data%20of%20the%20object%20will%20be%20keeped.</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>Set%20the%20object%20visible%20or%20invisible.</description>
                </p>
                <p key="x" value="-47.59865140590709" valuetype="number">
                  <description>X%20co-ordinate.</description>
                </p>
                <p key="y" value="-72.87236011945603" valuetype="number">
                  <description>Y%20co-ordinate.</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>The%20X%20co-ordinate%20of%20anchor.</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>The%20Y%20co-ordinate%20of%20anchor.</description>
                </p>
                <p key="width" value="24" valuetype="number">
                  <description>The%20object's%20width.</description>
                </p>
                <p key="height" value="20" valuetype="number">
                  <description>The%20object's%20height.</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>The%20object's%20angle.</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>The%20object's%20opacity.</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>Set%20clickable%20status%20of%20the%20object.</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>Set%20collision%20status%20of%20the%20object.</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>Edit%20the%20collision%20edge.</description>
                </p>
                <p key="actions" value="%7B%22loop%22%3A0%2C%22scaleY%22%3A1%2C%22scaleX%22%3A1%2C%22action%22%3A%22%E5%8A%A8%E4%BD%9C%22%2C%22frames%22%3A%5B%7B%22source%22%3A%22resource%2FuserAsset%2Fimage%2Fenemy1.png%22%2C%22width%22%3A24%2C%22_1637%22%3A0%2C%22height%22%3A20%2C%22_1636%22%3A0%7D%2C%7B%22source%22%3A%22resource%2FuserAsset%2Fimage%2Fenemy2.png%22%2C%22width%22%3A0%2C%22_1637%22%3A0%2C%22height%22%3A0%2C%22_1636%22%3A0%7D%5D%2C%22fps%22%3A6%7D" valuetype="any" edittype="animation">
                  <description>Click%20to%20launch%20the%20Animation%20Editor%20window.</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="子弹" type="BulletBehaivor">
                  <properties>
                    <p key="speed" value="50" valuetype="any">
                      <description>%E8%AE%BE%E7%BD%AE%E5%AD%90%E5%BC%B9%E7%9A%84%E8%BF%90%E5%8A%A8%E9%80%9F%E5%BA%A6%E3%80%82%EF%BC%88%E5%8D%95%E4%BD%8D%EF%BC%9A%E5%83%8F%E7%B4%A0%2F%E7%A7%92%EF%BC%89</description>
                    </p>
                    <p key="acceleration" value="0" valuetype="any">
                      <description>%E5%AD%90%E5%BC%B9%E8%BF%90%E5%8A%A8%E7%9A%84%E5%8A%A0%E9%80%9F%E5%BA%A6%EF%BC%8C%E9%BB%98%E8%AE%A4%E7%9A%84%E5%8A%A0%E9%80%9F%E5%BA%A6%E4%B8%BA%E9%9B%B6%E3%80%82%EF%BC%88%E5%8D%95%E4%BD%8D%EF%BC%9A%E5%83%8F%E7%B4%A0%2F%E7%A7%92%C2%B2%EF%BC%89</description>
                    </p>
                    <p key="gravity" value="0" valuetype="any">
                      <description>%E5%AD%90%E5%BC%B9%E8%BF%90%E8%A1%8C%E4%B8%AD%E6%89%80%E6%89%BF%E5%8F%97%E7%9A%84%E5%90%91%E4%B8%8B%E7%9A%84%E9%87%8D%E5%8A%9B%EF%BC%8C%E9%BB%98%E8%AE%A4%E4%B8%BA%E9%9B%B6%E3%80%82</description>
                    </p>
                    <p key="angle" value="0" valuetype="any">
                      <description>%E8%AE%BE%E7%BD%AE%E5%AD%90%E5%BC%B9%E9%BB%98%E8%AE%A4%E7%9A%84%E8%BF%90%E8%A1%8C%E8%A7%92%E5%BA%A6%E3%80%82</description>
                    </p>
                    <p key="bounceOffSolids" value="0" valuetype="number">
                      <description>%E8%AE%BE%E7%BD%AE%E5%AD%90%E5%BC%B9%E4%B8%8E%E5%88%9A%E4%BD%93%E6%98%AF%E5%90%A6%E7%A2%B0%E6%92%9E%E3%80%82</description>
                    </p>
                  </properties>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AIMovieClip" uiname="plane" layer="1">
              <properties>
                <p key="name" value="plane" valuetype="string">
                  <description>Name%20of%20the%20object.</description>
                </p>
                <p key="uiGuid" value="1060" valuetype="string">
                  <description>GUID</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>Set%20the%20object%20global%20or%20not.%20The%20global%20object%20will%20be%20shown%20on%20all%20scenes.%20It%20will%20not%20be%20destroyed%20after%20jump%20to%20another%20scene%20and%20the%20data%20of%20the%20object%20will%20be%20keeped.</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>Set%20the%20object%20visible%20or%20invisible.</description>
                </p>
                <p key="x" value="400" valuetype="number">
                  <description>X%20co-ordinate.</description>
                </p>
                <p key="y" value="680" valuetype="number">
                  <description>Y%20co-ordinate.</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>The%20X%20co-ordinate%20of%20anchor.</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>The%20Y%20co-ordinate%20of%20anchor.</description>
                </p>
                <p key="width" value="50" valuetype="number">
                  <description>The%20object's%20width.</description>
                </p>
                <p key="height" value="50" valuetype="number">
                  <description>The%20object's%20height.</description>
                </p>
                <p key="angle" value="270" valuetype="number">
                  <description>The%20object's%20angle.</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>The%20object's%20opacity.</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>Set%20clickable%20status%20of%20the%20object.</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>Set%20collision%20status%20of%20the%20object.</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>Edit%20the%20collision%20edge.</description>
                </p>
                <p key="actions" value="%7B%22loop%22%3A0%2C%22scaleY%22%3A1%2C%22scaleX%22%3A1%2C%22action%22%3A%22%E5%8A%A8%E4%BD%9C%22%2C%22frames%22%3A%5B%7B%22source%22%3A%22resource%2FuserAsset%2Fimage%2Fspaceship1.png%22%2C%22width%22%3A50%2C%22_1637%22%3A0%2C%22height%22%3A50%2C%22_1636%22%3A0%7D%2C%7B%22source%22%3A%22resource%2FuserAsset%2Fimage%2Fspaceship2.png%22%2C%22width%22%3A0%2C%22_1637%22%3A0%2C%22height%22%3A0%2C%22_1636%22%3A0%7D%5D%2C%22fps%22%3A6%7D" valuetype="any" edittype="animation">
                  <description>Click%20to%20launch%20the%20Animation%20Editor%20window.</description>
                </p>
              </properties>
              <customproperties>
                <p key="dir" value="1" valuetype="number"/>
                <p key="speed" value="50" valuetype="number"/>
                <p key="TF" value="false" valuetype="boolean"/>
                <p key="hp" value="5" valuetype="number"/>
              </customproperties>
              <behaviors>
                <b name="别针行为" type="PinBehavior">
                  <properties/>
                </b>
                <b name="闪烁" type="FlashBehavior">
                  <properties>
                    <p key="onTime" value="0.1" valuetype="any">
                      <description>%E9%97%AA%E7%83%81%E6%97%B6%E6%98%BE%E7%A4%BA%E7%9A%84%E6%97%B6%E9%97%B4%EF%BC%8C%E5%8D%95%E4%BD%8D%EF%BC%9A%E7%A7%92</description>
                    </p>
                    <p key="offTime" value="0.1" valuetype="any">
                      <description>%E9%97%AA%E7%83%81%E6%97%B6%E9%9A%90%E8%97%8F%E7%9A%84%E6%97%B6%E9%97%B4%EF%BC%8C%E5%8D%95%E4%BD%8D%EF%BC%9A%E7%A7%92</description>
                    </p>
                    <p key="times" value="0" valuetype="any">
                      <description>%E5%BD%93%E5%89%8D%E9%97%AA%E7%83%81%E8%A1%8C%E4%B8%BA%E6%89%A7%E8%A1%8C%E6%AC%A1%E6%95%B0%E3%80%82%EF%BC%88%E8%8B%A5%E5%80%BC%E4%B8%BA%E9%9B%B6%EF%BC%8C%E9%82%A3%E4%B9%88%E4%BC%9A%E4%B8%80%E7%9B%B4%E9%97%AA%E7%83%81%EF%BC%89</description>
                    </p>
                    <p key="enabled" value="0" valuetype="any">
                      <description>%E9%BB%98%E8%AE%A4%E5%90%AF%E7%94%A8%E9%97%AA%E7%83%81%E8%A1%8C%E4%B8%BA%E3%80%82</description>
                    </p>
                  </properties>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AIButton" uiname="buttonturn" layer="1">
              <properties>
                <p key="name" value="buttonturn" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="784" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="559.9714285714288" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="758.0142857142857" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="240" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="240" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="upSkin" value="resource%2FuserAsset%2Fimage%2Fturn.png" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E6%8C%89%E7%BA%BD%E5%BC%B9%E8%B5%B7%E6%97%B6%E7%9A%84%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="downSkin" value="resource%2FuserAsset%2Fimage%2Fturn_down.png" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E6%8C%89%E7%BA%BD%E6%8C%89%E4%B8%8B%E6%97%B6%E7%9A%84%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="disableSkin" value="resource%2FuserAsset%2Fimage%2Fturn.png" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E6%8C%89%E7%BA%BD%E7%A6%81%E7%94%A8%E6%97%B6%E7%9A%84%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="text" value="" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E6%8C%89%E7%BA%BD%E7%9A%84%E6%96%87%E6%9C%AC%E6%A0%87%E7%AD%BE</description>
                </p>
                <p key="fontFamily" value="%E5%AE%8B%E4%BD%93" valuetype="string">
                  <description>%E5%AD%97%E4%BD%93</description>
                </p>
                <p key="size" value="12" valuetype="number">
                  <description>%E5%AD%97%E4%BD%93%E5%A4%A7%E5%B0%8F</description>
                </p>
                <p key="textColor" value="0xffffff" valuetype="string">
                  <description>%E5%AD%97%E4%BD%93%E9%A2%9C%E8%89%B2</description>
                </p>
                <p key="bold" value="false" valuetype="boolean">
                  <description>%E7%B2%97%E4%BD%93</description>
                </p>
                <p key="enableInput" value="false" valuetype="boolean">
                  <description>%E5%85%81%E8%AE%B8%E8%BE%93%E5%85%A5</description>
                </p>
                <p key="textAlign" value="center" valuetype="string">
                  <description>%E6%B0%B4%E5%B9%B3%E5%B8%83%E5%B1%80</description>
                </p>
                <p key="verticalAlign" value="middle" valuetype="string">
                  <description>%E5%9E%82%E7%9B%B4%E5%B8%83%E5%B1%80</description>
                </p>
                <p key="maxChars" value="100" valuetype="number">
                  <description>%E5%AD%97%E6%95%B0%E4%B8%8A%E9%99%90</description>
                </p>
                <p key="italic" value="false" valuetype="boolean">
                  <description>%E6%96%9C%E4%BD%93</description>
                </p>
                <p key="displayAsPassword" value="false" valuetype="boolean">
                  <description>%E5%AF%86%E7%A0%81%E6%98%BE%E7%A4%BA</description>
                </p>
                <p key="wordWrap" value="false" valuetype="boolean">
                  <description>%E6%94%AF%E6%8C%81%E6%8D%A2%E8%A1%8C</description>
                </p>
                <p key="enabled" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="false" valuetype="boolean">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors/>
              <children/>
            </object>
            <object type="AIButton" uiname="buttonspeed" layer="1">
              <properties>
                <p key="name" value="buttonspeed" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="782" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="0.03571428571441615" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="758.0857142857145" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="240" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="240" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="upSkin" value="resource%2FuserAsset%2Fimage%2Fspeed.png" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E6%8C%89%E7%BA%BD%E5%BC%B9%E8%B5%B7%E6%97%B6%E7%9A%84%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="downSkin" value="resource%2FuserAsset%2Fimage%2Fspeed_down.png" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E6%8C%89%E7%BA%BD%E6%8C%89%E4%B8%8B%E6%97%B6%E7%9A%84%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="disableSkin" value="resource%2FuserAsset%2Fimage%2Fspeed.png" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E6%8C%89%E7%BA%BD%E7%A6%81%E7%94%A8%E6%97%B6%E7%9A%84%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="text" value="" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E6%8C%89%E7%BA%BD%E7%9A%84%E6%96%87%E6%9C%AC%E6%A0%87%E7%AD%BE</description>
                </p>
                <p key="fontFamily" value="%E5%AE%8B%E4%BD%93" valuetype="string">
                  <description>%E5%AD%97%E4%BD%93</description>
                </p>
                <p key="size" value="12" valuetype="number">
                  <description>%E5%AD%97%E4%BD%93%E5%A4%A7%E5%B0%8F</description>
                </p>
                <p key="textColor" value="0xffffff" valuetype="string">
                  <description>%E5%AD%97%E4%BD%93%E9%A2%9C%E8%89%B2</description>
                </p>
                <p key="bold" value="false" valuetype="boolean">
                  <description>%E7%B2%97%E4%BD%93</description>
                </p>
                <p key="enableInput" value="false" valuetype="boolean">
                  <description>%E5%85%81%E8%AE%B8%E8%BE%93%E5%85%A5</description>
                </p>
                <p key="textAlign" value="center" valuetype="string">
                  <description>%E6%B0%B4%E5%B9%B3%E5%B8%83%E5%B1%80</description>
                </p>
                <p key="verticalAlign" value="middle" valuetype="string">
                  <description>%E5%9E%82%E7%9B%B4%E5%B8%83%E5%B1%80</description>
                </p>
                <p key="maxChars" value="100" valuetype="number">
                  <description>%E5%AD%97%E6%95%B0%E4%B8%8A%E9%99%90</description>
                </p>
                <p key="italic" value="false" valuetype="boolean">
                  <description>%E6%96%9C%E4%BD%93</description>
                </p>
                <p key="displayAsPassword" value="false" valuetype="boolean">
                  <description>%E5%AF%86%E7%A0%81%E6%98%BE%E7%A4%BA</description>
                </p>
                <p key="wordWrap" value="false" valuetype="boolean">
                  <description>%E6%94%AF%E6%8C%81%E6%8D%A2%E8%A1%8C</description>
                </p>
                <p key="enabled" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="false" valuetype="boolean">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors/>
              <children/>
            </object>
            <object type="AISprite" uiname="Sun_center" layer="1">
              <properties>
                <p key="name" value="Sun_center" valuetype="string">
                  <description>Name%20of%20the%20object.</description>
                </p>
                <p key="uiGuid" value="780" valuetype="string">
                  <description>GUID</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>Set%20the%20object%20global%20or%20not.%20The%20global%20object%20will%20be%20shown%20on%20all%20scenes.%20It%20will%20not%20be%20destroyed%20after%20jump%20to%20another%20scene%20and%20the%20data%20of%20the%20object%20will%20be%20keeped.</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>Set%20the%20object%20visible%20or%20invisible.</description>
                </p>
                <p key="x" value="400" valuetype="number">
                  <description>X%20co-ordinate.</description>
                </p>
                <p key="y" value="400" valuetype="number">
                  <description>Y%20co-ordinate.</description>
                </p>
                <p key="anchorX" value="0.5154999999999998" valuetype="number">
                  <description>The%20X%20co-ordinate%20of%20anchor.</description>
                </p>
                <p key="anchorY" value="0.5255" valuetype="number">
                  <description>The%20Y%20co-ordinate%20of%20anchor.</description>
                </p>
                <p key="width" value="50" valuetype="number">
                  <description>The%20object's%20width.</description>
                </p>
                <p key="height" value="50" valuetype="number">
                  <description>The%20object's%20height.</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>The%20object's%20angle.</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>The%20object's%20opacity.</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fimage%2Fwhite_block.png" valuetype="string">
                  <description>The%20source%20of%20the%20image.</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>Set%20clickable%20status%20of%20the%20object.</description>
                </p>
                <p key="collision" value="false" valuetype="boolean">
                  <description>Set%20collision%20status%20of%20the%20object.</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>Edit%20the%20collision%20edge.</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="旋转行为" type="RotateBehaivor">
                  <properties>
                    <p key="speed" value="50" valuetype="any">
                      <description>%E6%97%8B%E8%BD%AC%E7%9A%84%E9%80%9F%E5%BA%A6%E3%80%82%EF%BC%88%E5%8D%95%E4%BD%8D%EF%BC%9A%E5%BA%A6%2F%E7%A7%92%EF%BC%89</description>
                    </p>
                    <p key="acceleration" value="0" valuetype="any">
                      <description>%E6%97%8B%E8%BD%AC%E7%9A%84%E5%8A%A0%E9%80%9F%E5%BA%A6%E3%80%82%0A%E5%80%BC%E4%B8%BA%E6%AD%A3%E6%97%B6%E6%98%AF%E9%A1%BA%E6%97%B6%E9%92%88%E5%8A%A0%E9%80%9F%E5%BA%A6%EF%BC%88%E5%AF%B9%E9%80%86%E6%97%B6%E9%92%88%E6%97%8B%E8%BD%AC%E5%B0%B1%E6%98%AF%E5%87%8F%E9%80%9F%E5%BA%A6%EF%BC%89%E3%80%82%0A%E5%80%BC%E4%B8%BA%E8%B4%9F%E6%97%B6%E6%98%AF%E9%A1%BA%E6%97%B6%E9%92%88%E5%87%8F%E9%80%9F%E5%BA%A6%EF%BC%88%E5%AF%B9%E9%80%86%E6%97%B6%E9%92%88%E6%97%8B%E8%BD%AC%E5%B0%B1%E6%98%AF%E5%8A%A0%E9%80%9F%E5%BA%A6%EF%BC%89%E3%80%82</description>
                    </p>
                  </properties>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="bullet" layer="1">
              <properties>
                <p key="name" value="bullet" valuetype="string">
                  <description>Name%20of%20the%20object.</description>
                </p>
                <p key="uiGuid" value="776" valuetype="string">
                  <description>GUID</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>Set%20the%20object%20global%20or%20not.%20The%20global%20object%20will%20be%20shown%20on%20all%20scenes.%20It%20will%20not%20be%20destroyed%20after%20jump%20to%20another%20scene%20and%20the%20data%20of%20the%20object%20will%20be%20keeped.</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>Set%20the%20object%20visible%20or%20invisible.</description>
                </p>
                <p key="x" value="17.875000000000085" valuetype="number">
                  <description>X%20co-ordinate.</description>
                </p>
                <p key="y" value="-72.88750000000005" valuetype="number">
                  <description>Y%20co-ordinate.</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>The%20X%20co-ordinate%20of%20anchor.</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>The%20Y%20co-ordinate%20of%20anchor.</description>
                </p>
                <p key="width" value="5" valuetype="number">
                  <description>The%20object's%20width.</description>
                </p>
                <p key="height" value="2" valuetype="number">
                  <description>The%20object's%20height.</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>The%20object's%20angle.</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>The%20object's%20opacity.</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fimage%2Fbullet.png" valuetype="string">
                  <description>The%20source%20of%20the%20image.</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>Set%20clickable%20status%20of%20the%20object.</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>Set%20collision%20status%20of%20the%20object.</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>Edit%20the%20collision%20edge.</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="子弹行为" type="BulletBehaivor">
                  <properties>
                    <p key="speed" value="400" valuetype="any">
                      <description>%E8%AE%BE%E7%BD%AE%E5%AD%90%E5%BC%B9%E7%9A%84%E8%BF%90%E5%8A%A8%E9%80%9F%E5%BA%A6%E3%80%82%EF%BC%88%E5%8D%95%E4%BD%8D%EF%BC%9A%E5%83%8F%E7%B4%A0%2F%E7%A7%92%EF%BC%89</description>
                    </p>
                    <p key="acceleration" value="0" valuetype="any">
                      <description>%E5%AD%90%E5%BC%B9%E8%BF%90%E5%8A%A8%E7%9A%84%E5%8A%A0%E9%80%9F%E5%BA%A6%EF%BC%8C%E9%BB%98%E8%AE%A4%E7%9A%84%E5%8A%A0%E9%80%9F%E5%BA%A6%E4%B8%BA%E9%9B%B6%E3%80%82%EF%BC%88%E5%8D%95%E4%BD%8D%EF%BC%9A%E5%83%8F%E7%B4%A0%2F%E7%A7%92%C2%B2%EF%BC%89</description>
                    </p>
                    <p key="gravity" value="0" valuetype="any">
                      <description>%E5%AD%90%E5%BC%B9%E8%BF%90%E8%A1%8C%E4%B8%AD%E6%89%80%E6%89%BF%E5%8F%97%E7%9A%84%E5%90%91%E4%B8%8B%E7%9A%84%E9%87%8D%E5%8A%9B%EF%BC%8C%E9%BB%98%E8%AE%A4%E4%B8%BA%E9%9B%B6%E3%80%82</description>
                    </p>
                    <p key="angle" value="0" valuetype="any">
                      <description>%E8%AE%BE%E7%BD%AE%E5%AD%90%E5%BC%B9%E9%BB%98%E8%AE%A4%E7%9A%84%E8%BF%90%E8%A1%8C%E8%A7%92%E5%BA%A6%E3%80%82</description>
                    </p>
                    <p key="bounceOffSolids" value="0" valuetype="number">
                      <description>%E8%AE%BE%E7%BD%AE%E5%AD%90%E5%BC%B9%E4%B8%8E%E5%88%9A%E4%BD%93%E6%98%AF%E5%90%A6%E7%A2%B0%E6%92%9E%E3%80%82</description>
                    </p>
                  </properties>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite2885" layer="1">
              <properties>
                <p key="name" value="AISprite2885" valuetype="string">
                  <description>Name%20of%20the%20object.</description>
                </p>
                <p key="uiGuid" value="2886" valuetype="string">
                  <description>GUID</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>Set%20the%20object%20global%20or%20not.%20The%20global%20object%20will%20be%20shown%20on%20all%20scenes.%20It%20will%20not%20be%20destroyed%20after%20jump%20to%20another%20scene%20and%20the%20data%20of%20the%20object%20will%20be%20keeped.</description>
                </p>
                <p key="visible" value="1" valuetype="boolean">
                  <description>Set%20the%20object%20visible%20or%20invisible.</description>
                </p>
                <p key="x" value="400" valuetype="number">
                  <description>X%20co-ordinate.</description>
                </p>
                <p key="y" value="400" valuetype="number">
                  <description>Y%20co-ordinate.</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>The%20X%20co-ordinate%20of%20anchor.</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>The%20Y%20co-ordinate%20of%20anchor.</description>
                </p>
                <p key="width" value="130.01495693108598" valuetype="number">
                  <description>The%20object's%20width.</description>
                </p>
                <p key="height" value="137.292958590785" valuetype="number">
                  <description>The%20object's%20height.</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>The%20object's%20angle.</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>The%20object's%20opacity.</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fimage%2Fplanet1.png" valuetype="string">
                  <description>The%20source%20of%20the%20image.</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>Set%20clickable%20status%20of%20the%20object.</description>
                </p>
                <p key="collision" value="false" valuetype="boolean">
                  <description>Set%20collision%20status%20of%20the%20object.</description>
                </p>
                <p key="collisionData" value="" valuetype="string">
                  <description>Edit%20the%20collision%20edge.</description>
                </p>
              </properties>
              <customproperties>
                <p key="scores" value="0" valuetype="number"/>
              </customproperties>
              <behaviors>
                <b name="计时器" type="TimerBehavior">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
          </children>
        </object>
        <object type="Layer" uiname="背景层" parallaxX="100" parallaxY="100" layer="0">
          <properties>
            <p key="sceneWidth" value="800" valuetype="number"/>
            <p key="sceneHeight" value="1000" valuetype="number"/>
            <p key="parallaxX" value="100" valuetype="number"/>
            <p key="parallaxY" value="100" valuetype="number"/>
            <p key="layerAlpha" value="1" valuetype="number"/>
            <p key="layerVisible" value="true" valuetype="boolean"/>
            <p key="layerScaleX" value="100" valuetype="number"/>
            <p key="layerScaleY" value="100" valuetype="number"/>
          </properties>
          <customproperties/>
          <behaviors/>
          <children>
            <object type="AISprite" uiname="BG" layer="0">
              <properties>
                <p key="name" value="BG" valuetype="string">
                  <description>Name%20of%20the%20object.</description>
                </p>
                <p key="uiGuid" value="1062" valuetype="string">
                  <description>GUID</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>Set%20the%20object%20global%20or%20not.%20The%20global%20object%20will%20be%20shown%20on%20all%20scenes.%20It%20will%20not%20be%20destroyed%20after%20jump%20to%20another%20scene%20and%20the%20data%20of%20the%20object%20will%20be%20keeped.</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>Set%20the%20object%20visible%20or%20invisible.</description>
                </p>
                <p key="x" value="400" valuetype="number">
                  <description>X%20co-ordinate.</description>
                </p>
                <p key="y" value="400" valuetype="number">
                  <description>Y%20co-ordinate.</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>The%20X%20co-ordinate%20of%20anchor.</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>The%20Y%20co-ordinate%20of%20anchor.</description>
                </p>
                <p key="width" value="800" valuetype="number">
                  <description>The%20object's%20width.</description>
                </p>
                <p key="height" value="800" valuetype="number">
                  <description>The%20object's%20height.</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>The%20object's%20angle.</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>The%20object's%20opacity.</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fimage%2Fcircle.png" valuetype="string">
                  <description>The%20source%20of%20the%20image.</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>Set%20clickable%20status%20of%20the%20object.</description>
                </p>
                <p key="collision" value="false" valuetype="boolean">
                  <description>Set%20collision%20status%20of%20the%20object.</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>Edit%20the%20collision%20edge.</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="闪烁行为" type="FlashBehavior">
                  <properties>
                    <p key="onTime" value="0.1" valuetype="any">
                      <description>%E9%97%AA%E7%83%81%E6%97%B6%E6%98%BE%E7%A4%BA%E7%9A%84%E6%97%B6%E9%97%B4%EF%BC%8C%E5%8D%95%E4%BD%8D%EF%BC%9A%E7%A7%92</description>
                    </p>
                    <p key="offTime" value="0.1" valuetype="any">
                      <description>%E9%97%AA%E7%83%81%E6%97%B6%E9%9A%90%E8%97%8F%E7%9A%84%E6%97%B6%E9%97%B4%EF%BC%8C%E5%8D%95%E4%BD%8D%EF%BC%9A%E7%A7%92</description>
                    </p>
                    <p key="times" value="0" valuetype="any">
                      <description>%E5%BD%93%E5%89%8D%E9%97%AA%E7%83%81%E8%A1%8C%E4%B8%BA%E6%89%A7%E8%A1%8C%E6%AC%A1%E6%95%B0%E3%80%82%EF%BC%88%E8%8B%A5%E5%80%BC%E4%B8%BA%E9%9B%B6%EF%BC%8C%E9%82%A3%E4%B9%88%E4%BC%9A%E4%B8%80%E7%9B%B4%E9%97%AA%E7%83%81%EF%BC%89</description>
                    </p>
                    <p key="enabled" value="0" valuetype="any">
                      <description>%E9%BB%98%E8%AE%A4%E5%90%AF%E7%94%A8%E9%97%AA%E7%83%81%E8%A1%8C%E4%B8%BA%E3%80%82</description>
                    </p>
                  </properties>
                </b>
              </behaviors>
              <children/>
            </object>
          </children>
        </object>
      </children>
    </object>
  </scenes>
</project>