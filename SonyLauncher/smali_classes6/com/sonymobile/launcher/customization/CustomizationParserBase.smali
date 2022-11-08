.class public Lcom/sonymobile/launcher/customization/CustomizationParserBase;
.super Ljava/lang/Object;
.source "CustomizationParserBase.java"

# interfaces
.implements Lcom/sonymobile/launcher/customization/CustomizationParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/launcher/customization/CustomizationParserBase$SettingsGroup;
    }
.end annotation


# static fields
.field protected static final GROUP:Ljava/lang/String; = "group"

.field protected static final GROUPS:Ljava/lang/String; = "groups"

.field protected static final ID:Ljava/lang/String; = "id"

.field protected static final KEY:Ljava/lang/String; = "key"

.field protected static final SETTING:Ljava/lang/String; = "setting"

.field protected static final SETTINGS:Ljava/lang/String; = "settings"

.field protected static final TYPE:Ljava/lang/String; = "type"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mGroupTypes:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mGroups:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/sonymobile/launcher/customization/CustomizationParserBase$SettingsGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/launcher/customization/CustomizationParserBase;->mGroupTypes:Ljava/util/ArrayDeque;

    .line 46
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/launcher/customization/CustomizationParserBase;->mGroups:Ljava/util/ArrayDeque;

    .line 72
    iput-object p1, p0, Lcom/sonymobile/launcher/customization/CustomizationParserBase;->mContext:Landroid/content/Context;

    .line 73
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parseCustomizationXml(Landroid/content/res/XmlResourceParser;Lcom/sonymobile/launcher/customization/CustomizationParser$ParseListener;)Z
    .locals 18
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "parseListener"    # Lcom/sonymobile/launcher/customization/CustomizationParser$ParseListener;

    .line 84
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "setting"

    const-string v4, " error:"

    const/4 v5, 0x0

    .line 85
    .local v5, "result":Z
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/launcher/customization/CustomizationParserBase;->getName()Ljava/lang/String;

    move-result-object v6

    .line 89
    .local v6, "type":Ljava/lang/String;
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    .line 90
    const-string v0, "Error: Wrong XML parser state"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/sonymobile/launcher/util/Log;->e(Ljava/lang/String;[Ljava/lang/String;)I

    .line 91
    return v8

    .line 94
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    .line 97
    .local v7, "event":I
    if-nez v7, :cond_1

    .line 98
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    move v7, v9

    .line 101
    :cond_1
    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ne v7, v9, :cond_e

    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "settings"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    goto/16 :goto_5

    .line 106
    :cond_2
    const/4 v11, 0x0

    .line 107
    .local v11, "currentGroup":Lcom/sonymobile/launcher/customization/CustomizationParserBase$SettingsGroup;
    const/4 v12, 0x0

    .line 108
    .local v12, "currentGroupType":Ljava/lang/String;
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v7, v13

    if-eq v13, v10, :cond_d

    .line 109
    const-string v13, "groups"

    const-string v14, "group"

    const/4 v15, 0x3

    if-ne v7, v9, :cond_8

    .line 110
    :try_start_1
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 111
    .local v17, "tagName":Ljava/lang/String;
    move-object/from16 v9, v17

    .end local v17    # "tagName":Ljava/lang/String;
    .local v9, "tagName":Ljava/lang/String;
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    const/4 v8, 0x0

    if-eqz v17, :cond_5

    .line 112
    const-string v13, "key"

    invoke-interface {v2, v8, v13}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 114
    .local v13, "key":Ljava/lang/String;
    if-eqz v13, :cond_4

    .line 115
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v14

    .line 117
    .local v14, "value":Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 118
    invoke-virtual {v11, v13, v14}, Lcom/sonymobile/launcher/customization/CustomizationParserBase$SettingsGroup;->putSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 120
    :cond_3
    invoke-interface {v3, v13, v14}, Lcom/sonymobile/launcher/customization/CustomizationParser$ParseListener;->handleSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 123
    .end local v14    # "value":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-interface {v2, v15, v8, v0}, Landroid/content/res/XmlResourceParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 124
    .end local v13    # "key":Ljava/lang/String;
    goto/16 :goto_3

    :cond_5
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 125
    const-string v13, "id"

    invoke-interface {v2, v8, v13}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 126
    .local v8, "groupId":Ljava/lang/String;
    new-instance v13, Lcom/sonymobile/launcher/customization/CustomizationParserBase$SettingsGroup;

    invoke-direct {v13, v12, v8}, Lcom/sonymobile/launcher/customization/CustomizationParserBase$SettingsGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v13

    .line 127
    iget-object v13, v1, Lcom/sonymobile/launcher/customization/CustomizationParserBase;->mGroups:Ljava/util/ArrayDeque;

    invoke-virtual {v13, v11}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 128
    .end local v8    # "groupId":Ljava/lang/String;
    goto/16 :goto_3

    :cond_6
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 129
    const-string v13, "type"

    invoke-interface {v2, v8, v13}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 130
    .end local v12    # "currentGroupType":Ljava/lang/String;
    .local v8, "currentGroupType":Ljava/lang/String;
    invoke-interface {v3, v8, v2}, Lcom/sonymobile/launcher/customization/CustomizationParser$ParseListener;->parseStartGroups(Ljava/lang/String;Landroid/content/res/XmlResourceParser;)V

    .line 131
    iget-object v12, v1, Lcom/sonymobile/launcher/customization/CustomizationParserBase;->mGroupTypes:Ljava/util/ArrayDeque;

    invoke-virtual {v12, v8}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    move-object v12, v8

    goto :goto_3

    .line 133
    .end local v8    # "currentGroupType":Ljava/lang/String;
    .restart local v12    # "currentGroupType":Ljava/lang/String;
    :cond_7
    new-array v8, v10, [Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ignoring unknown tag: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v8, v14

    invoke-static {v6, v8}, Lcom/sonymobile/launcher/util/Log;->w(Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    .line 135
    .end local v9    # "tagName":Ljava/lang/String;
    :cond_8
    if-ne v7, v15, :cond_c

    .line 136
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 138
    .local v8, "tagName":Ljava/lang/String;
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 139
    iget-object v9, v1, Lcom/sonymobile/launcher/customization/CustomizationParserBase;->mGroups:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonymobile/launcher/customization/CustomizationParserBase$SettingsGroup;

    .line 140
    .local v9, "group":Lcom/sonymobile/launcher/customization/CustomizationParserBase$SettingsGroup;
    if-eqz v9, :cond_9

    .line 143
    iget-object v13, v9, Lcom/sonymobile/launcher/customization/CustomizationParserBase$SettingsGroup;->type:Ljava/lang/String;

    iget-object v14, v9, Lcom/sonymobile/launcher/customization/CustomizationParserBase$SettingsGroup;->id:Ljava/lang/String;

    iget-object v15, v9, Lcom/sonymobile/launcher/customization/CustomizationParserBase$SettingsGroup;->settings:Ljava/util/HashMap;

    invoke-interface {v3, v13, v14, v15}, Lcom/sonymobile/launcher/customization/CustomizationParser$ParseListener;->handleSettingsGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    .line 144
    iget-object v13, v1, Lcom/sonymobile/launcher/customization/CustomizationParserBase;->mGroups:Ljava/util/ArrayDeque;

    invoke-virtual {v13}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sonymobile/launcher/customization/CustomizationParserBase$SettingsGroup;

    move-object v9, v13

    .line 145
    .end local v11    # "currentGroup":Lcom/sonymobile/launcher/customization/CustomizationParserBase$SettingsGroup;
    .local v9, "currentGroup":Lcom/sonymobile/launcher/customization/CustomizationParserBase$SettingsGroup;
    move-object v11, v9

    goto :goto_2

    .line 141
    .local v9, "group":Lcom/sonymobile/launcher/customization/CustomizationParserBase$SettingsGroup;
    .restart local v11    # "currentGroup":Lcom/sonymobile/launcher/customization/CustomizationParserBase$SettingsGroup;
    :cond_9
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v10, "Incorrect XML format"

    invoke-direct {v0, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v5    # "result":Z
    .end local v6    # "type":Ljava/lang/String;
    .end local p0    # "this":Lcom/sonymobile/launcher/customization/CustomizationParserBase;
    .end local p1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p2    # "parseListener":Lcom/sonymobile/launcher/customization/CustomizationParser$ParseListener;
    throw v0

    .line 145
    .end local v9    # "group":Lcom/sonymobile/launcher/customization/CustomizationParserBase$SettingsGroup;
    .restart local v5    # "result":Z
    .restart local v6    # "type":Ljava/lang/String;
    .restart local p0    # "this":Lcom/sonymobile/launcher/customization/CustomizationParserBase;
    .restart local p1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p2    # "parseListener":Lcom/sonymobile/launcher/customization/CustomizationParser$ParseListener;
    :cond_a
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 146
    iget-object v9, v1, Lcom/sonymobile/launcher/customization/CustomizationParserBase;->mGroupTypes:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 147
    iget-object v9, v1, Lcom/sonymobile/launcher/customization/CustomizationParserBase;->mGroupTypes:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v12, v9

    .line 149
    .end local v8    # "tagName":Ljava/lang/String;
    :cond_b
    :goto_2
    const/4 v8, 0x0

    const/4 v9, 0x2

    goto/16 :goto_0

    .line 135
    :cond_c
    :goto_3
    const/4 v8, 0x0

    const/4 v9, 0x2

    goto/16 :goto_0

    .line 151
    :cond_d
    const/4 v5, 0x1

    .line 159
    .end local v7    # "event":I
    .end local v11    # "currentGroup":Lcom/sonymobile/launcher/customization/CustomizationParserBase$SettingsGroup;
    .end local v12    # "currentGroupType":Ljava/lang/String;
    :goto_4
    goto/16 :goto_6

    .line 102
    .restart local v7    # "event":I
    :cond_e
    :goto_5
    new-array v0, v10, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: Missing expected <settings> tag in the xml file using:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/launcher/customization/CustomizationParserBase;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v0, v9

    invoke-static {v6, v0}, Lcom/sonymobile/launcher/util/Log;->e(Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    return v9

    .line 156
    .end local v7    # "event":I
    :catchall_0
    move-exception v0

    .line 158
    .local v0, "throwable":Ljava/lang/Throwable;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Customization failed using "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/launcher/customization/CustomizationParserBase;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v0}, Lcom/sonymobile/launcher/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 154
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Customization XML parsing failed using "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/launcher/customization/CustomizationParserBase;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v0}, Lcom/sonymobile/launcher/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_4

    .line 152
    :catch_1
    move-exception v0

    .line 153
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to read xml file using "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/launcher/customization/CustomizationParserBase;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v0}, Lcom/sonymobile/launcher/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto/16 :goto_4

    .line 161
    :goto_6
    return v5
.end method
