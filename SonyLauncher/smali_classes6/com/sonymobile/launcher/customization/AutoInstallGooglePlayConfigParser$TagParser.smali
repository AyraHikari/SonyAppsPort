.class interface abstract Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$TagParser;
.super Ljava/lang/Object;
.source "AutoInstallGooglePlayConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "TagParser"
.end annotation


# virtual methods
.method public abstract parseAndAdd(Landroid/content/res/XmlResourceParser;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
