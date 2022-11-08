.class public Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser;
.super Ljava/lang/Object;
.source "ReplacementsXmlParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser$SettingsGroup;
    }
.end annotation


# static fields
.field protected static final ATTRIBUTE_NAME_KEY:Ljava/lang/String; = "key"

.field protected static final ATTRIBUTE_NAME_TYPE:Ljava/lang/String; = "type"

.field protected static final KEY_NEW_NAME:Ljava/lang/String; = "name"

.field protected static final KEY_NEW_PACKAGE_NAME:Ljava/lang/String; = "package-name"

.field protected static final KEY_OLD_NAME:Ljava/lang/String; = "name-old"

.field protected static final KEY_OLD_PACKAGE_NAME:Ljava/lang/String; = "package-name-old"

.field private static final TAG:Ljava/lang/String; = "ReplacementsXmlParser"

.field protected static final TAG_NAME_GROUP:Ljava/lang/String; = "group"

.field protected static final TAG_NAME_GROUPS:Ljava/lang/String; = "groups"

.field protected static final TAG_NAME_SETTING:Ljava/lang/String; = "setting"

.field protected static final TAG_NAME_SETTINGS:Ljava/lang/String; = "settings"

.field protected static final TYPE_ACTIVITIES_REPLACEMENT:Ljava/lang/String; = "replace-activities"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method private static handleSettingsGroup(Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser$SettingsGroup;Ljava/util/Map;)V
    .locals 6
    .param p0, "group"    # Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser$SettingsGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser$SettingsGroup;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 184
    .local p1, "outReplacementMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/AppInfo;>;"
    new-instance v0, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/AppInfo;-><init>()V

    .line 185
    .local v0, "oldItem":Lcom/android/launcher3/model/data/AppInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser$SettingsGroup;->settings:Ljava/util/HashMap;

    const-string v3, "package-name-old"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser$SettingsGroup;->settings:Ljava/util/HashMap;

    .line 186
    const-string v4, "name-old"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 187
    new-instance v1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {v1}, Lcom/android/launcher3/model/data/AppInfo;-><init>()V

    .line 188
    .local v1, "newItem":Lcom/android/launcher3/model/data/AppInfo;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser$SettingsGroup;->settings:Ljava/util/HashMap;

    const-string v4, "package-name"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser$SettingsGroup;->settings:Ljava/util/HashMap;

    .line 189
    const-string v5, "name"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 191
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    return-void
.end method


# virtual methods
.method public parseReplacementsFromXML(I)Ljava/util/Map;
    .locals 18
    .param p1, "replacementsResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 76
    const-string v0, "setting"

    const-string v1, "Failed to read replacement XML file "

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 78
    .local v2, "replacementMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/AppInfo;>;"
    const/4 v3, 0x0

    move-object/from16 v4, p0

    :try_start_0
    iget-object v5, v4, Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    move/from16 v6, p1

    :try_start_1
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 80
    .local v5, "xml":Landroid/content/res/XmlResourceParser;
    if-eqz v5, :cond_10

    .line 85
    :try_start_2
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v7

    if-nez v7, :cond_f

    .line 89
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    .line 92
    .local v7, "event":I
    if-nez v7, :cond_0

    .line 93
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    move v7, v8

    .line 96
    :cond_0
    const/4 v8, 0x2

    if-ne v7, v8, :cond_e

    .line 97
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "settings"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 103
    new-instance v9, Ljava/util/Stack;

    invoke-direct {v9}, Ljava/util/Stack;-><init>()V

    .line 104
    .local v9, "groupTypesStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/Stack;

    invoke-direct {v10}, Ljava/util/Stack;-><init>()V

    .line 105
    .local v10, "settingsGroupStack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser$SettingsGroup;>;"
    const/4 v11, 0x0

    .line 106
    .local v11, "currentGroup":Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser$SettingsGroup;
    const/4 v12, 0x0

    .line 108
    .local v12, "currentGroupType":Ljava/lang/String;
    :goto_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v7, v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_c

    .line 109
    const-string v13, "groups"

    const-string v14, "group"

    const/4 v15, 0x3

    if-ne v7, v8, :cond_5

    .line 110
    :try_start_3
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 111
    .local v17, "tagName":Ljava/lang/String;
    move-object/from16 v8, v17

    .end local v17    # "tagName":Ljava/lang/String;
    .local v8, "tagName":Ljava/lang/String;
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 112
    const-string v13, "key"

    invoke-interface {v5, v3, v13}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 113
    .local v13, "key":Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 114
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v14

    .line 115
    .local v14, "value":Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 116
    invoke-virtual {v11, v13, v14}, Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser$SettingsGroup;->putSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .end local v14    # "value":Ljava/lang/String;
    :cond_1
    invoke-interface {v5, v15, v3, v0}, Landroid/content/res/XmlResourceParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    .end local v13    # "key":Ljava/lang/String;
    goto/16 :goto_3

    :cond_2
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 121
    new-instance v13, Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser$SettingsGroup;

    invoke-direct {v13, v12}, Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser$SettingsGroup;-><init>(Ljava/lang/String;)V

    move-object v11, v13

    .line 122
    invoke-virtual {v10, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 123
    :cond_3
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 124
    const-string v13, "type"

    invoke-interface {v5, v3, v13}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    .line 125
    invoke-virtual {v9, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 127
    :cond_4
    const-string v13, "ReplacementsXmlParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ignoring unknown tag: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 129
    .end local v8    # "tagName":Ljava/lang/String;
    :cond_5
    if-ne v7, v15, :cond_b

    .line 130
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 131
    .restart local v8    # "tagName":Ljava/lang/String;
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 132
    const/4 v13, 0x0

    .line 133
    .local v13, "group":Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser$SettingsGroup;
    invoke-virtual {v10}, Ljava/util/Stack;->empty()Z

    move-result v14

    if-nez v14, :cond_6

    .line 134
    invoke-virtual {v10}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser$SettingsGroup;

    move-object v13, v14

    .line 136
    :cond_6
    if-eqz v13, :cond_7

    .line 139
    invoke-static {v13, v2}, Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser;->handleSettingsGroup(Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser$SettingsGroup;Ljava/util/Map;)V

    .line 140
    const/4 v11, 0x0

    .line 141
    invoke-virtual {v10}, Ljava/util/Stack;->empty()Z

    move-result v14

    if-nez v14, :cond_9

    .line 142
    invoke-virtual {v10}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser$SettingsGroup;

    move-object v11, v14

    goto :goto_1

    .line 137
    :cond_7
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v14, "Incorrect XML format"

    invoke-direct {v0, v14}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v2    # "replacementMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/AppInfo;>;"
    .end local v5    # "xml":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser;
    .end local p1    # "replacementsResId":I
    throw v0

    .line 144
    .end local v13    # "group":Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser$SettingsGroup;
    .restart local v2    # "replacementMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/AppInfo;>;"
    .restart local v5    # "xml":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser;
    .restart local p1    # "replacementsResId":I
    :cond_8
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 145
    const/4 v12, 0x0

    .line 146
    invoke-virtual {v9}, Ljava/util/Stack;->empty()Z

    move-result v13

    if-nez v13, :cond_a

    .line 147
    invoke-virtual {v9}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 148
    invoke-virtual {v9}, Ljava/util/Stack;->empty()Z

    move-result v13

    if-nez v13, :cond_a

    .line 149
    invoke-virtual {v9}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v12, v13

    goto :goto_2

    .line 144
    :cond_9
    :goto_1
    nop

    .line 153
    .end local v8    # "tagName":Ljava/lang/String;
    :cond_a
    :goto_2
    const/4 v8, 0x2

    goto/16 :goto_0

    .line 129
    :cond_b
    :goto_3
    const/4 v8, 0x2

    goto/16 :goto_0

    .line 165
    .end local v7    # "event":I
    .end local v9    # "groupTypesStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    .end local v10    # "settingsGroupStack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser$SettingsGroup;>;"
    .end local v11    # "currentGroup":Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser$SettingsGroup;
    .end local v12    # "currentGroupType":Ljava/lang/String;
    :cond_c
    nop

    .line 166
    if-eqz v5, :cond_d

    :try_start_4
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    .line 169
    .end local v5    # "xml":Landroid/content/res/XmlResourceParser;
    :cond_d
    nop

    .line 171
    return-object v2

    .line 98
    .restart local v5    # "xml":Landroid/content/res/XmlResourceParser;
    .restart local v7    # "event":I
    :cond_e
    :try_start_5
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v8, "Error: Missing expected <settings> tag in replacement xml file"

    invoke-direct {v0, v8, v3, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    .end local v2    # "replacementMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/AppInfo;>;"
    .end local v5    # "xml":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser;
    .end local p1    # "replacementsResId":I
    throw v0

    .line 86
    .end local v7    # "event":I
    .restart local v2    # "replacementMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/AppInfo;>;"
    .restart local v5    # "xml":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser;
    .restart local p1    # "replacementsResId":I
    :cond_f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v7, "Error: Wrong XML parser state"

    invoke-direct {v0, v7, v3, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    .end local v2    # "replacementMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/AppInfo;>;"
    .end local v5    # "xml":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser;
    .end local p1    # "replacementsResId":I
    throw v0

    .line 161
    .restart local v2    # "replacementMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/AppInfo;>;"
    .restart local v5    # "xml":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser;
    .restart local p1    # "replacementsResId":I
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 158
    :catch_0
    move-exception v0

    goto :goto_5

    .line 155
    :catch_1
    move-exception v0

    goto :goto_6

    .line 81
    :cond_10
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v7, "Error: Could not get XML resource parser"

    invoke-direct {v0, v7, v3, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    .end local v2    # "replacementMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/AppInfo;>;"
    .end local v5    # "xml":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser;
    .end local p1    # "replacementsResId":I
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 163
    .local v0, "throwable":Ljava/lang/Throwable;
    .restart local v2    # "replacementMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/AppInfo;>;"
    .restart local v5    # "xml":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser;
    .restart local p1    # "replacementsResId":I
    :goto_4
    :try_start_6
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Replacement failed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    .end local v2    # "replacementMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/AppInfo;>;"
    .end local v5    # "xml":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser;
    .end local p1    # "replacementsResId":I
    throw v7

    .line 159
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "replacementMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/AppInfo;>;"
    .restart local v5    # "xml":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser;
    .restart local p1    # "replacementsResId":I
    :goto_5
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Replacement XML parsing failed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 160
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    .end local v2    # "replacementMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/AppInfo;>;"
    .end local v5    # "xml":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser;
    .end local p1    # "replacementsResId":I
    throw v7

    .line 156
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "replacementMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/AppInfo;>;"
    .restart local v5    # "xml":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser;
    .restart local p1    # "replacementsResId":I
    :goto_6
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 157
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    .end local v2    # "replacementMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/AppInfo;>;"
    .end local v5    # "xml":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser;
    .end local p1    # "replacementsResId":I
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 78
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "replacementMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/AppInfo;>;"
    .restart local v5    # "xml":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser;
    .restart local p1    # "replacementsResId":I
    :catchall_1
    move-exception v0

    move-object v7, v0

    if-eqz v5, :cond_11

    :try_start_7
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v8, v0

    :try_start_8
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "replacementMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/AppInfo;>;"
    .end local p0    # "this":Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser;
    .end local p1    # "replacementsResId":I
    :cond_11
    :goto_7
    throw v7
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_2

    .line 166
    .end local v5    # "xml":Landroid/content/res/XmlResourceParser;
    .restart local v2    # "replacementMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/AppInfo;>;"
    .restart local p0    # "this":Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser;
    .restart local p1    # "replacementsResId":I
    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    move/from16 v6, p1

    .line 167
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    :goto_8
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1, v3, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v5
.end method
