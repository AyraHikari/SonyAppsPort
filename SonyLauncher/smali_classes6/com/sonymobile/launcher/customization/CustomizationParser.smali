.class public interface abstract Lcom/sonymobile/launcher/customization/CustomizationParser;
.super Ljava/lang/Object;
.source "CustomizationParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/launcher/customization/CustomizationParser$ParseListener;
    }
.end annotation


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract parseCustomizationXml(Landroid/content/res/XmlResourceParser;Lcom/sonymobile/launcher/customization/CustomizationParser$ParseListener;)Z
.end method
