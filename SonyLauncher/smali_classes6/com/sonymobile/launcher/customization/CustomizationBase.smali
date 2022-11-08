.class public abstract Lcom/sonymobile/launcher/customization/CustomizationBase;
.super Lcom/sonymobile/launcher/customization/CustomizationParserBase;
.source "CustomizationBase.java"

# interfaces
.implements Lcom/sonymobile/launcher/customization/Customization;


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomizationBase"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    invoke-direct {p0, p1}, Lcom/sonymobile/launcher/customization/CustomizationParserBase;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method


# virtual methods
.method public applyCustomization()Z
    .locals 5

    .line 38
    invoke-virtual {p0}, Lcom/sonymobile/launcher/customization/CustomizationBase;->getDefaultResource()Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 39
    .local v0, "defaultResource":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/launcher/customization/CustomizationBase;->getCustomSettingsResource()Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 45
    .local v1, "customSettingsResource":Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/customization/CustomizationBase;->applyCustomization(Landroid/content/res/XmlResourceParser;)Z

    move-result v2

    .line 51
    .local v2, "defaultOk":Z
    invoke-virtual {p0, v1}, Lcom/sonymobile/launcher/customization/CustomizationBase;->applyCustomization(Landroid/content/res/XmlResourceParser;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .local v3, "customOk":Z
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 58
    :goto_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 57
    :cond_2
    return v4

    .line 38
    .end local v2    # "defaultOk":Z
    .end local v3    # "customOk":Z
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "defaultResource":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Lcom/sonymobile/launcher/customization/CustomizationBase;
    :cond_3
    :goto_1
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v1    # "customSettingsResource":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "defaultResource":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Lcom/sonymobile/launcher/customization/CustomizationBase;
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_5
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v1
.end method

.method protected applyCustomization(Landroid/content/res/XmlResourceParser;)Z
    .locals 1
    .param p1, "xml"    # Landroid/content/res/XmlResourceParser;

    .line 129
    if-nez p1, :cond_0

    .line 130
    const/4 v0, 0x1

    return v0

    .line 133
    :cond_0
    new-instance v0, Lcom/sonymobile/launcher/customization/CustomizationBase$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/launcher/customization/CustomizationBase$1;-><init>(Lcom/sonymobile/launcher/customization/CustomizationBase;)V

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/launcher/customization/CustomizationBase;->parseCustomizationXml(Landroid/content/res/XmlResourceParser;Lcom/sonymobile/launcher/customization/CustomizationParser$ParseListener;)Z

    move-result v0

    return v0
.end method

.method protected abstract getCustomSettingsResource()Landroid/content/res/XmlResourceParser;
.end method

.method protected abstract getDefaultResource()Landroid/content/res/XmlResourceParser;
.end method

.method protected getXmlResource(I)Landroid/content/res/XmlResourceParser;
    .locals 4
    .param p1, "xmlResourceId"    # I

    .line 91
    const/4 v0, 0x0

    .line 94
    .local v0, "xml":Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/launcher/customization/CustomizationBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 97
    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "nfe":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Lcom/sonymobile/launcher/customization/CustomizationBase;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to find customization xml file"

    invoke-static {v2, v3, v1}, Lcom/sonymobile/launcher/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .end local v1    # "nfe":Landroid/content/res/Resources$NotFoundException;
    :goto_0
    return-object v0
.end method

.method protected handleKey(Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 173
    .local p2, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected handleSetting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method protected handleSettingsGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 1
    .param p1, "groupType"    # Ljava/lang/String;
    .param p2, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 119
    .local p3, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract supportsGooglePlayContainer(Ljava/lang/String;)Z
.end method

.method protected abstract supportsGroup(Ljava/lang/String;)Z
.end method
