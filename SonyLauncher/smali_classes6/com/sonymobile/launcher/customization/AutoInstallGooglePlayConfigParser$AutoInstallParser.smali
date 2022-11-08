.class Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$AutoInstallParser;
.super Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$AppShortcutParser;
.source "AutoInstallGooglePlayConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoInstallParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;


# direct methods
.method private constructor <init>(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;)V
    .locals 1

    .line 457
    iput-object p1, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$AutoInstallParser;->this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$AppShortcutParser;-><init>(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$AppShortcutParser-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$AutoInstallParser-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$AutoInstallParser;-><init>(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;)V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;)J
    .locals 3
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    iget-object v0, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$AutoInstallParser;->this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    invoke-static {v0}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$fgetmValues(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "is_auto_install"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    invoke-super {p0, p1}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$AppShortcutParser;->parseAndAdd(Landroid/content/res/XmlResourceParser;)J

    move-result-wide v0

    return-wide v0
.end method
