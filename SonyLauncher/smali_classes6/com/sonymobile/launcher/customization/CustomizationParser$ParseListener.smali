.class public interface abstract Lcom/sonymobile/launcher/customization/CustomizationParser$ParseListener;
.super Ljava/lang/Object;
.source "CustomizationParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/launcher/customization/CustomizationParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ParseListener"
.end annotation


# virtual methods
.method public abstract handleSetting(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract handleSettingsGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z
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
.end method

.method public abstract parseStartGroups(Ljava/lang/String;Landroid/content/res/XmlResourceParser;)V
.end method
